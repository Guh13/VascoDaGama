import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Cor de fundo cinza claro
      appBar: AppBar(
        title: const Text('Time de Futebol'),
        backgroundColor: Colors.grey[850], // Cor da AppBar igual à tela de estatísticas
        foregroundColor: Colors.white, // Cor do texto da AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo do Vasco
            Image.asset(
              'assets/logo_vasco.png', // Caminho para o arquivo da logo
              height: 150, // Ajuste o tamanho conforme necessário
            ),
            const SizedBox(height: 40), // Espaçamento entre a logo e os botões
            SizedBox(
              width: 200, // Definindo o mesmo tamanho para todos os botões
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/players');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Cor de fundo branca
                  foregroundColor: Colors.black, // Cor do texto preta
                  shadowColor: Colors.grey, // Cor da sombra
                  elevation: 5, // Altura da sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Borda arredondada
                  ),
                  side: const BorderSide(color: Colors.black), // Borda preta
                ),
                child: const Text('Jogadores'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200, // Definindo o mesmo tamanho para todos os botões
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/stats');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Cor de fundo branca
                  foregroundColor: Colors.black, // Cor do texto preta
                  shadowColor: Colors.grey, // Cor da sombra
                  elevation: 5, // Altura da sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Borda arredondada
                  ),
                  side: const BorderSide(color: Colors.black), // Borda preta
                ),
                child: const Text('Tabela'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200, // Definindo o mesmo tamanho para todos os botões
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/club');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Cor de fundo branca
                  foregroundColor: Colors.black, // Cor do texto preta
                  shadowColor: Colors.grey, // Cor da sombra
                  elevation: 5, // Altura da sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Borda arredondada
                  ),
                  side: const BorderSide(color: Colors.black), // Borda preta
                ),
                child: const Text('Clube'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}