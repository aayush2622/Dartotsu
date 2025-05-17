import 'package:dartotsu/Adaptor/Settings/SettingsAdaptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../DataClass/Media.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../../Widgets/DropdownMenu.dart';
import 'Anilist.dart';

void listEditor(BuildContext context, Media media, {bool isCompact = false}) {
  var status = media.userStatus ?? "PLANNING";
  var progressController =
      TextEditingController(text: media.userProgress?.toString() ?? '??');
  var scoreController = TextEditingController(
      text:
          media.userScore != null ? (media.userScore! / 10).toString() : "??");

  var isPrivate = media.isListPrivate;
  var text =
      "/ ${media.anime != null ? (media.anime!.nextAiringEpisode != null && media.anime!.nextAiringEpisode != -1 ? media.anime!.nextAiringEpisode : media.anime!.totalEpisodes ?? "??") : media.manga?.totalChapters ?? "??"}";

  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      title: "List Editor",
      viewList: [
        Column(
          children: [
            buildDropdownMenu(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
              borderRadius: 16,
              prefixIcon: Icons.playlist_play_rounded,
              options: Anilist.status,
              hintText: status,
              labelText: "STATUS",
              currentValue: status,
              onChanged: (String? value) => status = value ?? "PLANNING",
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      controller: progressController,
                      decoration: InputDecoration(
                        labelText: "PROGRESS",
                        labelStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                        suffixText: text,
                        suffixStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        prefixIcon:
                            const Icon(Icons.add_circle_outline_rounded),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      final text = progressController.text;
                      final current = int.tryParse(text) ?? 0;
                      progressController.text = (current + 1).toString();
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "+1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: TextField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'^[1-9]\d*(\.\d?)?$'))
                ],
                controller: scoreController,
                decoration: InputDecoration(
                  labelText: "SCORE",
                  labelStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                  suffixText: "/ 10",
                  suffixStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  prefixIcon: const Icon(Icons.star_rounded),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  fillColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SettingsAdaptor(
                settings: [
                  Setting(
                    type: SettingType.switchType,
                    name: 'Private',
                    icon: Icons.accessible_forward_outlined,
                    isChecked: media.isListPrivate,
                    onSwitchChange: (bool value) => isPrivate = value,
                  ),
                ],
              ),
            )
          ],
        )
      ],
      positiveText: 'Save',
      positiveCallback: () {
        media.userStatus = status;
        media.userProgress = int.tryParse(progressController.text);
        var score = ((double.tryParse(scoreController.text) ?? 0) * 10).toInt();
        media.userScore = score > 100
            ? 100
            : score < 0
                ? 0
                : score;
        media.isListPrivate = isPrivate;
        Anilist.mutations?.editList(media);
        Get.back();
        Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
      },
      negativeText: 'Delete',
    ),
  );
}
