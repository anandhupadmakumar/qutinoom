import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroControllerScope(
              controller: HeroController(
                createRectTween: (begin, end) => Tween(begin: begin, end: end),
              ),
              child: Image.asset(
                'assets/images/q_logo.png',
                width: 150,
                height: 150,
              ),
            ),
            const CircularProgressIndicator(
              strokeWidth: 1,
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
