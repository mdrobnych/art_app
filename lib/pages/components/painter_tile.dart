import 'package:artapp/models/gallery_info.dart';
import 'package:artapp/pages/components/circle_image.dart';
import 'package:artapp/theme.dart';
import 'package:flutter/material.dart';

class PainterTile extends StatefulWidget {
  final GalleryInfo painter;

  const PainterTile({Key? key, required this.painter}) : super(key: key);

  @override
  State<PainterTile> createState() => _PainterTileState();
}

class _PainterTileState extends State<PainterTile> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleImage(
          imageProvider: AssetImage('${widget.painter.painterImg}'),
          imageRadius: 20,
        ),
        title: Text(
          widget.painter.name,
          style: ArtappTheme.darkTextTheme.bodyText1,
        ),
        subtitle: Text(widget.painter.description),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              _isFavorite = !_isFavorite;
            });
          },
          icon: Icon(_isFavorite ? Icons.star : Icons.star_border),
          color: Colors.yellow,
        ),
      ),
    );
  }
}
