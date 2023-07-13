import 'package:flutter/material.dart';

class AppSkelton extends StatefulWidget {
  final double height;
  final double width;
  const AppSkelton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<AppSkelton> createState() => _AppSkeltonState();
}

class _AppSkeltonState extends State<AppSkelton> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true, max: 1, min: 0.4);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        height: widget.height,
        width: widget.width,
      ),
    );
  }
}
