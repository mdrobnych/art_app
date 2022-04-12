import 'package:artapp/models/gallery_info.dart';
import 'package:artapp/theme.dart';
import 'package:flutter/material.dart';

class ArtPreview extends StatelessWidget {
  final ArtInfo art;

  const ArtPreview({Key? key, required this.art}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              child: Image.asset(
                '${art.artImg}',
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(height: 2),
          Text(
            art.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: ArtappTheme.darkTextTheme.bodyText1,
          ),
          Text(
            art.year,
            textAlign: TextAlign.center,
            style: ArtappTheme.darkTextTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
