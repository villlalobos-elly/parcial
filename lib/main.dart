import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_parcial4eval/pantallas/mdClienteVehiculo.dart';
import 'package:flutter_application_parcial4eval/pantallas/mdClientes.dart';
import 'package:flutter_application_parcial4eval/pantallas/mdVehiculos.dart';
import 'package:flutter_application_parcial4eval/services/firebase_option.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FireBaseMain());
}

class FireBaseMain extends StatelessWidget {
  const FireBaseMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirebaseCRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => const Clientes(),
        '/add': (context) => const ClienteVehiculo(),
        '/edit': (context)=> const Vehiculos(),
      },
    );
  }
}
