import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/coinPro/utils/CPColors.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CPQrScannerScreen extends StatefulWidget {
  @override
  CPQrScannerScreenState createState() => CPQrScannerScreenState();
}

class CPQrScannerScreenState extends State<CPQrScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    }
    controller?.resumeCamera();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.white,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: 300,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen(
      (scanData) {
        setState(
          () {
            result = scanData;
          },
        );
      },
    );
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildQrView(context),
          Column(
            children: [
              30.height,
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: boxDecorationWithRoundedCorners(
                    backgroundColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
                ).onTap(() {
                  finish(context);
                }).paddingOnly(top: 8, right: 16),
              ),
              30.height,
              Text('Hold your Card inside the frame', style: boldTextStyle(color: Colors.white, size: 18)),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(8),
              decoration: boxDecorationWithRoundedCorners(borderRadius: radius(30), backgroundColor: context.cardColor),
              child: Icon(Icons.close, color: CPPrimaryColor),
            ).onTap(
              () {
                finish(context);
              },
            ),
          ).paddingBottom(60),
        ],
      ),
    );
  }
}
