import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../../Widgets/DropdownMenu.dart';
import 'MangaBaka.dart';
import 'MangaBakaModels.dart';

class MangaBakaListEditorDialog extends StatefulWidget {
  final Media media;
  final bool isCompact;

  const MangaBakaListEditorDialog({
    super.key,
    required this.media,
    this.isCompact = true,
  });

  @override
  State<MangaBakaListEditorDialog> createState() => _MangaBakaListEditorDialogState();
}

class _MangaBakaListEditorDialogState extends State<MangaBakaListEditorDialog> {
  late String status;
  late TextEditingController progressController;
  late TextEditingController scoreController;
  TextEditingController? noteController;

  @override
  void initState() {
    super.initState();
    final media = widget.media;
    status = media.userStatus ?? "READING";
    progressController =
        TextEditingController(text: media.userProgress?.toString() ?? '0');
    scoreController = TextEditingController(
        text: media.userScore != null && media.userScore! > 0
            ? (media.userScore! / 10).toString()
            : "0");
    noteController = TextEditingController(text: widget.media.notes ?? "");
  }

  @override
  void dispose() {
    progressController.dispose();
    scoreController.dispose();
    noteController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.w800,
    );
    const suffixStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
    const fieldPadding = EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0);
    var theme = Theme.of(context).colorScheme;
    return CustomBottomDialog(
      title: "MangaBaka List Editor",
      viewList: [
        Padding(
          padding: fieldPadding,
          child: Column(
            children: [
              _buildStatusDropdown(),
              const SizedBox(height: 16),
              _buildProgressField(labelStyle, suffixStyle),
              const SizedBox(height: 8),
              _buildScoreField(labelStyle, suffixStyle),
              const SizedBox(height: 16),
              if (!widget.isCompact) ...[
                _buildNoteField(),
                const SizedBox(height: 16),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _onDelete,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.errorContainer,
                    ),
                    child: Text(
                      "Delete",
                      style: TextStyle(color: theme.onErrorContainer),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _onSave,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primary,
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(color: theme.onPrimary),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatusDropdown() {
    const statuses = [
      'READING',
      'PLANNING',
      'COMPLETED',
      'REPEATING',
      'PAUSED',
      'DROPPED',
    ];

    return CustomDropdownMenu(
      text: "Status",
      selectedOption: status,
      options: statuses,
      onOptionSelected: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }

  Widget _buildProgressField(TextStyle labelStyle, TextStyle suffixStyle) {
    return TextField(
      controller: progressController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Chapters Read",
        labelStyle: labelStyle,
        suffixText: "/ ${widget.media.manga?.totalChapters ?? '?'}",
        suffixStyle: suffixStyle,
      ),
    );
  }

  Widget _buildScoreField(TextStyle labelStyle, TextStyle suffixStyle) {
    return TextField(
      controller: scoreController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Score (1-10)",
        labelStyle: labelStyle,
      ),
    );
  }

  Widget _buildNoteField() {
    return TextField(
      controller: noteController,
      maxLines: 3,
      decoration: const InputDecoration(
        labelText: "Notes",
        border: OutlineInputBorder(),
      ),
    );
  }

  Future<void> _onSave() async {
    final progress = int.tryParse(progressController.text) ?? 0;
    final scoreDouble = double.tryParse(scoreController.text) ?? 0;
    final score = (scoreDouble * 10).round();

    widget.media
      ..userStatus = status
      ..userProgress = progress
      ..userScore = score
      ..notes = noteController?.text;

    Get.back();
    await MangaBaka.mutations?.editList(widget.media);
    Refresh.activity[RefreshId.MangaBaka.homePage]?.value = true;
    Refresh.activity[widget.media.id]?.value = true;
  }

  Future<void> _onDelete() async {
    Get.back();
    await MangaBaka.mutations?.deleteFromList(widget.media);
    Refresh.activity[RefreshId.MangaBaka.homePage]?.value = true;
    Refresh.activity[widget.media.id]?.value = true;
  }
}
