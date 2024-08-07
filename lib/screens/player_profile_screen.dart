import 'package:flutter/material.dart';

class PlayerProfileScreen extends StatelessWidget {
  final String playerName;
  final String playerImage;
  final String position;
  final int goals;
  final int assists;
  final int matches;

  const PlayerProfileScreen({super.key, 
    required this.playerName,
    required this.playerImage,
    required this.position,
    required this.goals,
    required this.assists,
    required this.matches,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(playerName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(playerImage),
            ),
            const SizedBox(height: 20),
            Text(
              playerName,
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Posição: $position',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Gols: $goals',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Assistências: $assists',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Partidas: $matches',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
