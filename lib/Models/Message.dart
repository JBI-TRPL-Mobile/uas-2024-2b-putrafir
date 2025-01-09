class Message {
  final String name;
  final String message;

  Message({required this.name, required this.message});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      name: json['name'],
      message: json['message'],
    );
  }
}
