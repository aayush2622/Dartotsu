import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({super.key});

  @override
  createState() => _ExtensionScreenState();
}

class _ExtensionScreenState extends State<ExtensionScreen> {
  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Extension'),
        actions: [
          const SizedBox(width: 8),
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: Container(
          color: context.colorScheme.surface,
          child: const Center(
            child: Text('Extension Screen'),
          ),
        ),
      ),
    );
  }
}
