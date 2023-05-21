import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getClientes() async {
  List Clientes = [];
  CollectionReference collectionReferenceUsuarios =
      baseD.collection('MD_Clientes');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  queryUsuarios.docs.forEach((documento) {
    Clientes.add(documento.data());
  });

  return Clientes;
}

Future<void> agregarClientes(String Clientes) async {
  await baseD.collection('usuarios').add({"nombre": Clientes});
}
