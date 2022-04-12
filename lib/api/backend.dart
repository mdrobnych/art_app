import 'dart:convert';
import 'package:artapp/models/explore_art.dart';
import 'package:artapp/models/gallery_info.dart';
import 'package:flutter/services.dart';

class GalleryBackend {
  Future<List<GalleryInfo>> getPainters() async {
    await Future.delayed(Duration(milliseconds: 1000));
    final dataString = await _loadAsset('assets/sample_data/gallery.json');

    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['painters'] != null) {
      final painters = <GalleryInfo>[];
      json['painters'].forEach((v) {
        painters.add(GalleryInfo.fromJson(v));
      });
      return painters;
    } else {
      return [];
    }
  }

  Future<List<ExploreArt>> getArts() async {
    await Future.delayed(Duration(milliseconds: 1000));
    final dataString = await _loadAsset('assets/sample_data/art.json');

    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['arts'] != null) {
      final arts = <ExploreArt>[];
      json['arts'].forEach((v) {
        arts.add(ExploreArt.fromJson(v));
      });
      return arts;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
