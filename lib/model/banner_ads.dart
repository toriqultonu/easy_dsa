import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:easy_dsa/model/ad_state.dart';

class BannerAdsWidgets extends StatefulWidget {

  @override
  _BannerAdsWidgetsState createState() => _BannerAdsWidgetsState();
}

class _BannerAdsWidgetsState extends State<BannerAdsWidgets> {

  BannerAd banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status){
      setState(() {
        banner = BannerAd(
          adUnitId: adState.bannerAdUnitId,
          //adUnitId: BannerAd.testAdUnitId,
          size: AdSize.banner,
          request: AdRequest(),
          listener: BannerAdListener(
            onAdLoaded: (Ad ad) {
              print('$BannerAd loaded.');
              setState(() {
                banner = ad as BannerAd;
              });
            },
            onAdFailedToLoad: (Ad ad, LoadAdError error) {
              print('$BannerAd failedToLoad: $error');
              ad.dispose();
            },
            onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
            onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
          ),
        )..load();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return (banner == null) ? SizedBox(height: 50,):Container(height: 50, child: AdWidget(ad: banner,),);
  }
}
