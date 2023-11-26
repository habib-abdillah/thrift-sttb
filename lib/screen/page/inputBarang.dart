import 'package:flutter/material.dart';

class InputBarang extends StatefulWidget {
  const InputBarang({super.key});

  @override
  State<InputBarang> createState() => _InputBarangState();
}

class _InputBarangState extends State<InputBarang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: "Nama Barang",
                  labelText: "Nama Barang",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            Padding(padding: EdgeInsets.only(top: 15.0)),
            TextField(
              decoration: InputDecoration(
                  hintText: "Jumlah Barang",
                  labelText: "Jumlah Barang",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            )
          ],
        ),
      ),
    );
  }
}
