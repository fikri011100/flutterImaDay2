import 'package:flutter/material.dart';
import 'package:list_and_grid_app/whatsapp/helper/chathelper.dart';
import 'package:list_and_grid_app/whatsapp/model/chatsmodel.dart';

class WAPage extends StatefulWidget {
  @override
  _WAPageState createState() => _WAPageState();
}

class _WAPageState extends State<WAPage> with SingleTickerProviderStateMixin {
  TabController myController;

  @override
  void initState() {
    myController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Page'),
        bottom: TabBar(
          controller: myController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chat',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Call',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: myController,
        children: <Widget>[
          Center(child: Icon(Icons.camera_alt)),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
                  color: Colors.grey[400],
                ),
            itemCount: 4,
            itemBuilder: (BuildContext, index) {
              ChatModel chatModel = ChatHelper.getChatItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(chatModel.gambar),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    chatModel.nama,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    chatModel.tanggal,
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey[400]),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  chatModel.isiPesan,
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey[400],
            ),
            itemCount: 4,
            itemBuilder: (BuildContext, index) {
              ChatModel chatModel = ChatHelper.getChatItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(chatModel.gambar),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            chatModel.nama,
                            style: TextStyle(fontSize: 20),

                          )
                        ],
                      ),
                    ],
                  )
                ],
              );
            },
          ),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey[400],
            ),
            itemCount: 4,
            itemBuilder: (BuildContext, index) {
              ChatModel chatModel = ChatHelper.getChatItem(index);
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(chatModel.gambar),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    chatModel.nama,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.phone)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
