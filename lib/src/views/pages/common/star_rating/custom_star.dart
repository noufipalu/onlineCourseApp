import 'package:flutter/material.dart';

class CustomStar extends StatefulWidget {
  final int starCount;
  final double rating;
  final Color starColor;
  final Color borderColor;
  final double size;
  const CustomStar(
      {super.key,
      required this.starCount,
      required this.rating,
      required this.starColor,
      required this.borderColor,
      required this.size});

  @override
  State<CustomStar> createState() => _CustomStarState();
}

class _CustomStarState extends State<CustomStar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.starCount, (index) {
        double difference = widget.rating - index;
        double rating =
            difference > 1.0 ? 1.0 : (difference < 0.0 ? 0.0 : difference);
        return _buildStarIcon(index, rating);
      }),
    );
  }

  Widget _buildStarIcon(int index, double rating) {
    return Icon(
      Icons.star,
      size: widget.size,
      color: index < widget.rating ? widget.starColor : widget.borderColor,
    );
  }
}
