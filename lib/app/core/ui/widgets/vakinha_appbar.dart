import 'package:flutter/material.dart';
import '../constants/images_constants.dart';

class VakinhaAppbar extends AppBar {
  VakinhaAppbar({Key? key, double elevation = 2})
      : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: elevation,
          centerTitle: true,
          title: Image.asset(ImagesConstants.logoImage, width: 80),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
}
