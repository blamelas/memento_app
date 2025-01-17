import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memento_app/constants/general_app_constants.dart';


class DashBoardAppBarItem extends StatefulWidget {
  final double width;
  final String text;

  DashBoardAppBarItem(this.width, this.text);

  @override
  _DashBoardAppBarItemState createState() => _DashBoardAppBarItemState();
}

class _DashBoardAppBarItemState extends State<DashBoardAppBarItem> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _value == false ? 1 : 0.5,
      child: Container(
        width: widget.width / 1.2,
        height: 100,
        decoration: BoxDecoration(borderRadius: borderRadius(false)),
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: AutoSizeText(
                    widget.text,
                    maxLines: 3,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.assignment_sharp,
                        size: 30.0,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: GeneralAppColor.softBlack,
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: _value
                                ? Icon(
                                    Icons.check,
                                    size: 20.0,
                                    color: GeneralAppColor.softBlack,
                                  )
                                : Icon(
                                    Icons.check_box_outline_blank,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

BorderRadius borderRadius(bool appBoxBorderStatus) {
  return appBoxBorderStatus == true
      ? BorderRadius.only(bottomLeft: Radius.circular(38))
      : BorderRadius.all(Radius.circular(25));
}
