import 'package:flutter/material.dart';
import 'banner/full_widgets.dart';

class TitleBanner extends StatefulWidget {
  TitleBanner({Key key, this.imageAsset}) : super(key: key);

  final String imageAsset;

  _TitleBannerState createState() => _TitleBannerState();
}

class _TitleBannerState extends State<TitleBanner> {
  Widget build(BuildContext context) {
    return Center (
        child: Container(
            child: Stack(
              children: [
                FullBannerTitleImage(imageAsset: widget.imageAsset,),
                FullBannerTitleDarkScreen(),
                FullBannerTitleText(),
              ],
            )
        )
    );
  }
}