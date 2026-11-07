import '../../Utils/Animation/WidgetAnimations.dart';

import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'WebViewState.dart';

class WebView extends StatefulWidget {
  final String url;

  const WebView({super.key, required this.url});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView>
    with ScreenStateHost<WebView, WebViewState> {
  @override
  WebViewState buildState() => WebViewState(widget.url);

  ThemeData get theme => Theme.of(context);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        iconTheme: IconThemeData(color: scheme.onSurface),
        actionsIconTheme: IconThemeData(color: scheme.onSurface),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => popPage(context),
        ),
        title: _buildAddressSurface(),
        actions: [
          _buildNavigationButtons(),
          _buildPopupMenu(),
          const SizedBox(width: 8),
        ],
      ),
      body: ColoredBox(
        color: context.colorScheme.surface,
        child: _buildWebView(),
      ),
    );
  }

  Widget _buildAddressSurface() {
    final scheme = context.colorScheme;
    final uri = Uri.tryParse(state.url.value);
    final isHttps = uri?.scheme == 'https';
    return Watch(() {
      return AnimatedSwitcher(
        duration: animDuration(180),
        child: Container(
          key: ValueKey(state.isEditing.value),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 44,
          decoration: BoxDecoration(
            color: scheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: state.isEditing.value
              ? _buildAddressFieldInline()
              : MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Clickable(
                    onTap: state.startEditing,
                    child: Row(
                      children: [
                        Icon(
                          isHttps
                              ? Icons.lock_rounded
                              : Icons.warning_amber_rounded,
                          size: 16,
                          color: isHttps
                              ? scheme.onSurfaceVariant
                              : scheme.error,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            state.title.value.isNotEmpty
                                ? state.title.value
                                : state.url.value,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: scheme.onSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      );
    });
  }

  Widget _buildAddressFieldInline() {
    return Focus(
      onFocusChange: (hasFocus) {
        if (!hasFocus) {
          state.isEditing.value = false;
        }
      },
      child: TextField(
        controller: state.searchController,
        focusNode: state.addressFocus,
        style: ContextExtensions(context).textTheme.bodyMedium,
        autofocus: true,
        textInputAction: TextInputAction.go,
        decoration: InputDecoration(
          hintText: getString.searchOrEnterUrl,
          border: InputBorder.none,
          isDense: true,
        ),
        onSubmitted: state.submitAddress,
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Watch(
          () => IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            color: context.colorScheme.onSurface,
            disabledColor: context.colorScheme.onSurface.withValues(
              alpha: 0.38,
            ),
            onPressed: state.canGoBack.value ? state.goBack : null,
          ),
        ),
        Watch(
          () => IconButton(
            icon: const Icon(Icons.arrow_forward_rounded),
            color: context.colorScheme.onSurface,
            disabledColor: context.colorScheme.onSurface.withValues(
              alpha: 0.38,
            ),
            onPressed: state.canGoForward.value ? state.goForward : null,
          ),
        ),
      ],
    );
  }

  Widget _buildPopupMenu() {
    return PopupMenuButton<int>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      icon: const Icon(Icons.more_vert),
      onSelected: (value) async {
        switch (value) {
          case 0:
            await state.reload();
          case 1:
            state.share();
          case 2:
            await state.openExternal();
          case 3:
            await state.clearCookies();
        }
      },
      itemBuilder: (_) => [
        PopupMenuItem(value: 0, child: Text(getString.refresh)),
        PopupMenuItem(value: 1, child: Text(getString.share)),
        PopupMenuItem(value: 2, child: Text(getString.openInBrowser)),
        PopupMenuItem(value: 3, child: Text(getString.clearCookies)),
      ],
    );
  }

  Widget _buildWebView() {
    return Stack(
      children: [
        WebViewWidget(controller: state.controller),
        Watch(
          () => state.progress.value < 1.0
              ? AnimatedOpacity(
                  opacity: state.progress.value < 1.0 ? 1 : 0,
                  duration: animDuration(300),
                  child: LinearProgressIndicator(
                    value: state.progress.value,
                    minHeight: 2,
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}
