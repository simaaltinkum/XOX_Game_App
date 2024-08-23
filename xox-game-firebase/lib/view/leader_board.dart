import 'package:flutter/material.dart';

class LeaderBoardPage extends StatelessWidget {
  final List<String> winners;

  LeaderBoardPage({required this.winners});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leader Board'),
      ),
      body: ListView.builder(
        itemCount: winners.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(winners[index]),
          );
        },
      ),
    );
  }
}