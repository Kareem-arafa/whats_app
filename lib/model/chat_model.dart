class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Kareem arafa",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      avatarUrl:
          "http://placeimg.com/640/480/people"),
  new ChatModel(
      name: "Harry potter",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      avatarUrl:
      "http://placeimg.com/640/480/people"),
  new ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      avatarUrl:
      "http://placeimg.com/640/480/people"),
  new ChatModel(
      name: "Riham",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
      "http://placeimg.com/640/480/people"),
  new ChatModel(
      name: "Messi",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl:
      "http://placeimg.com/640/480/people"),
  new ChatModel(
      name: "M.Salah",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      avatarUrl:
      "http://placeimg.com/640/480/people"),
];
