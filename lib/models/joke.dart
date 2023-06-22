class JokeModel {
  final String id;
  final String content;
  final List vote;
  JokeModel({required this.id, required this.content, required this.vote});
  factory JokeModel.fromDocument(Map<String, dynamic> doc) {
    return JokeModel(
      id: doc['id'],
      content: doc['ageLimit'],
      vote: doc['name'],
    );
  }
}
