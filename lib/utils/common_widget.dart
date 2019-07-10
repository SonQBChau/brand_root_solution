import 'package:flutter/material.dart';

class RoundedCornerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
      height: 6.0,
    );
  }
}

class AddAnimatedIcon extends StatefulWidget {
  @override
  _AddAnimatedIconState createState() => _AddAnimatedIconState();
}

class _AddAnimatedIconState extends State<AddAnimatedIcon> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  Animation<double> sizeAnimation;
  int currentState = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = Tween<double>(begin: 0, end: 60).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    sizeAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn))
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 30,
      height: 30,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Transform.scale(
              scale: sizeAnimation.value,
              child: GestureDetector(
                  onTap: () {
                    animationController.reverse();
                  },
                  child: Icon(
                    Icons.add,
                    size: 30,
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Transform.scale(
              scale: sizeAnimation.value - 1,
              child: GestureDetector(
                  onTap: () {
                    animationController.forward();
                  },
                  child: Icon(
                    Icons.remove,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
