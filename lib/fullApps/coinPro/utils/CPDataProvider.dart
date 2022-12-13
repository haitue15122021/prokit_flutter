import 'package:flutter/material.dart';
import 'package:prokit_flutter/fullApps/coinPro/model/CPModel.dart';
import 'package:prokit_flutter/fullApps/coinPro/utils/CPColors.dart';
import 'package:prokit_flutter/fullApps/coinPro/utils/CPImages.dart';

List<CPDataModel> getCPCardDataModel() {
  List<CPDataModel> cardList = [];
  cardList.add(CPDataModel(cardName: "Identity Card"));
  cardList.add(CPDataModel(cardName: "Driver License"));
  cardList.add(CPDataModel(cardName: "Passport"));

  return cardList;
}

List<CPDataModel> getCPWithDrawDataModel() {
  List<CPDataModel> withDrawList = [];
  withDrawList.add(CPDataModel(cardName: "1. Please fill in the filed how much is the amount to the withdrawn"));
  withDrawList.add(CPDataModel(cardName: "2. select the account that will be the withdrawal target"));
  withDrawList.add(CPDataModel(cardName: "3. Click continue"));
  withDrawList.add(CPDataModel(cardName: "4. Check the information. if already correct, process and your transaction completed."));

  return withDrawList;
}

List<CPDataModel> getMyWalletDataModel() {
  List<CPDataModel> myWalletList = [];
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_dollar, currencyName: "US Dollar", currencyUnit: "USD", totalAmount: "\$98.565", cardName: "BNB 0.447515"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_binance, currencyName: "Binance Coin", currencyUnit: "BNB/USD", totalAmount: "\$45.589", cardName: "ETH 0.87945"));
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_ethereum, currencyName: "Ethereum", currencyUnit: "ETH/USD", totalAmount: "\$60.235", cardName: "BNB 0.16622"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_uniSwap, currencyName: "Uniswap", currencyUnit: "UNI/USD", totalAmount: "\$40.789", cardName: "UNI 0.748921"));
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_dollar, currencyName: "US Dollar", currencyUnit: "USD", totalAmount: "\$98.565", cardName: "BNB 0.447515"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_binance, currencyName: "Binance Coin", currencyUnit: "BNB/USD", totalAmount: "\$45.589", cardName: "ETH 0.87945"));
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_ethereum, currencyName: "Ethereum", currencyUnit: "ETH/USD", totalAmount: "\$60.235", cardName: "BNB 0.16622"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_uniSwap, currencyName: "Uniswap", currencyUnit: "UNI/USD", totalAmount: "\$40.789", cardName: "UNI 0.748921"));

  return myWalletList;
}

List<CPDataModel> getNotificationDataModel() {
  List<CPDataModel> notificationList = [];
  notificationList.add(
    CPDataModel(
      // like: true,
      bgColor: CPSecondaryColor,
      image: cp_bitcoin,
      currencyName: "Bitcoin is moving up, interested in Investing? Open Coinpro now!",
      currencyUnit: "10:50 AM",
    ),
  );
  notificationList.add(
    CPDataModel(
      // like: true,
      bgColor: CPPrimaryColor.withOpacity(0.8),
      image: cp_deposit,
      currencyName: "Money deposit has been successful. Let's invest more.",
      currencyUnit: "12:35 PM",
    ),
  );
  notificationList.add(
    CPDataModel(
      // like: false,
      bgColor: CPPrimaryColor,
      image: cp_buyCoin,
      currencyName: "The Graph price is down, buy more coin now!",
      currencyUnit: "09:56 AM",
    ),
  );

  return notificationList;
}

List<CPDataModel> getTodayDateDataModel() {
  List<CPDataModel> todayDateList = [];
  todayDateList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_bitcoin, currencyName: "Bitcoin is moving up, interested in Investing? Open Coinpro now!", currencyUnit: "10:50 AM"));
  todayDateList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_deposit, currencyName: "Money deposit has been successful. Let's invest more.", currencyUnit: "12:35 PM"));

  return todayDateList;
}

