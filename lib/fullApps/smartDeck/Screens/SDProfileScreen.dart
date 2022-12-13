import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/integrations/screens/StickyHeader/stickyHeaderHomePage.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:prokit_flutter/fullApps/smartDeck/SDUtils/SDColors.dart';
import 'package:prokit_flutter/fullApps/smartDeck/Screens/SDSettingScreen.dart';

import 'SDEditProfileScreen.dart';

// ignore: camel_case_types
class sdPRofileScreen extends StatefulWidget {
  @override
  _sdPRofileScreenState createState() => _sdPRofileScreenState();
}

// ignore: camel_case_types
class _sdPRofileScreenState extends State<sdPRofileScreen> {

  _generateData() {
    var taskData = [
      Task(task: 'Completed', value: 82.0, color: Colors.blue),
      Task(task: 'On going', value: 22.0, color: Colors.deepOrangeAccent),
    ];

  }

  @override
  void initState() {
    _generateData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(sdPrimaryColor);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 320,
              width: size.width,
              padding: EdgeInsets.only(top: 25, right: 10),
              color: sdPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        SDSettingScreen().launch(context);
                      },
                      child: Icon(Icons.settings, color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: FadeInImage(
                        fit: BoxFit.cover,
                        placeholder: AssetImage('Loading'),
                        image: Image.network('https://i.insider.com/5de6dd81fd9db241b00c04d3?width=1100&format=jpeg&auto=webp', height: 35, width: 10).image,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text('Mark Paul', style: boldTextStyle(color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Senior High School - 12th Grade',
                      style: secondaryTextStyle(size: 12, color: Colors.white.withOpacity(0.7)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      SDEditProfileScreen().launch(context);
                    },
                    child: FittedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                        decoration: boxDecorations(radius: 4),
                        child: Center(
                          child: Text('Edit Profile', style: boldTextStyle(size: 12, color: sdPrimaryColor)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 320.00 - 50),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Highest Score', style: boldTextStyle(color: Colors.black, size: 14)),
                          SizedBox(height: 10),
                          Text(
                            '98',
                            style: boldTextStyle(color: Colors.green.withOpacity(0.8), size: 26),
                          ),
                          SizedBox(height: 10),
                          Text('Chemist', style: secondaryTextStyle(color: Colors.grey.withOpacity(0.7), size: 14)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 320.00 - 50),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lowest Score', style: boldTextStyle(color: Colors.black, size: 14)),
                          SizedBox(height: 10),
                          Text(
                            '67',
                            style: boldTextStyle(color: sdSecondaryColorYellow.withOpacity(0.7), size: 26),
                          ),
                          SizedBox(height: 10),
                          Text('Maths', style: secondaryTextStyle(color: Colors.grey.withOpacity(0.7), size: 14)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class Task {
  String? task;
  double? value;
  Color? color;

  Task({this.task, this.value, this.color});
}
