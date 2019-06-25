import 'package:list_and_grid_app/whatsapp/model/chatsmodel.dart';

class ChatHelper {
  static var dataChat = [
    ChatModel('fikri', 'pulaaaang', '01/ 11/ 2000', 'gambar/pepe.png'),
    ChatModel('imad', 'eh', '01/ 12/ 2000', 'gambar/pepe.png'),
    ChatModel('uding', 'ah', '01/ 11/ 2000', 'gambar/pepe.png'),
    ChatModel('masy', 'wapage', '01/ 11/ 2000', 'gambar/pepe.png')
  ];

  static ChatModel getChatItem(int index) {
    return dataChat[index];
  }
  static var itemCount = dataChat.length;
}