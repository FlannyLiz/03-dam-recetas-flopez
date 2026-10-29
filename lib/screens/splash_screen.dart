import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recetasapp/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 2200), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 127, 1, 133),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.restaurant, color: Colors.white, size: 90),
            SizedBox(height: 16),
            Text(
              'Recetas App',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(height: 24),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}