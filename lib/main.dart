import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/players_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/club_screen.dart'; // Adicione a importação

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time de Futebol',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/players': (context) => PlayersScreen(),
        '/stats': (context) => const StatsScreen(),
        '/club': (context) => const ClubScreen(), // Adicione a rota para a nova tela
      },
    );
  }
}
