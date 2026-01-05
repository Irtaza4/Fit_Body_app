import 'package:fitness_app/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Images.homeImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.65), // shadow strength
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 160,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 120),
              child: SvgPicture.asset(
                Images.welcomeTo,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 80),
              child: SvgPicture.asset(
                Images.appIcon,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            top: 160,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 80),
              child: SvgPicture.asset(
                Images.fitBody,
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      )
    );
  }
}
