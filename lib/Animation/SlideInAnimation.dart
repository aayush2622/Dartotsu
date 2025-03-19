import 'package:flutter/material.dart';

class SlideInAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Offset initialOffset;
  final Offset finalOffset;

  const SlideInAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 750),
    this.initialOffset = const Offset(1.0, 0.0),
    this.finalOffset = const Offset(0.0, 0.0),
  });

  @override
  SlideInAnimationState createState() => SlideInAnimationState();
}

class SlideInAnimationState extends State<SlideInAnimation>
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
