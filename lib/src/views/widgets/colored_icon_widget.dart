import 'package:flutter/material.dart';

class ColoredIconWidget extends StatelessWidget {
  final String? assetPath;
  final Color startColor;
  final Color endColor;
  const ColoredIconWidget(
      {super.key,
      this.assetPath,
      required this.startColor,
      required this.endColor});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
                colors: [startColor, endColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight)
            .createShader(bounds);
      },
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        child: Image.asset(assetPath!),
      ),
    );
  }
}
