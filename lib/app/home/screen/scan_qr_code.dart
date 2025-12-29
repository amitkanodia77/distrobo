import 'package:distrobo1/utils/colors.dart';
import 'package:distrobo1/utils/text_style.dart';
import 'package:distrobo1/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScanQrCode extends StatelessWidget {
  const ScanQrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mycolor.appbackgroundcolor,
        body: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Center(
                child: Text(
              "Scan QR Code",
              style: MyTextStyle.gilroyBoldW426titlecolor,
            )),
            SizedBox(
              height: 5.w,
            ),
            Center(
              child: Container(
                  height: 40.h,
                  width: 70.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: MobileScanner(
                      onDetect: (barcode) {
                        final String? code = barcode.barcodes.first.rawValue;
                        if (code != null) {
                          debugPrint('Scanned QR: $code');
                          Navigator.pop(context, code);
                        }
                      },
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "scanning will start automatically",
              style: MyTextStyle.gilroyMediumW416subtitelcolor,
            ),
            SizedBox(
              height: 5.h,
            ),
            RoundedButton(
                btnName: "Cancel",
                btnColor: Colors.green,
                buttonHeight: 48,
                buttonwidth: 200,
                borderRadiusc: 24,
                onchange: () {
                  Get.back();
                }),
          ],
        ));
  }
}
