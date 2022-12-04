import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class CustomImageSlider extends StatefulWidget {
  List<String> photos;
  CustomImageSlider({Key? key, required this.photos}) : super(key: key);

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 250,
      height: 480,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 12,
          color: Theme.of(context).primaryColor,
          offset: Offset(1, 3),
        ),
      ]),
      child: ImageSlideshow(
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          for (String i in widget.photos) imageBuilder(i),
        ],
      ),
    );
  }

  Image imageBuilder(String photo) {
    return Image.asset(
      photo,
      fit: BoxFit.cover,
    );
  }
}
