class ExploreArt {
  String artImage;
  String author;
  String quote;

  ExploreArt({
    required this.artImage,
    required this.author,
    required this.quote,
  });

  factory ExploreArt.fromJson(Map<String, dynamic> json) {
    return ExploreArt(
      artImage: json['artImage'],
      author: json['author'],
      quote: json['quote'],
    );
  }
}
