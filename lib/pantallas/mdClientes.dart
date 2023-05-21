import 'package:flutter/material.dart';

import '../services/firebase.dart';
class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  TextEditingController MD_ClientesController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("agregar cliente"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Center(
              child: const Text(
                'pagina agregar cliente',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: MD_ClientesController,
              decoration: InputDecoration(hintText: 'Ingrese el nombre del cliente'),
            ),
            ElevatedButton(
                onPressed: () async {
                  
                  await agregarClientes(MD_ClientesController.text).then((_) {
                    Navigator.pop(context);
                  });
                  
                },
                child: Text("Guardar"))
          ],
        ),
      ),
    );
  }
}


    