import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:package_info/package_info.dart';
import 'package:prokit_flutter/main/utils/AppColors.dart';
import 'package:prokit_flutter/main/utils/AppConstant.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class SettingScreen extends StatefulWidget {
  static String tag = '/SettingScreen';

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  InterstitialAd? interstitialAd;
  BannerAd? myBanner;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    if (isMobile) {
      interstitialAd = InterstitialAd(
        adUnitId: getInterstitialAdUnitId()!,
        request: AdRequest(),
        listener: AdListener(),
      );

      interstitialAd!.load();

      myBanner = BannerAd(
        adUnitId: getBannerAdUnitId()!,
        size: AdSize.banner,
        request: AdRequest(),
        listener: AdListener(onAdLoaded: (ad) {
          setState(() {});
        }),
      );

      myBanner!.load();
    }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() async {
    super.dispose();

    if (interstitialAd != null && (await interstitialAd?.isLoaded())!) {
      interstitialAd?.show();

      interstitialAd?.dispose();
    }
    if (myBanner != null && (await myBanner?.isLoaded())!) {
      myBanner?.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(language!.lblSettings, style: boldTextStyle(size: 22)),
          elevation: 0,
          backgroundColor: appStore.appBarColor,
          leading: BackButton(
            color: appStore.textPrimaryColor,
            onPressed: () {
              finish(context);
            },
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingItemWidget(
                    padding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                    leading: Icon(MaterialCommunityIcons.google_translate, color: appColorPrimary),
                    title: language!.lblLanguage,
                    trailing: LanguageListWidget(
                      widgetType: WidgetType.DROPDOWN,
                      onLanguageChange: (v) {
                        appStore.setLanguage(v.languageCode!, context: context);

                        setState(() {});
                      },
                    ),
                    subTitle: language!.lblSupportLanguage,
                  ),
                  SettingItemWidget(
                    leading: Image.asset('images/app/ic_documentation.png', height: 24, width: 24, color: appColorPrimary),
                    title: language!.lblDocumentation,
                    onTap: () {
                      launch(DocumentationUrl, forceWebView: true, enableJavaScript: true);
                    },
                  ),
                  Divider(height: 0),
                  SettingItemWidget(
                    title: language!.lblChangeLog,
                    onTap: () async {
                      launch(ChangeLogsUrl, forceWebView: true, enableJavaScript: true);
                    },
                    leading: Image.asset('images/app/ic_change_log.png', height: 24, width: 24, color: appColorPrimary),
                  ),
                  Divider(height: 0),
                  SettingItemWidget(
                    title: language!.lblShareApp,
                    onTap: () async {
                      PackageInfo.fromPlatform().then((value) async {
                        String package = value.packageName;
                        await Share.share('Download $mainAppName from Play Store\n\n\n$PlayStoreUrl$package');
                      });
                    },
                    leading: Image.asset('images/app/ic_share.png', height: 24, width: 24, color: appColorPrimary),
                  ),
                  Divider(height: 0),
                  SettingItemWidget(
                    title: language!.lblRateUs,
                    onTap: () {
                      PackageInfo.fromPlatform().then((value) async {
                        String package = value.packageName;
                        launch('$PlayStoreUrl$package');
                      });
                    },
                    leading: Image.asset('images/app/ic_rate_app.png', height: 24, width: 24, color: appColorPrimary),
                  ),
                  Divider(height: 0),
                  SettingItemWidget(
                    title: language!.lblDarkMode,
                    onTap: () {
                      appStore.toggleDarkMode();
                    },
                    leading: Image.asset('images/app/ic_theme.png', height: 24, width: 24, color: appColorPrimary),
                    trailing: Switch(
                      value: appStore.isDarkModeOn,
                      onChanged: (s) {
                        appStore.toggleDarkMode(value: s);
                      },
                    ).withHeight(24),
                  ),
                  Divider(height: 0),
                ],
              ),
            ),
            if (myBanner != null)
              Positioned(
                child: AdWidget(ad: myBanner!),
                bottom: 0,
                height: myBanner!.size.height.toDouble(),
                width: myBanner!.size.width.toDouble(),
              )
          ],
        ),
      ),
    );
  }
}
