import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const double hSize = 781.0909090909091;
  static const double wSize = 392.72727272727275;

  @override
  Widget build(BuildContext context) {
    log('${MediaQuery.sizeOf(context).width}');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/images/q_logo.png'),
          title: const Center(
            child: Text(
              'Qurinom Solutions',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/asset 18.jpeg',
                        ))),
                child: Container(
                  color: Colors.black.withOpacity(0.400),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 150 / hSize,
                    ),
                    // const Text('Scan this qr for more information'),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.sizeOf(context).width * 8 / wSize),
                      child: QrImageView(
                        backgroundColor: Colors.white,
                        size: 130,
                        data: 'https://qurinomsolutions.com/',
                      ),
                    ),
                  ]),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).width * 0.05),
                  child: const Text(
                    'Scan this QR for more information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
