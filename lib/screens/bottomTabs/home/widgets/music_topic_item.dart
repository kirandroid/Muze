import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muze/routes/router.gr.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class MusicTopicItem extends StatefulWidget {
  final int currentIndex;
  final String title;
  final String subtitle;

  MusicTopicItem({this.currentIndex, this.title, this.subtitle});

  @override
  _MusicTopicItemState createState() => _MusicTopicItemState();
}

class _MusicTopicItemState extends State<MusicTopicItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: widget.currentIndex == 0
                ? UISize.width(15)
                : 0), // If it is first item add a left padding
        child: Padding(
          padding: EdgeInsets.only(
              right: UISize.width(15),
              top: UISize.width(30),
              bottom: UISize.width(40)),
          child: Container(
            decoration: BoxDecoration(
                color: UIColors.white,
                boxShadow: [
                  BoxShadow(
                      color: UIColors.inactiveBorderColor,
                      blurRadius: 10.0,
                      offset: Offset(
                        0.0,
                        10.0,
                      ))
                ],
                borderRadius: BorderRadius.circular(15)),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Router.navigator
                      .pushNamed(Router.noUIScreen, arguments: "😣");
                },
                child: Container(
                    alignment: Alignment.center,
                    height: UISize.width(151),
                    width: UISize.width(260),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/blueThing.png")),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15))),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: SvgPicture.asset(
                                "assets/images/group.svg",
                                width: UISize.width(132),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: UISize.width(15), top: UISize.width(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.title,
                                style: StyleText.boldMontserrat.copyWith(
                                    color: UIColors.textDark,
                                    fontSize: UISize.fontSize(14)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: UISize.width(5)),
                                child: Text(
                                  widget.subtitle,
                                  style: StyleText.regularMontserrat.copyWith(
                                      fontSize: UISize.fontSize(10),
                                      color: UIColors.textDark),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}
