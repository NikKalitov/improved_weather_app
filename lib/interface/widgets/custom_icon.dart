import 'package:flutter/material.dart';
import '../../logic/providers/image_provider.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.scale,
    required this.iconId,
  }) : super(key: key);

  final double scale;
  final String iconId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Image.asset(
        MyImageProvider.returnImagePath(iconId),
        scale: scale,
      ),
    );
  }
}
