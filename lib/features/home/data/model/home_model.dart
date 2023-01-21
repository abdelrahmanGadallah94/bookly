class HomeModel{
  final String imageUrl;
  final String title;
  final String author;
  final num averageRating;
  final num ratingCount;

  HomeModel({required this.imageUrl, required this.title, required this.author, required this.averageRating, required this.ratingCount});

  factory HomeModel.fromJson(dynamic json){
    var items = json["items"][0]["volumeInfo"];

    return HomeModel(
        imageUrl: items["imageLinks"]["thumbnail"],
        title: items["title"],
        author: items["authors"][0],
        averageRating: items["averageRating"],
        ratingCount: items["ratingsCount"]
    );
  }
}