import 'package:artapp/api/backend.dart';
import 'package:artapp/models/gallery_info.dart';
import 'package:artapp/pages/components/painters_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  final exploreGallery = GalleryBackend();

  Gallery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreGallery.getPainters(),
      builder: (BuildContext context, AsyncSnapshot<List<GalleryInfo>> snapshot) {
        if (snapshot.error != null) return Text(snapshot.error.toString());
        if (snapshot.connectionState == ConnectionState.done) {
          return PaintersListView(painters: snapshot.data ?? []);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
    // return Container(
    //   constraints: BoxConstraints.expand(
    //     height: 450,
    //     width: 350,
    //   ),
    //   padding: const EdgeInsets.all(8.0),
    //   decoration: BoxDecoration(
    //     image: const DecorationImage(
    //       image: AssetImage('assets/images/ground_img/burning_giraffe.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    // );
  }
}
