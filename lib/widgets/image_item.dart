import 'package:flutter/material.dart';

class ImageItem extends StatefulWidget {
  final String image;
  const ImageItem({super.key, required this.image});

  @override
  State<StatefulWidget> createState() => _ImageItem();
}

class _ImageItem extends State<ImageItem> {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(widget.image));
  }
}