List<CPDataModel> getTradeCryptoDataModel() {
  List<CPDataModel> tradeCryptoDateList = [];
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "Name"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "24h"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "My portfolio"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "Market Value"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "Name"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "24h"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "My portfolio"));
  tradeCryptoDateList.add(CPDataModel(currencyUnit: "Market Value"));

  return tradeCryptoDateList;
}

List<CPDataModel> getTradeCryptoNameDataModel() {
  List<CPDataModel> tradeCryptoNameList = [];
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPPrimaryColor, image: cp_dollar, currencyName: "US Dollar", currencyUnit: "USD", totalAmount: "\$98.565", cardName: "+1.82%", textColor: CPPlusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPSecondaryColor, image: cp_binance, currencyName: "Binance Coin", currencyUnit: "BNB/USD", totalAmount: "\$45.589", cardName: "+2.70%", textColor: CPPlusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPPrimaryColor, image: cp_ethereum, currencyName: "Ethereum", currencyUnit: "ETH/USD", totalAmount: "\$60.235", cardName: "+6.82%", textColor: CPPlusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPSecondaryColor, image: cp_uniSwap, currencyName: "Uniswap", currencyUnit: "UNI/USD", totalAmount: "\$40.789", cardName: "-1.86%", textColor: CPMinusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPPrimaryColor, image: cp_dollar, currencyName: "US Dollar", currencyUnit: "USD", totalAmount: "\$98.565", cardName: "+5.70%", textColor: CPPlusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPSecondaryColor, image: cp_binance, currencyName: "Binance Coin", currencyUnit: "BNB/USD", totalAmount: "\$45.589", cardName: "+2.54%", textColor: CPPlusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPPrimaryColor, image: cp_ethereum, currencyName: "Ethereum", currencyUnit: "ETH/USD", totalAmount: "\$60.235", cardName: "-1.82%", textColor: CPMinusCoinPer));
  tradeCryptoNameList
      .add(CPDataModel(bgColor: CPSecondaryColor, image: cp_uniSwap, currencyName: "Uniswap", currencyUnit: "UNI/USD", totalAmount: "\$40.789", cardName: "-3.82%", textColor: CPMinusCoinPer));

  return tradeCryptoNameList;
}

List<CPDataModel> getMyPortFolioDataModel() {
  List<CPDataModel> myWalletList = [];
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_dollar, currencyUnit: "USD", totalAmount: "\$98.565", cardName: "BNB 0.447515"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_binance, currencyUnit: "BNB/USD", totalAmount: "\$45.589", cardName: "ETH 0.87945"));
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_ethereum, currencyUnit: "ETH/USD", totalAmount: "\$60.235", cardName: "BNB 0.16622"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_uniSwap, currencyUnit: "UNI/USD", totalAmount: "\$40.789", cardName: "UNI 0.748921"));
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_dollar, currencyUnit: "USD", totalAmount: "\$98.565", cardName: "BNB 0.447515"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_binance, currencyUnit: "BNB/USD", totalAmount: "\$45.589", cardName: "ETH 0.87945"));
  myWalletList.add(CPDataModel(bgColor: CPPrimaryColor, image: cp_ethereum, currencyUnit: "ETH/USD", totalAmount: "\$60.235", cardName: "BNB 0.16622"));
  myWalletList.add(CPDataModel(bgColor: CPSecondaryColor, image: cp_uniSwap, currencyUnit: "UNI/USD", totalAmount: "\$40.789", cardName: "UNI 0.748921"));

  return myWalletList;
}

List<CPDataModel> getProfileDataModel() {
  List<CPDataModel> profileList = [];
  profileList.add(CPDataModel(
    icon: Icons.person,
    currencyUnit: "Edit Profile",
  ));
  profileList.add(CPDataModel(icon: Icons.notifications, currencyUnit: "Notification"));
  profileList.add(CPDataModel(icon: Icons.lock, currencyUnit: "Privacy & Policy"));
  profileList.add(CPDataModel(icon: Icons.settings, currencyUnit: "Setting"));

  return profileList;
}
