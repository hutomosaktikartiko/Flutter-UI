import 'package:flutter/material.dart';

class CustomPhotoCard extends StatelessWidget {
  const CustomPhotoCard({
    required this.photoUrl,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  final String photoUrl;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        "assets/examples/$photoUrl",
        height: height ?? 40,
        width: width ?? 40,
        fit: BoxFit.cover,
      ),
    );
  }
}