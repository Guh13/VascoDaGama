import 'package:flutter/material.dart';

class PlayersScreen extends StatelessWidget {
  final Map<String, List<Map<String, dynamic>>> playersByPosition = {
    'Goleiro': [
      {
        'name': 'Léo Jardim',
        'image': 'assets/jogador1.png',
        'stats': {
          'Idade': '29',
          'Gols': '0',
          'Altura': '1,88',
        },
      },
      {
        'name': 'Keiller',
        'image': 'assets/jogador12.png',
        'stats': {
          'Idade': '27',
          'Gols': '0',
          'Altura': '1,93',
        },
      },
      {
        'name': 'Pablo',
        'image': 'assets/jogador13.png',
        'stats': {
          'Idade': '21',
          'Gols': '0',
          'Altura': '1,88',
        },
      },
      {
        'name': 'Phillipe Gabriel',
        'image': 'assets/jogador14.png',
        'stats': {
          'Idade': '18',
          'Gols': '0',
          'Altura': '1,96',
        },
      },
    ],
    'Lateral Direito': [
      {
        'name': 'Paulo Henrique',
        'image': 'assets/jogador2.png',
        'stats': {
          'Idade': '28',
          'Gols': '2',
          'Altura': '1,75',
        },
      },
      {
        'name': 'Rojas',
        'image': 'assets/jogador15.png',
        'stats': {
          'Idade': '28',
          'Gols': '0',
          'Altura': '1,76',
        },
      },
      {
        'name': 'Puma Rodríguez',
        'image': 'assets/jogador16.png',
        'stats': {
          'Idade': '27',
          'Gols': '4',
          'Altura': '1,83',
        },
      },
    ],
    'Zagueiro': [
      {
        'name': 'Maicon',
        'image': 'assets/jogador3.png',
        'stats': {
          'Idade': '35',
          'Gols': '1',
          'Altura': '1,91',
        },
      },
      {
        'name': 'Léo',
        'image': 'assets/jogador4.png',
        'stats': {
          'Idade': '28',
          'Gols': '3',
          'Altura': '1,83',
        },
      },
      {
        'name': 'João Victor',
        'image': 'assets/jogador17.png',
        'stats': {
          'Idade': '26',
          'Gols': '0',
          'Altura': '1,87',
        },
      },
      {
        'name': 'Lyncon Correa',
        'image': 'assets/jogador18.png',
        'stats': {
          'Idade': '26',
          'Gols': '0',
          'Altura': '1,88',
        },
      },
      {
        'name': 'Luiz Gustavo',
        'image': 'assets/jogador19.png',
        'stats': {
          'Idade': '27',
          'Gols': '0',
          'Altura': '1,90',
        },
      },
    ],
    'Lateral Esquerdo': [
      {
        'name': 'Lucas Piton',
        'image': 'assets/jogador5.png',
        'stats': {
          'Idade': '23',
          'Gols': '6',
          'Altura': '1,75',
        },
      },
      {
        'name': 'Victor Luís',
        'image': 'assets/jogador20.png',
        'stats': {
          'Idade': '31',
          'Gols': '0',
          'Altura': '1,77',
        },
      },
      {
        'name': 'Leandrinho',
        'image': 'assets/jogador21.png',
        'stats': {
          'Idade': '19',
          'Gols': '2',
          'Altura': '1,76',
        },
      },
      {
        'name': 'Julião',
        'image': 'assets/jogador22.png',
        'stats': {
          'Idade': '21',
          'Gols': '0',
          'Altura': '1,81',
        },
      },
    ],
    'Volante': [
      {
        'name': 'Juan Sforza',
        'image': 'assets/jogador23.png',
        'stats': {
          'Idade': '22',
          'Gols': '1',
          'Altura': '1,79',
        },
      },
      {
        'name': 'Souza',
        'image': 'assets/jogador24.png',
        'stats': {
          'Idade': '35',
          'Gols': '2',
          'Altura': '1,88',
        },
      },
      {
        'name': 'Hugo Moura',
        'image': 'assets/jogador25.png',
        'stats': {
          'Idade': '26',
          'Gols': '0',
          'Altura': '1,77',
        },
      },
      {
        'name': 'Zé Gabriel',
        'image': 'assets/jogador26.png',
        'stats': {
          'Idade': '25',
          'Gols': '2',
          'Altura': '1,84',
        },
      },
      {
        'name': 'Lucas Eduardo',
        'image': 'assets/jogador27.png',
        'stats': {
          'Idade': '20',
          'Gols': '0',
          'Altura': '1,73',
        },
      },
      {
        'name': 'Mateus Carvalho',
        'image': 'assets/jogador28.png',
        'stats': {
          'Idade': '22',
          'Gols': '3',
          'Altura': '1,84',
        },
      },
    ],
    'Meio Campista': [
      {
        'name': 'Coutinho',
        'image': 'assets/jogador6.png',
        'stats': {
          'Idade': '32',
          'Gols': '5',
          'Altura': '1,72',
        },
      },
      {
        'name': 'Estrella',
        'image': 'assets/jogador7.png',
        'stats': {
          'Idade': '19',
          'Gols': '1',
          'Altura': '1,70',
        },
      },
      {
        'name': 'Jair',
        'image': 'assets/jogador8.png',
        'stats': {
          'Idade': '29',
          'Gols': '5',
          'Altura': '1,78',
        },
      },
      {
        'name': 'Payet',
        'image': 'assets/jogador29.png',
        'stats': {
          'Idade': '37',
          'Gols': '5',
          'Altura': '1,75',
        },
      },
      {
        'name': 'Paulinho',
        'image': 'assets/jogador30.png',
        'stats': {
          'Idade': '26',
          'Gols': '1',
          'Altura': '1,75',
        },
      },
      {
        'name': 'Praxedes',
        'image': 'assets/jogador31.png',
        'stats': {
          'Idade': '22',
          'Gols': '2',
          'Altura': '1,86',
        },
      },
      {
        'name': 'Pablo Galdames',
        'image': 'assets/jogador32.png',
        'stats': {
          'Idade': '27',
          'Gols': '2',
          'Altura': '1,76',
        },
      },
      {
        'name': 'JP',
        'image': 'assets/jogador33.png',
        'stats': {
          'Idade': '19',
          'Gols': '0',
          'Altura': '1,74',
        },
      },
    ],
    'Atacante': [
      {
        'name': 'Alex Teixeira',
        'image': 'assets/jogador9.png',
        'stats': {
          'Idade': '34',
          'Gols': '20',
          'Altura': '1,74',
        },
      },
      {
        'name': 'Emerson Rodriguez',
        'image': 'assets/jogador10.png',
        'stats': {
          'Idade': '22',
          'Gols': '6',
          'Altura': '1,82',
        },
      },
      {
        'name': 'Claudio Miro',
        'image': 'assets/jogador11.png',
        'stats': {
          'Idade': '23',
          'Gols': '4',
          'Altura': '1,83',
        },
      },
      {
        'name': 'Sávio',
        'image': 'assets/jogador34.png',
        'stats': {
          'Idade': '19',
          'Gols': '2',
          'Altura': '1,81',
        },
      },
      {
        'name': 'Tales',
        'image': 'assets/jogador35.png',
        'stats': {
          'Idade': '20',
          'Gols': '1',
          'Altura': '1,84',
        },
      },
      {
        'name': 'Biel',
        'image': 'assets/jogador36.png',
        'stats': {
          'Idade': '23',
          'Gols': '3',
          'Altura': '1,77',
        },
      },
      {
        'name': 'Diego Costa',
        'image': 'assets/jogador37.png',
        'stats': {
          'Idade': '35',
          'Gols': '15',
          'Altura': '1,87',
        },
      },
      {
        'name': 'Maxi',
        'image': 'assets/jogador38.png',
        'stats': {
          'Idade': '27',
          'Gols': '10',
          'Altura': '1,86',
        },
      },
      {
        'name': 'Ricardo',
        'image': 'assets/jogador39.png',
        'stats': {
          'Idade': '28',
          'Gols': '7',
          'Altura': '1,83',
        },
      },
      {
        'name': 'Rodrigo Dourado',
        'image': 'assets/jogador40.png',
        'stats': {
          'Idade': '30',
          'Gols': '5',
          'Altura': '1,84',
        },
      },
      {
        'name': 'Vinícius',
        'image': 'assets/jogador41.png',
        'stats': {
          'Idade': '22',
          'Gols': '9',
          'Altura': '1,78',
        },
      },
    ],
  };

  PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Jogadores'),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: playersByPosition.entries.map((entry) {
          final position = entry.key;
          final players = entry.value;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  position,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),
                ),
              ),
              ...players.map((player) => Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8.0),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(player['image']),
                      ),
                      title: Text(
                        player['name'],
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayerDetailScreen(
                              playerName: player['name'],
                              playerImage: player['image'],
                              playerPosition: position,
                              playerStats: player['stats'],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class PlayerDetailScreen extends StatelessWidget {
  final String playerName;
  final String playerImage;
  final String playerPosition;
  final Map<String, String> playerStats;

  const PlayerDetailScreen({
    super.key,
    required this.playerName,
    required this.playerImage,
    required this.playerPosition,
    required this.playerStats,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(playerName),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
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
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Posição: $playerPosition',
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: playerStats.entries.map((entry) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        '${entry.key}: ${entry.value}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
