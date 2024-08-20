import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'xox_view.dart'; 
import '../viewModel/game_store.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animation/start.json'), 
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => XOXView(gameStore: GameStore()),
                  ),
                );
              },
              child: const Text('Go to XOX Game Board'),
            ),
          ],
        ),
      ),
    );
  }
}

