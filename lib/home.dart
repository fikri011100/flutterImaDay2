import 'package:flutter/material.dart';
import 'halaman1.dart';
import 'halaman2.dart';
import 'halaman3.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home Layout',
        warnabg: Colors.red,
      ),
      body: HalamanUI(),
    );
  }
}

class HalamanUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(
            'https://i.kym-cdn.com/photos/images/original/001/194/209/3f0.gif',
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Training Flutter, 25 Juni'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[Icon(Icons.android), Text('Android')],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Halaman1()));
                },
              ),
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[Icon(Icons.android), Text('list')],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Halaman2()));
                },
              ), GestureDetector(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[Icon(Icons.android), Text('grid')],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Halaman3()));
                },
              ), GestureDetector(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[Icon(Icons.android), Text('HONGMENG')],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Halaman1()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  Color warnabg;

  CustomAppBar({Key key, this.title, this.warnabg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 10,
      leading: Icon(Icons.home),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search)),
        IconButton(icon: Icon(Icons.settings)),
      ],
      backgroundColor: warnabg,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
