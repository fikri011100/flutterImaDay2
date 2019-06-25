import 'package:flutter/material.dart';
import 'home.dart';

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'halaman 1',
        warnabg: Colors.blueAccent,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
