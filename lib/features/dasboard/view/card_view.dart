import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plp/core/color/app_colors.dart';
import 'package:plp/features/dasboard/view/dasboard_view.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Get.offAll(DashboardView());
          },
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'ຂໍ້ມູນບັດພະນັກງານ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/oldicon.png', height: 55),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ກະຊວງປ້ອງກັນຄວາມສະຫງົບ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.primaryColor),
                                      ),
                                      Text(
                                        'ລັດວິສາຫະກິດ ລາວບໍລິການຄວາມປອດໄພລະຫວ່າງປະເທດ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: AppColor.primaryColor),
                                      ),
                                      Text(
                                        'Lao Security Service State Exterprise-Oversea Security Guardians',
                                        style: TextStyle(
                                            fontSize: 7,
                                            color: AppColor.primaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, right: 20),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 170,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        width: 200,
                                        height: 150,
                                        image: AssetImage('assets/oldicon.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 175,
                                      right: 165,
                                      child: Transform.rotate(
                                        angle: -pi / 2,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            'Expiration Date:',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 175,
                                      right: 135,
                                      child: Transform.rotate(
                                        angle: -pi / 2,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            '08-03-2026',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: -100,
                                      child: QrImageView(
                                        embeddedImageStyle:
                                            QrEmbeddedImageStyle(
                                          size: Size(20, 20),
                                        ),
                                        embeddedImage:
                                            AssetImage('assets/oldicon.png'),
                                        data: 'https://www.youtube.com',
                                        version: QrVersions.auto,
                                        size: 100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: AppColor.primaryColor,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              'ສິນທະວົງ ອີນຍະວົງ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'Sinthvong PHONFDG',
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Card(
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.yellow, Colors.orange],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      border: Border(
                                        right: BorderSide(
                                          color: Color(0xFF004D40),
                                          width: 4,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 6),
                                    child: Text(
                                      'LSSS-0475-25',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
