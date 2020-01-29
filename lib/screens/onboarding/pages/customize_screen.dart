import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muze/screens/onboarding/widgets/option.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class CustomizeScreen extends StatefulWidget {
  @override
  _CustomizeScreenState createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  List titles = [
    {
      "title": "LANGUAGE",
      "options": ["Hindi", "Tamil", "English", "Nepali"]
    },
    {
      "title": "COMPOSERS",
      "options": ["ALL", "A.R.R", "KSDDFKJS", "CNSDJ"]
    },
    {
      "title": "SINGERS",
      "options": ["ALL", "Shankar", "Sid Sriram", "KKIIRR"]
    },
    {
      "title": "YEARS",
      "options": ["80s", "1990s", "2000s", "2020s"]
    },
  ];

  int selectedChildOption = 0;
  int selectedParentOption = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 828, height: 1792, allowFontScaling: true)
          ..init(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: UISize.width(30.0),
                right: UISize.width(30.0),
                top: MediaQuery.of(context).padding.top + UISize.width(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text("Customise your Experience",
                        style: StyleText.boldMontserrat),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Column(
                children: titles
                    .asMap()
                    .map((i, item) => MapEntry(
                        i,
                        Padding(
                          padding: EdgeInsets.only(
                              top: UISize.width(40),
                              bottom: i + 1 == titles.length
                                  ? UISize.width(60)
                                  : 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.only(left: UISize.width(30)),
                                child: Text(item["title"],
                                    style: StyleText.mediumMontserrat.copyWith(
                                        color: UIColors.mediumGrey,
                                        fontSize: UISize.fontSize(12),
                                        letterSpacing: 2)),
                              ),
                              SizedBox(
                                height: UISize.width(130),
                                child: ListView.builder(
                                    itemCount: item["options"].length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      var option = item["options"][index];
                                      if (index == 0) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              left: UISize.width(30)),
                                          child: Option(
                                            optionName: option,
                                            onPressed: () {
                                              setState(() {
                                                selectedParentOption = i;
                                                selectedChildOption = index;
                                              });
                                            },
                                            value: selectedChildOption ==
                                                        index &&
                                                    selectedParentOption == i
                                                ? true
                                                : false,
                                            parentIndex:
                                                i >= UIColors.gradient.length
                                                    ? 0
                                                    : i,
                                          ),
                                        );
                                      } else {
                                        return Option(
                                          optionName: option,
                                          onPressed: () {
                                            setState(() {
                                              selectedParentOption = i;
                                              selectedChildOption = index;
                                            });
                                            print(
                                                "Clicked Parent Index $i of Children Index $index");
                                            print(
                                                "Gradient length = ${UIColors.gradient.length}");
                                          },
                                          value: selectedChildOption == index &&
                                                  selectedParentOption == i
                                              ? true
                                              : false,
                                          parentIndex:
                                              i >= UIColors.gradient.length
                                                  ? 0
                                                  : i,
                                        );
                                      }
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: UIColors.white,
        onPressed: () {},
        label: Text(
          "SKIP THIS STEP",
          style: StyleText.semiBoldMontserrat.copyWith(
              color: UIColors.textDark, fontSize: UISize.fontSize(12)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
