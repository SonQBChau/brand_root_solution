import 'package:flutter/widgets.dart';

class EasyAnimatedSize extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final AlignmentGeometry alignment;
  final Curve curve;
  EasyAnimatedSize({
    this.child,
    this.duration = const Duration(milliseconds: 200),
    this.alignment = Alignment.center,
    this.curve = Curves.ease,
  });
  @override
  _EasyAnimatedSizeState createState() => _EasyAnimatedSizeState();
}

class _EasyAnimatedSizeState extends State<EasyAnimatedSize> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: widget.duration,
      child: widget.child,
      curve: widget.curve,
      alignment: widget.alignment,
    );
  }
}