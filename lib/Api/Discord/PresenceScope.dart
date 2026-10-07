import 'package:flutter/widgets.dart';

import '../../Utils/Functions/GetXFunctions.dart';
import 'DiscordPresence.dart';
import 'DiscordPresenceController.dart';

class PresenceScope extends StatefulWidget {
  final DiscordPresence presence;
  final Widget child;

  const PresenceScope({super.key, required this.presence, required this.child});

  @override
  State<PresenceScope> createState() => _PresenceScopeState();
}

class _PresenceScopeState extends State<PresenceScope> {
  DiscordPresenceController? _controller;
  Object? _token;

  @override
  void initState() {
    super.initState();
    _controller = tryFind<DiscordPresenceController>();
    _token = _controller?.push(widget.presence);
  }

  @override
  void didUpdateWidget(PresenceScope old) {
    super.didUpdateWidget(old);
    final token = _token;
    if (token != null && old.presence != widget.presence) {
      _controller?.replace(token, widget.presence);
    }
  }

  @override
  void dispose() {
    final token = _token;
    if (token != null) _controller?.pop(token);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
