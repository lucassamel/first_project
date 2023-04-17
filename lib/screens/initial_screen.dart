import 'package:first_project/components/task.dart';
import 'package:first_project/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({Key? key}) : super(key: key);

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          Task('Aprender Flutter', "assets/images/dash.png", 3),
          Task('Andar de Bike', "assets/images/bike.webp", 2),
          Task('Ler', "assets/images/livro.jpg", 5),
          Task('Correr', "assets/images/meditar.jpeg", 4),
          Task('Correr', "assets/images/jogar.jpg", 4),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const FormScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
