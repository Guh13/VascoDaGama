import 'package:flutter/material.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Informações do Clube'),
        foregroundColor: Colors.white, // Cor do texto da AppBar
        backgroundColor: Colors.grey[850], // Cor da AppBar igual à tela de estatísticas
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo e nome do clube
            Row(
              children: [
                Image.asset(
                  'assets/logo_vasco.png', // Adicione o logo do Vasco
                  height: 80,
                ),
                const SizedBox(width: 16),
                Text(
                  'Vasco da Gama',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Seção "Sobre o Clube"
            _buildSectionTitle(context, 'Sobre o Clube'),
            const SizedBox(height: 8),
            const Text(
              'O Club de Regatas Vasco da Gama é um dos maiores clubes de futebol do Brasil. '
              'Fundado em 21 de agosto de 1898, o clube é conhecido por sua rica história e tradições. '
              'Com sede no Rio de Janeiro, o Vasco é um dos clubes mais tradicionais do país, '
              'com uma grande torcida e uma vasta história de conquistas no futebol nacional e internacional.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),
            
            // Seção "Principais Conquistas"
            _buildSectionTitle(context, 'Principais Conquistas'),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAchievementRow(Icons.emoji_events, 'Campeonato Brasileiro', '4 vezes'),
                _buildAchievementRow(Icons.sports_soccer, 'Copa do Brasil', '1 vez'),
                _buildAchievementRow(Icons.public, 'Copa Libertadores', '1 vez'),
                _buildAchievementRow(Icons.star, 'Outros títulos', '...'),
              ],
            ),
            const SizedBox(height: 24),

            // Seção "Estádio"
            _buildSectionTitle(context, 'Estádio'),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/estadio_sao_januario.png', // Caminho para a imagem do estádio
                  width: 150, // Ajuste o tamanho conforme necessário
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'São Januário',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Inaugurado em 1927, o Estádio de São Januário é o estádio do Vasco da Gama e está localizado no bairro de São Cristóvão, no Rio de Janeiro. '
                        'Com capacidade para mais de 21 mil pessoas, é conhecido por ser um dos estádios mais tradicionais do Brasil e palco de grandes conquistas do clube.',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Adicione mais seções conforme necessário
          ],
        ),
      ),
    );
  }

  // Método para criar títulos de seções
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.grey[850],
            fontWeight: FontWeight.bold,
          ),
    );
  }

  // Método para criar linhas de conquistas
  Widget _buildAchievementRow(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700], size: 20), // Ícone com tamanho ajustado
          const SizedBox(width: 12),
          Text(
            '$title: ',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
