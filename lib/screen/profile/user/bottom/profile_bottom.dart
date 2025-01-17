import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:memento_app/constants/general_app_constants.dart';
import 'package:memento_app/screen/profile/caretaker/caretaker_screen.dart';

class ProfileBottom extends StatelessWidget {
  final double width;
  final double height;

  ProfileBottom(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(
            builder: (BuildContext context) => CaretakerScreen()));
      },
      child: Container(
        width: width,
        height: height * .15,
        decoration:
            configBoxDecoration(color: GeneralAppColor.bottomProfileColor2),
        child: Padding(
          padding: const EdgeInsets.only(left: 36.0),
          child: Column(
            children: [
              SizedBox(height: height * .026),
              buildTitle('Cuidador'),
              buildTitleContent(
                  Icon(
                    FontAwesomeIcons.userNurse,
                  ),
                  'Luis Miguel',
                  bigger: false)
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration configBoxDecoration({Color color}) {
    return BoxDecoration(color: color);
  }

  Widget buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title,
            style: const TextStyle(
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 16.0),
            textAlign: TextAlign.left),
      ),
    );
  }

  Widget buildTitleContent(Icon icon, String text, {bool bigger = false}) {
    var boxWidth = (width * .6);
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: bigger == true ? boxWidth : (width * .44),
        height: 41,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(21)),
            color: const Color(0xffffffff)),
        child: Row(
          children: [
            Container(
              width: boxWidth * .2,
              height: 41,
              child: icon,
              color: Colors.transparent,
            ),
            Container(
              width: bigger == true ? boxWidth * .8 : boxWidth * .5,
              height: 41,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(text,
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left),
              ),
            )
          ],
        ),
      ),
    );
  }
}
