import 'package:flutter/material.dart';

class SlideUpAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Offset initialOffset;
  final Offset finalOffset;

  const SlideUpAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 750),
    this.initialOffset = const Offset(0, 1),
    this.finalOffset = Offset.zero,
  });

  @override
  SlideUpAnimationState createState() => SlideUpAnimationState();
}

class SlideUpAnimationState extends State<SlideUpAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: widget.initialOffset,
      end: widget.finalOffset,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutBack,
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: widget.child,
    );
  }
}
