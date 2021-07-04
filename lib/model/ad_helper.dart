import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper{
  static String get bannerAdUnitId{
    if(Platform.isAndroid){
      return BannerAd.testAdUnitId;
    }
    else{
      return null;
    }
  }

  static String get nativeAdUntld{
    if(Platform.isAndroid){
      return NativeAd.testAdUnitId;
    }
    else
      return null;
  }

  static List<String> testDevices = [

  ];
}