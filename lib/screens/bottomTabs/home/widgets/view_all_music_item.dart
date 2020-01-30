import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';
import 'package:muze/widgets/shimmerEffect.dart';

class ViewAllMusicItem extends StatefulWidget {
  String imageUrl;
  String musicName;
  String artist;

  ViewAllMusicItem({this.imageUrl, this.musicName, this.artist});

  @override
  _ViewAllMusicItemState createState() => _ViewAllMusicItemState();
}

class _ViewAllMusicItemState extends State<ViewAllMusicItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12.5),
      child: Padding(
        padding: EdgeInsets.only(
            top: UISize.width(10),
            bottom: UISize.width(10),
            right: UISize.width(12),
            left: UISize.width(11.9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: UIColors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: CachedNetworkImage(
                imageUrl: widget.imageUrl,
                placeholder: (context, url) => Center(
                    child: ShimmerEffect(
                  height: UISize.width(145),
                  width: UISize.width(145),
                )),
                errorWidget: (context, url, error) => Center(
                    child: ShimmerEffect(
                  height: UISize.width(145),
                  width: UISize.width(145),
                )),
                imageBuilder: (context, imageProvider) => Container(
                  height: MediaQuery.of(context).size.width / 2 -
                      UISize.width(17) -
                      UISize.width(24),
                  width: MediaQuery.of(context).size.width / 2 -
                      UISize.width(17) -
                      UISize.width(24),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(UISize.width(20))),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: UISize.width(20)),
              child: Text(
                widget.musicName,
                style: StyleText.boldMontserrat.copyWith(
                    fontSize: UISize.fontSize(14), color: UIColors.textDark),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: UISize.width(5)),
              child: Text(
                widget.artist,
                style: StyleText.regularMontserrat.copyWith(
                    fontSize: UISize.fontSize(10), color: UIColors.textDark),
              ),
            )
          ],
        ),
      ),
    );
  }
}
