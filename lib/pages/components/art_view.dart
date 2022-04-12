import 'package:artapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:artapp/models/gallery_info.dart';

class ArtView extends StatelessWidget {
  final ArtInfo artInfo;

  const ArtView({Key? key, required this.artInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          artInfo.title,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: ListView(
        children: [
          Container(
            constraints: BoxConstraints.expand(
              width: 350,
              height: 250,
            ),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(artInfo.artImg),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              artInfo.title,
              style: ArtappTheme.darkTextTheme.headline2,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.linear_scale_rounded),
            title: Text(
              'Year',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(artInfo.year),
          ),
          ListTile(
            leading: const Icon(Icons.place),
            title: Text(
              'Location',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(artInfo.location),
          ),
          ListTile(
            leading: const Icon(Icons.attribution_rounded),
            title: Text(
              'Owner',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(artInfo.owner),
          ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Container(
      //       constraints: BoxConstraints.expand(
      //         width: 350,
      //         height: 250,
      //       ),
      //       padding: const EdgeInsets.all(8.0),
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage(artInfo.artImg),
      //           fit: BoxFit.cover,
      //         ),
      //         borderRadius: BorderRadius.all(Radius.circular(10)),
      //       ),
      //     ),
      //     Text(
      //       artInfo.title,
      //       style: TextStyle(fontSize: 22),
      //     ),
      //   ],
      // ),
    );
  }
}
