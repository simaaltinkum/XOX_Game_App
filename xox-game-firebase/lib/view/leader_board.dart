import 'package:flutter/material.dart';

class LeaderBoardPage extends StatelessWidget {
  final List<String> winner;

  LeaderBoardPage({required this.winner});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leader Board'),
      ),
      body: ListView.builder(
        itemCount: winner.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(winner[index]),
          );
        },
      ),
    );
  }
}