import 'package:flutter/material.dart';

class IndicatorStyle extends StatefulWidget {
  const IndicatorStyle({super.key});

  @override
  State<IndicatorStyle> createState() => _IndicatorStyleState();
}

class _IndicatorStyleState extends State<IndicatorStyle>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: controller.value,
      semanticsLabel: 'Linear progress indicator',
    );
  }
}
