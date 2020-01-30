import 'package:flutter/material.dart';
import 'package:muze/screens/bottomTabs/home/widgets/music_item.dart';
import 'package:muze/screens/bottomTabs/home/widgets/music_topic_item.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/local_data.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          brightness: Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: UISize.width(20),
                  top: UISize.width(20),
                  bottom: UISize.width(30)),
              child: Text(
                "Hot Releases",
                style: StyleText.boldMontserrat.copyWith(
                    color: UIColors.dark, fontSize: UISize.fontSize(20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UISize.width(15)),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: StyleText.mediumMontserrat.copyWith(
                    fontSize: UISize.fontSize(13), color: UIColors.textDark),
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                        top: UISize.width(13),
                        bottom: UISize.width(13),
                        left: UISize.width(15)),
                    hintText: "Search",
                    hintStyle: StyleText.mediumMontserrat.copyWith(
                        fontSize: UISize.fontSize(13),
                        color: UIColors.textDark),
                    // suffixIcon: InkWell(
                    //   onTap: () {},
                    //   child: SizedBox(
                    //     child: Center(
                    //         widthFactor: 0.0,
                    //         child: Icon(
                    //           MuzeIcons.discover,
                    //           size: 10,
                    //         )),
                    //   ),
                    // ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: UISize.width(221),
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MusicTopicItem(
                      currentIndex: index,
                    );
                  }),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: musicList
                    .asMap()
                    .map((i, item) => MapEntry(
                        i,
                        Padding(
                          padding: EdgeInsets.only(
                              top: i == 0 ? 0 : UISize.width(40),
                              bottom: i + 1 == musicList.length
                                  ? UISize.width(80)
                                  : 0), //If it is last item, add a large bottom padding
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: UISize.width(15)),
                                    child: Text(item["title"].toUpperCase(),
                                        style: StyleText.mediumMontserrat
                                            .copyWith(
                                                color: UIColors.mediumGrey,
                                                fontSize: UISize.fontSize(12),
                                                letterSpacing: 2)),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: UISize.width(15),
                                          vertical: UISize.width(7.5)),
                                      child: Text("VIEW ALL",
                                          style: StyleText.semiBoldMontserrat
                                              .copyWith(
                                                  color: UIColors.primaryColor,
                                                  fontSize:
                                                      UISize.fontSize(12))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: UISize.width(138),
                                child: ListView.builder(
                                    itemCount: item["music"].length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      var music = item["music"][index];
                                      return MusicItem(
                                        currentIndex: index,
                                        imageUrl: music["image"],
                                        musicName: music["name"],
                                      );
                                    }),
                              )
                            ],
                          ),
                        )))
                    .values
                    .toList())
          ],
        ),
      ),
    );
  }
}
