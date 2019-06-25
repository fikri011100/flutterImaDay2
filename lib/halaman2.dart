import 'package:flutter/material.dart';
import 'home.dart';
import 'package:toast/toast.dart';

class Halaman2 extends StatelessWidget {
  final dataMakanan = [
    'ayam bakar',
    'nasi goreng',
    'rendang',
    'dendeng',
    'sate'
  ];

  final dataMakananGambar = [
    Icons.airport_shuttle,
    Icons.android,
    Icons.restaurant,
    Icons.save,
    Icons.archive
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'halaman 1',
        warnabg: Colors.purple,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.black,),
        itemCount: dataMakanan.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Toast.show('${dataMakanan[index].toString()}', context, duration: Toast.LENGTH_LONG);
            },
            trailing: Icon(dataMakananGambar[index]),
            title: Text(dataMakanan[index]),
          );
        },
      ),
    );
  }
}
