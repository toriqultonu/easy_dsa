// import 'package:flutter/material.dart';
// import 'package:easy_dsa/model/ad_helper.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'dart:async';
//
// class BannerAdWidget extends StatefulWidget {
//   const BannerAdWidget({Key key}) : super(key: key);
//
//   @override
//   _BannerAdWidgetState createState() => _BannerAdWidgetState();
// }
//
// class _BannerAdWidgetState extends State<BannerAdWidget> {
//
//   BannerAd _bannerAd;
//   bool _adLoaded = false;
//   final Completer<BannerAd> bannerCompleter = Completer<BannerAd>();
//
//   @override
//   void initState() {
//     super.initState();
//
//     _bannerAd = BannerAd(
//       adUnitId: AdHelper.bannerAdUnitId,
//       request: AdRequest(
//         testDevices:AdHelper.testDevices,
//       ),
//       size: AdSize.banner,
//       onAdLoaded:(Ad ad){
//         print('$BannerAd loaded');
//         bannerCompleter.complete(ad as BannerAd);
//         setState(() {
//           _adLoaded = true;
//         });
//       },
//       onAdFailedToLoad: (Ad ad LoadAdError error){
//         ad.dispose();
//         print('$BannerAd faildToLoad: $error');
//
//     },
//       Future<void>.delayed(Duration(seconds: 1), () => _bannerAd.load());
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _bannerAd.dispose();
//     _bannerAd = null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return (_bannerAd == null) ? SizedBox(height: 50,):Container(height: 50, child: AdWidget(ad: _bannerAd,),);
//   }
// }
