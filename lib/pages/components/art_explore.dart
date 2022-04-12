import 'dart:math';

import 'package:artapp/models/explore_art.dart';
import 'package:artapp/theme.dart';
import 'package:flutter/material.dart';

class ArtExplore extends StatelessWidget {
  final List<ExploreArt> arts;

  const ArtExplore({Key? key, required this.arts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final art = arts[Random().nextInt(arts.length)];
    return Container(
      //copy from Container
      constraints: BoxConstraints.expand(
        width: 350,
        height: 450,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Text(
            'Explore Art',
            style: ArtappTheme.darkTextTheme.bodyText1,
          ),
          Positioned(
            child: Text(
              'The Art Gallery',
              style: ArtappTheme.darkTextTheme.headline1,
            ),
            top: 20,
          ),
          Positioned(
            child: Text(
              art.quote,
              maxLines: 2,
              textAlign: TextAlign.right,
              style: ArtappTheme.darkTextTheme.bodyText1,
            ),
            bottom: 30,
            left: 8,
            right: 0,
          ),
          Positioned(
            child: Text(
              '- ${art.author}',
              style: ArtappTheme.darkTextTheme.bodyText1,
            ),
            bottom: 10,
            right: 0,
          ),
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(art.artImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
