import 'package:flutter/material.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List musicList = [
    {
      "title": "Recently Played",
      "music": [
        {
          "name": "The Music",
          "image":
              "https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Themusic.themusic.albumcover.jpg/220px-Themusic.themusic.albumcover.jpg"
        },
        {
          "name": "David Garret",
          "image":
              "https://i.pinimg.com/originals/3a/f0/e5/3af0e55ea66ea69e35145fb108b4a636.jpg"
        },
        {
          "name": "David Guetta",
          "image":
              "https://images.theconversation.com/files/258026/original/file-20190208-174861-nms2kt.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"
        },
        {
          "name": "Surprisingly Aware",
          "image":
              "https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/attachment_68585523.jpg?auto=format&q=60&fit=max&w=930"
        },
      ]
    },
    {
      "title": "Hot Right Now",
      "music": [
        {
          "name": "Alpha",
          "image":
              "https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/09/attachment_67353774.png?auto=format&q=60&fit=max&w=930"
        },
        {
          "name": "Saudade",
          "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAwNnm4WmjzPFwhWLMXgQlT_bmhOpHgov2TSgqvwB3IGW-TDhN&s"
        },
        {
          "name": "Michael Torres",
          "image":
              "https://i.pinimg.com/originals/e8/bb/10/e8bb108d1aab76692f6db2af816b8dec.jpg"
        },
        {
          "name": "James Cole",
          "image":
              "https://img1-placeit-net.s3-accelerate.amazonaws.com/uploads/stage/stage_image/21041/large_thumb_473-Techo-CD-Album-Cover.jpg"
        },
      ]
    },
    {
      "title": "Recently Played",
      "music": [
        {
          "name": "The Music",
          "image":
              "https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Themusic.themusic.albumcover.jpg/220px-Themusic.themusic.albumcover.jpg"
        },
        {
          "name": "David Garret",
          "image":
              "https://i.pinimg.com/originals/3a/f0/e5/3af0e55ea66ea69e35145fb108b4a636.jpg"
        },
        {
          "name": "David Guetta",
          "image":
              "https://images.theconversation.com/files/258026/original/file-20190208-174861-nms2kt.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"
        },
        {
          "name": "Surprisingly Aware",
          "image":
              "https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/12/attachment_68585523.jpg?auto=format&q=60&fit=max&w=930"
        },
      ]
    },
  ];

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
                    return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0
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
                                onTap: () {},
                                child: Container(
                                    alignment: Alignment.center,
                                    height: UISize.width(151),
                                    width: UISize.width(260),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    15))),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: Image.asset(
                                                  "assets/images/group.png"),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: UISize.width(15),
                                              top: UISize.width(15)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "What's Trending",
                                                style: StyleText.boldMontserrat
                                                    .copyWith(
                                                        color:
                                                            UIColors.textDark,
                                                        fontSize:
                                                            UISize.fontSize(
                                                                14)),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: UISize.width(5)),
                                                child: Text(
                                                  "Trending in the week",
                                                  style: StyleText
                                                      .regularMontserrat
                                                      .copyWith(
                                                          fontSize:
                                                              UISize.fontSize(
                                                                  10),
                                                          color: UIColors
                                                              .textDark),
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
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: UISize.width(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(item["title"].toUpperCase(),
                                        style: StyleText.mediumMontserrat
                                            .copyWith(
                                                color: UIColors.mediumGrey,
                                                fontSize: UISize.fontSize(12),
                                                letterSpacing: 2)),
                                    Text("VIEW ALL",
                                        style: StyleText.semiBoldMontserrat
                                            .copyWith(
                                                color: UIColors.primaryColor,
                                                fontSize: UISize.fontSize(12))),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: UISize.width(138),
                                child: ListView.builder(
                                    itemCount: item["music"].length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      var music = item["music"][index];
                                      return Padding(
                                          padding: EdgeInsets.only(
                                              left: index == 0
                                                  ? UISize.width(15)
                                                  : 0), // If it is first item add a left padding
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              right: UISize.width(15),
                                              top: UISize.width(15),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: UIColors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.5)),
                                                  child: Material(
                                                    type: MaterialType
                                                        .transparency,
                                                    child: InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      onTap: () {},
                                                      child: Container(
                                                        height:
                                                            UISize.width(100),
                                                        width:
                                                            UISize.width(100),
                                                        decoration:
                                                            BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.5),
                                                                image:
                                                                    DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image:
                                                                            NetworkImage(
                                                                          music[
                                                                              "image"],
                                                                        ))),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: UISize.width(10)),
                                                  child: Text(
                                                    music["name"],
                                                    style: StyleText
                                                        .semiBoldMontserrat
                                                        .copyWith(
                                                            fontSize:
                                                                UISize.fontSize(
                                                                    10),
                                                            color: UIColors
                                                                .textDark),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ));
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
