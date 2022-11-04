import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.square(
          dimension: 200,
          child: Column(
            children: [
              GestureDetector(
                onTap: () => context.go("/"),
                child: Lottie.asset('assets/error.json'),
              ),
              const Text("Anasayfaya dönmek için tıklayın")
            ],
          ),
        ),
      ),
    );
  }
}
