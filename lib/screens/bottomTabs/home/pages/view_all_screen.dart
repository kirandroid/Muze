import 'package:flutter/material.dart';
import 'package:muze/routes/router.gr.dart';
import 'package:muze/screens/bottomTabs/home/widgets/view_all_music_item.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class ViewAllScreen extends StatelessWidget {
  final String title;
  final List musicList;

  ViewAllScreen({this.title, this.musicList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.secondaryColor,
        appBar: AppBar(
          backgroundColor: UIColors.secondaryColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          brightness: Brightness.light,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Router.navigator.pop();
            },
          ),
          title: Text(
            title,
            style: StyleText.boldMontserrat
                .copyWith(fontSize: UISize.fontSize(20), color: UIColors.dark),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: UISize.width(17)),
          child: Wrap(
              direction: Axis.horizontal,
              children: musicList
                  .asMap()
                  .map((index, music) => MapEntry(
                      index,
                      ViewAllMusicItem(
                        imageUrl: music["image"],
                        musicName: music["name"],
                        artist: music["artist"],
                        id: music["id"],
                      )))
                  .values
                  .toList()),
        )));
  }
}
