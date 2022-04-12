import 'package:artapp/models/gallery_info.dart';
import 'package:artapp/pages/components/art_preview.dart';
import 'package:artapp/pages/components/art_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArtGridView extends StatelessWidget {
  final List<ArtInfo> arts;

  ArtGridView({Key? key, required this.arts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: arts.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ArtView(artInfo: arts[index]);
                  }),
                );
              },
              child: ArtPreview(art: arts[index]),
            );
          }),
    );
  }
}
