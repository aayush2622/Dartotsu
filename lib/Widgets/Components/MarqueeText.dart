import 'package:flutter/material.dart';

import '../../Utils/Animation/WidgetAnimations.dart';

class MarqueeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double speed;

  const MarqueeText(this.text, {super.key, this.style, this.speed = 36});

  @override
  Widget build(BuildContext context) {
    final resolved = DefaultTextStyle.of(context).style.merge(style);
    final direction = Directionality.of(context);
    final scaler = MediaQuery.textScalerOf(context);
    return LayoutBuilder(
      builder: (context, box) {
        final painter = TextPainter(
          text: TextSpan(text: text, style: resolved),
          textDirection: direction,
          textScaler: scaler,
          maxLines: 1,
        )..layout();
        final overflow = painter.width - box.maxWidth;
        painter.dispose();
        final label = Text(
          text,
          style: style,
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.visible,
        );
        if (overflow <= 0 || animationsOff) {
          return Text(
            text,
            style: style,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          );
        }
        return ClipRect(
          child: _Scroller(
            key: ValueKey('${text}_${overflow.round()}'),
            overflow: overflow,
            speed: speed,
            rtl: direction == TextDirection.rtl,
            child: label,
          ),
        );
      },
    );
  }
}

class _Scroller extends StatefulWidget {
  final double overflow;
  final double speed;
  final bool rtl;
  final Widget child;

  const _Scroller({
    super.key,
    required this.overflow,
    required this.speed,
    required this.rtl,
    required this.child,
  });

  @override
  State<_Scroller> createState() => _ScrollerState();
}

class _ScrollerState extends State<_Scroller>
    with SingleTickerProviderStateMixin {
  static const _pause = 1400;

  late final AnimationController _controller;
  late final Animation<double> _offset;

  @override
  void initState() {
    super.initState();
    final travel = (widget.overflow / widget.speed * 1000).round();
    _controller = AnimationController(
      vsync: this,
      duration: animDuration(travel + _pause * 2 + 500),
    );
    final total = (travel + _pause * 2 + 500).toDouble();
    _offset = TweenSequence<double>([
      TweenSequenceItem(tween: ConstantTween(0), weight: _pause / total),
      TweenSequenceItem(
        tween: Tween(
          begin: 0.0,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: travel / total,
      ),
      TweenSequenceItem(tween: ConstantTween(1), weight: _pause / total),
      TweenSequenceItem(
        tween: Tween(
          begin: 1.0,
          end: 0.0,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 500 / total,
      ),
    ]).animate(_controller);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sign = widget.rtl ? 1.0 : -1.0;
    return OverflowBox(
      alignment: AlignmentDirectional.centerStart,
      minWidth: 0,
      maxWidth: double.infinity,
      child: AnimatedBuilder(
        animation: _offset,
        child: widget.child,
        builder: (context, child) => Transform.translate(
          offset: Offset(sign * widget.overflow * _offset.value, 0),
          child: child,
        ),
      ),
    );
  }
}
