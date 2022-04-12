part 'art_info.dart';

class GalleryInfo {
  int id;
  String painterImg;
  String name;
  String description;
  List<ArtInfo> arts;

  GalleryInfo({
    required this.id,
    required this.painterImg,
    required this.name,
    required this.description,
    required this.arts,
  });

  factory GalleryInfo.fromJson(Map<String, dynamic> json) {
    final arts = <ArtInfo>[];

    if (json['arts'] != null) {
      json['arts'].forEach((v) {
        arts.add(ArtInfo.fromJson(v));
      });
    }

    return GalleryInfo(
      id: json['id'],
      painterImg: json['painterImg'],
      name: json['name'],
      description: json['description'],
      arts: arts,
    );
  }
}
