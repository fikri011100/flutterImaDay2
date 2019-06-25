import 'package:flutter/material.dart';
import 'home.dart';
import 'customgrid.dart';

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman3',
      home: GridUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridUI extends StatelessWidget {
  final customGrid = MyGridView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Halaman3',
        warnabg: Colors.redAccent,
      ),
      body: customGrid.build(),
    );
  }
}
