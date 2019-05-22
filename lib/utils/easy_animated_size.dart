import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// easy animated size
// https://lucasappco.com/blog/flutter-tidbits-from-1block

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

  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        duration: const Duration(milliseconds: 100), value: 1.0, vsync: this);
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }




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


