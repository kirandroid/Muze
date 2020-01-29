import 'package:flutter/material.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class SelectionWidget extends StatefulWidget {
  final String widgetTitle;
  final List<String> itemList;
  VoidCallback onPressed;
  SelectionWidget({this.widgetTitle, this.itemList, this.onPressed});

  @override
  _SelectionWidgetState createState() => _SelectionWidgetState();
}

class _SelectionWidgetState extends State<SelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UISize.width(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: UISize.width(30)),
            child: Text(widget.widgetTitle,
                style: StyleText.mediumMontserrat.copyWith(
                    color: UIColors.mediumGrey,
                    fontSize: UISize.fontSize(12),
                    letterSpacing: 2)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: UISize.width(10)),
            child: SizedBox(
              height: UISize.width(100),
              child: ListView.builder(
                  itemCount: widget.itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = widget.itemList[index];
                    if (index == 0) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: UISize.width(30), right: UISize.width(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: UIColors.lightGrey, width: 1)),
                          child: Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: widget.onPressed,
                              child: Container(
                                alignment: Alignment.center,
                                height: UISize.width(100),
                                width: UISize.width(100),
                                child: Text(
                                  item,
                                  style: StyleText.semiBoldMontserrat.copyWith(
                                      fontSize: UISize.fontSize(12),
                                      color: UIColors.textDark),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else
                      return Padding(
                        padding: EdgeInsets.only(right: UISize.width(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: UIColors.lightGrey, width: 1)),
                          child: Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              // onTap: widget.onPressed,
                              child: Container(
                                alignment: Alignment.center,
                                height: UISize.width(100),
                                width: UISize.width(100),
                                child: Text(
                                  item,
                                  style: StyleText.semiBoldMontserrat.copyWith(
                                      fontSize: UISize.fontSize(12),
                                      color: UIColors.textDark),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
