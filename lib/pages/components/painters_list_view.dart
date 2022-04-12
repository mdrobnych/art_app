import 'package:artapp/models/gallery_info.dart';
import 'package:artapp/pages/components/art_grid_view.dart';
import 'package:artapp/pages/components/painter_tile.dart';
import 'package:flutter/material.dart';

class PaintersListView extends StatefulWidget {
  final List<GalleryInfo> painters;

  const PaintersListView({Key? key, required this.painters}) : super(key: key);

  @override
  State<PaintersListView> createState() => _PaintersListViewState();
}

class _PaintersListViewState extends State<PaintersListView> {
  Widget? body;

  @override
  Widget build(BuildContext context) {
    return body ??
        Container(
          constraints: BoxConstraints.expand(
            height: 450,
            width: 350,
          ),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8),
                BlendMode.darken,
              ),
              image: AssetImage('assets/images/ground_img/burning_giraffe.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.builder(
            itemCount: widget.painters.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    body = ArtGridView(arts: widget.painters[index].arts);
                  });
                },
                child: PainterTile(painter: widget.painters[index]),
              );
            },
          ),
        );
  }
}
