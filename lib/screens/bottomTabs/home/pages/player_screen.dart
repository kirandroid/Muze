import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:muze/routes/router.gr.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';
import 'package:muze/widgets/shimmerEffect.dart';
import 'dart:ui' as ui;

class PlayerScreen extends StatefulWidget {
  final String imageUrl;
  final String musicName;
  final String artist;
  final int id;

  PlayerScreen({this.imageUrl, this.musicName, this.artist, this.id});

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.white,
      appBar: AppBar(
        backgroundColor: UIColors.white,
        automaticallyImplyLeading: false,
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {
              Router.navigator.pop();
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: -50,
                        right: 0,
                        left: 0,
                        child: Container(
                          child: SvgPicture.asset(
                            widget.id.isEven
                                ? "assets/images/greenOval.svg"
                                : "assets/images/Oval.svg",
                            fit: BoxFit.cover,
                            key: Key(widget.id.toString()),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: UISize.width(30),
                            vertical: UISize.width(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: UIColors.inactiveBorderColor,
                                    blurRadius: 10.0,
                                    offset: Offset(
                                      0.0,
                                      10.0,
                                    ))
                              ],
                              color: UIColors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Hero(
                            tag: widget.id,
                            child: CachedNetworkImage(
                              imageUrl: widget.imageUrl,
                              placeholder: (context, url) => Center(
                                  child: ShimmerEffect(
                                height: UISize.width(100),
                                width: UISize.width(100),
                              )),
                              errorWidget: (context, url, error) => Center(
                                  child: ShimmerEffect(
                                height: UISize.width(100),
                                width: UISize.width(100),
                              )),
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                height: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(UISize.width(15))),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: UISize.width(15)),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.musicName,
                          style: StyleText.boldMontserrat.copyWith(
                              fontSize: UISize.width(20), color: UIColors.dark),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: UISize.width(15)),
                          child: Text(
                            widget.artist,
                            style: StyleText.mediumMontserrat.copyWith(
                                fontSize: UISize.width(14),
                                color: UIColors.mediumGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: UISize.width(40)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "01:10",
                        style: StyleText.regularMontserrat.copyWith(
                            fontSize: UISize.fontSize(13),
                            color: UIColors.textGrey),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 2,
                      child: LinearProgressIndicator(
                        value: 0.3,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            UIColors.primaryColor),
                        backgroundColor: UIColors.grey.withOpacity(0.4),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "-04:10",
                        style: StyleText.regularMontserrat.copyWith(
                            fontSize: UISize.fontSize(13),
                            color: UIColors.textGrey),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.fast_rewind,
                            size: UISize.width(24),
                            color: UIColors.mediumGrey.withOpacity(0.2),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                            alignment: Alignment.bottomCenter,
                            child: IconButton(
                              onPressed: () {},
                              icon: ShaderMask(
                                  blendMode: BlendMode.srcIn,
                                  shaderCallback: (Rect bounds) {
                                    return ui.Gradient.linear(
                                      Offset(10.0, 28.0),
                                      Offset(28.0, 10.0),
                                      [
                                        UIColors.gradient[0]["gradient1"],
                                        UIColors.gradient[0]["gradient2"]
                                      ],
                                    );
                                  },
                                  child: Icon(
                                    Icons.pause,
                                    size: 36,
                                  )),
                            ))),
                    Flexible(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.fast_forward,
                              size: UISize.width(24),
                            ),
                            color: UIColors.mediumGrey.withOpacity(0.2),
                            onPressed: () {},
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
