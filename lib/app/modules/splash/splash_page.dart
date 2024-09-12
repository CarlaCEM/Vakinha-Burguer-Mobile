import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burguer_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burguer_mobile/app/modules/splash/splash_controller.dart';
import '../../core/ui/constants/images_constants.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0XFF140E0E),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: context.width,
              child: Image.asset(
                ImagesConstants.lancheImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: context.heightTransformer(reducedBy: 85),
                ),
                Image.asset(ImagesConstants.logoImage),
                const SizedBox(
                  height: 60,
                ),
                VakinhaButton(
                  onPressed: () => controller.checkLogged(),
                  label: 'ACESSAR',
                  width: context.widthTransformer(reducedBy: 40),
                  height: 35,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
