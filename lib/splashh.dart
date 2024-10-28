import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myui/splash.dart';

class Splashh extends StatefulWidget {
  const Splashh({super.key});

  @override
  State<Splashh> createState() => _SplashViewState();
}

class _SplashViewState extends State<Splashh> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(_createRoute());
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Splash(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from the right
        const end = Offset.zero; // End at the center
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 82, 133, 252),
          toolbarHeight: 10,
        ),
        body: Column(
          children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    'Manage you',
                    style: TextStyle(fontSize: 35),
                  ),
                  Text(
                    'Daily TO DO',
                    style: TextStyle(fontSize: 35),
                  )
                ],
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/sp.png',
                height: 400,
                width: 450,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 233, 223, 134),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 10,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 10,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 233, 158),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Text(
                  'Without much worry just manage',
                  style: TextStyle(fontSize: 18),
                ),
                Text('things as easy as piece of cake',
                    style: TextStyle(fontSize: 18))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 228, 6),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text('Create a Note'),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 82, 133, 252));
  }
}
