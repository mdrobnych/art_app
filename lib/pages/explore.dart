import 'package:artapp/api/backend.dart';
import 'package:artapp/models/explore_art.dart';
import 'package:artapp/pages/components/art_explore.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class Explore extends StatelessWidget {
  final exploreArt = GalleryBackend();
  Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreArt.getArts(),
      builder: (context, AsyncSnapshot<List<ExploreArt>> snapshot) {
        if (snapshot.error != null) return Text(snapshot.error.toString());
        if (snapshot.connectionState == ConnectionState.done) {
          return ArtExplore(arts: snapshot.data ?? []);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
