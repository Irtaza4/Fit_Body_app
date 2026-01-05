import 'package:fitness_app/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _fromLeft;
  late final Animation<Offset> _fromRight;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: Duration(milliseconds: 1200),
    );

    _fromLeft = Tween<Offset>(
    begin: const Offset(-1.0, 0.0),
    end: Offset.zero  
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fromRight =Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(children: [
                SlideTransition(
                    position: _fromLeft,
                    child: SvgPicture.asset(Images.appIcon)),
                const SizedBox(height: 20),
                SlideTransition(
                    position: _fromRight,
                    child: SvgPicture.asset(Images.fitBody)),
              ],),
            ),
        
          ],
        ),
      ),
    );
  }
}
