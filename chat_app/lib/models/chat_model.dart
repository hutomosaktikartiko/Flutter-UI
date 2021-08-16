class ChatModel {
  String? name, photoUrl, lastChat, time;
  bool? isOnline, isStatusExits;

  ChatModel({this.lastChat, this.name, this.photoUrl, this.time, this.isOnline, this.isStatusExits});
}

final List<ChatModel> listChats = [
  ChatModel(
      name: "Keazia De Rezia",
      photoUrl: "user_1.png",
      lastChat: "Sent a Photo",
      isStatusExits: false,
      isOnline: true,
      time: "Now"),
  ChatModel(
      name: "Peter Park",
      photoUrl: "user_2.png",
      lastChat: "Oke, sure",
      isOnline: true,
      isStatusExits: true,
      time: "11:2 PM"),
  ChatModel(
      name: "Loila Bae",
      photoUrl: "user_3.png",
      lastChat: "Don't forget group as...",
      isStatusExits: false,
      isOnline: true,
      time: "10:6 PM"),
  ChatModel(
      name: "Ben Markz",
      photoUrl: "user_4.png",
      lastChat: "Check you email!",
      isStatusExits: false,
      isOnline: true,
      time: "9:11 PM"),
  ChatModel(
      name: "Alice March",
      photoUrl: "user_5.png",
      lastChat: "No. Sorry",
      isStatusExits: true,
      isOnline: false,
      time: "Yesterday"),
  ChatModel(
      name: "Josh Geroge",
      photoUrl: "user_6.png",
      lastChat: "Send Sticker",
      isStatusExits: true,
      isOnline: false,
      time: "Yesterday"),
];
