import 'package:flutter/material.dart';
import 'package:myapp/src/components/campo_widget.dart';
import 'package:myapp/src/models/campo.dart';
import 'package:myapp/src/models/tabuleiro.dart';

class TabuleiroWidget extends StatelessWidget {
  final Tabuleiro tabuleiro;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMacacao;

  TabuleiroWidget({
    @required this.tabuleiro,
    @required this.onAbrir,
    @required this.onAlternarMacacao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: tabuleiro.colunas,
        children: tabuleiro.campos.map((c) {
          return CampoWidget(
            campo: c,
            onAbrir: onAbrir,
            onAlternarMacacao: onAlternarMacacao,
          );
        }).toList(),
      ),
    );
  }
}
