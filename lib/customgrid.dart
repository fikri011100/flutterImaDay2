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
    )
  }

  GridView build() {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      children: <Widget>[
        getTampilanGridView('pepe', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
        getTampilanGridView('defrog', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
        getTampilanGridView('def', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
        getTampilanGridView('frog', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
        getTampilanGridView('pepe', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
        getTampilanGridView('hehe', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
        getTampilanGridView('apaya?', 'https://66.media.tumblr.com/0688c6894e55e69dd2c2666eeacc7340/tumblr_inline_nt0vfexkpK1spsojg_500.jpg'),
      ],
    );
  }
}
