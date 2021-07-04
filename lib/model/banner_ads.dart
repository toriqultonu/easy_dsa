import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:easy_dsa/model/ad_state.dart';

class BannerADS extends StatefulWidget {

  @override
  _BannerADSState createState() => _BannerADSState();
}

class _BannerADSState extends State<BannerADS> {

  BannerAd banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status){
      setState(() {
        banner = BannerAd(
          adUnitId: BannerAd.testAdUnitId,
          size: AdSize.banner,
          request: AdRequest(),
        )..load();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return (banner == null) ? SizedBox(height: 50,):Container(height: 50, child: AdWidget(ad: banner,),);
  }
}
