import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/coinPro/components/CPLineChartScreen.dart';
import 'package:prokit_flutter/fullApps/coinPro/screen/CPWithDrawScreen.dart';
import 'package:prokit_flutter/fullApps/coinPro/utils/CPColors.dart';
import 'package:prokit_flutter/fullApps/coinPro/utils/CPImages.dart';

import '../../../main.dart';

class CPStatisticScreen extends StatefulWidget {
  @override
  CPStatisticScreenState createState() => CPStatisticScreenState();
}

class CPStatisticScreenState extends State<CPStatisticScreen> {
  bool aboutTxt = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {},
                  color: CPLineCChart.withOpacity(0.1),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    "Sell",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal),
                  ),
                  textColor: CPPrimaryColor,
                  height: 40,
                  minWidth: 140,
                ),
              ),
            ),
            SizedBox(height: 16, width: 16),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CPWithDrawScreen()));
                  },
                  color: Color(0xff2972ff),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text("Buy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal)),
                  textColor: Color(0xffffffff),
                  height: 40,
                  minWidth: 140,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color(0x00000000), width: 1),
        ),
        title: Text("Statistic", style: boldTextStyle(size: 18)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: appStore.isDarkModeOn ? white : black),
          iconSize: 18,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bar_chart_rounded, color: appStore.isDarkModeOn ? white : black),
            iconSize: 22,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: CPSecondaryColor),
                    child: Image.asset(cp_binance, fit: BoxFit.cover),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Binance",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Color(0xff959494),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "\$528.373",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 65,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color(0x1c969696),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Color(0x4dfffcfc), width: 1),
                    ),
                    child: Align(
                      alignment: Alignment(-0.1, 0.0),
                      child: Text(
                        "+1.82%",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: CPPlusCoinPer,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CPLineChartScreen(),
              SizedBox(height: 16),
              Text(
                "About",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: boldTextStyle(),
              ),
              SizedBox(height: 16),
              Text(
                "Binance coin is a digital currency that was created in 2017. It follows the idea set out  in the whitepaper by the mysterious and read more...",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: secondaryTextStyle(),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("My coin", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                  Text("0.095203", textAlign: TextAlign.start, overflow: TextOverflow.clip, style: boldTextStyle()),
                ],
              ),
              SizedBox(height: 16, width: 16),
            ],
          ),
        ),
      ),
    );
  }
}
