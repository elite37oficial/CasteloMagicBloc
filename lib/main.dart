// main.dart
import 'package:castelo_magico/bloc/luz_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CasteloMagico());
}

class CasteloMagico extends StatelessWidget {
  const CasteloMagico({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => LuzBloc(),
        child: CasteloPage(),
      ),
    );
  }
}

class CasteloPage extends StatelessWidget {
  const CasteloPage({super.key});

  @override
  Widget build(BuildContext context) {
    final luzBloc = BlocProvider.of<LuzBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Castelo Mágico")),
      body: Center(
        child: BlocBuilder<LuzBloc, LuzState>(
          builder: (context, estado) {
            String mensagem = (estado is LuzAcesa)
                ? "A luz está acesa! 🌟"
                : "A luz está apagada! 🌑";

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  mensagem,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        luzBloc.add(AcenderLuz());
                      },
                      child: Text("Acender Luz"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        luzBloc.add(ApagarLuz());
                      },
                      child: Text("Apagar Luz"),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
