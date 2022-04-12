part of 'gallery_info.dart';

class ArtInfo {
  String artImg;
  String title;
  String year;
  String location;
  String owner;

  ArtInfo({
    required this.artImg,
    required this.title,
    required this.year,
    required this.location,
    required this.owner,
  });

  factory ArtInfo.fromJson(Map<String, dynamic> json) {
    return ArtInfo(
      artImg: json['artImg'],
      title: json['title'],
      year: json['year'],
      location: json['location'],
      owner: json['owner'],
    );
  }
}
