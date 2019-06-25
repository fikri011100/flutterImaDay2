import 'package:flutter/material.dart';

class MyGridView {
  Card getTampilanGridView(nama, image) {
    return Card(
      elevation: 7,
      child: Column(
        children: <Widget>[
          Image.network(image, fit: BoxFit.fill,),
          Center(child: Text(nama),)
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      children: <Widget>[
        getTampilanGridView('pepe', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
        getTampilanGridView('defrog', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
        getTampilanGridView('def', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
        getTampilanGridView('frog', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
        getTampilanGridView('pepe', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
        getTampilanGridView('hehe', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
        getTampilanGridView('apaya?', 'https://thumbs.ebaystatic.com/d/l225/m/m83mpKWGcxhLMaYNxzcX2eQ.jpg'),
      ],
    );
  }
}
