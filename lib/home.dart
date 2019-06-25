import 'package:flutter/material.dart';

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
      appBar: CustomAppBar(title: 'Home Layout', warnabg: Colors.red,),
      body: HalamanUI(),
    );
  }
}

class HalamanUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  String title;
  Color warnabg;


  CustomAppBar({Key key,this.title, this.warnabg}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 10,
      centerTitle: true,
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



