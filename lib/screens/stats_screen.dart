import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Tabela'),
        foregroundColor: Colors.white, // Cor do texto da AppBar
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brasileirão Série A 2024',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildStatsTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsTable() {
    return Table(
      border: TableBorder.all(color: Colors.black), // Cor da borda
      columnWidths: const {
        0: FlexColumnWidth(0.5),
        1: FlexColumnWidth(3.0),
        2: FlexColumnWidth(1.5),
        3: FlexColumnWidth(1.0),
        4: FlexColumnWidth(1.0),
        5: FlexColumnWidth(1.0),
        6: FlexColumnWidth(1.5),
        7: FlexColumnWidth(1.5),
        8: FlexColumnWidth(1.5),
      },
      children: [
        // Cabeçalhos da tabela
        _buildTableRow([
          'Posição', 'Clube', 'Pts', 'PJ', 'VIT', 'E', 'DER', 'GM', 'GC', 'SG'
        ], isHeader: true),

        // Dados dos times
        _buildTableRow(['1', 'Botafogo', '43', '21', '13', '4', '4', '35', '20', '15']),
        _buildTableRow(['2', 'Flamengo', '40', '20', '12', '4', '4', '34', '20', '14']),
        _buildTableRow(['3', 'Fortaleza', '39', '20', '11', '6', '3', '26', '19', '7']),
        _buildTableRow(['4', 'Palmeiras', '37', '21', '11', '4', '6', '28', '17', '11']),
        _buildTableRow(['5', 'Cruzeiro', '35', '20', '11', '2', '7', '29', '22', '7']),
        _buildTableRow(['6', 'São Paulo', '35', '21', '10', '5', '6', '29', '21', '8']),
        _buildTableRow(['7', 'Bahia', '32', '21', '9', '5', '7', '29', '25', '4']),
        _buildTableRow(['8', 'Athletico-PR', '28', '19', '8', '4', '7', '22', '20', '2']),
        _buildTableRow(['9', 'Atlético-MG', '28', '19', '7', '7', '5', '28', '28', '0']),
        _buildTableRow(['10', 'Bragantino', '26', '19', '7', '5', '7', '24', '23', '1']),
        _buildTableRow(['11', 'Vasco da Gama', '24', '20', '7', '3', '10', '22', '31', '-9'], isHighlight: true),
        _buildTableRow(['12', 'Criciúma', '24', '19', '6', '6', '7', '28', '29', '-1']),
        _buildTableRow(['13', 'Juventude', '22', '19', '5', '7', '7', '21', '25', '-4']),
        _buildTableRow(['14', 'Grêmio', '21', '19', '6', '3', '10', '17', '22', '-5']),
        _buildTableRow(['15', 'EC Vitória', '21', '21', '6', '3', '12', '23', '32', '-9']),
        _buildTableRow(['16', 'Internacional', '21', '16', '5', '6', '5', '14', '14', '0']),
        _buildTableRow(['17', 'Fluminense', '20', '20', '5', '5', '10', '16', '24', '-8']),
        _buildTableRow(['18', 'Corinthians', '20', '21', '4', '8', '9', '19', '28', '-9']),
        _buildTableRow(['19', 'Cuiabá', '17', '19', '4', '5', '10', '19', '25', '-6']),
        _buildTableRow(['20', 'Atlético-GO', '12', '21', '2', '6', '13', '17', '35', '-18']),
      ],
    );
  }

  TableRow _buildTableRow(List<String> cells, {bool isHeader = false, bool isHighlight = false}) {
    return TableRow(
      decoration: isHeader
          ? const BoxDecoration(color: Colors.grey) // Cabeçalhos
          : isHighlight
              ? BoxDecoration(color: Colors.red[100]) // Destaque para Vasco da Gama
              : null,
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cell,
            style: TextStyle(
              fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        );
      }).toList(),
    );
  }
}