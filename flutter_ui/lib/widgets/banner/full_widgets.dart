import 'package:flutter/material.dart';

class FullBannerTitleImage extends StatefulWidget{
  FullBannerTitleImage({Key key, this.imageAsset}) : super(key: key);

  final String imageAsset;

  _FullBannerTitleImageState createState() => _FullBannerTitleImageState();
}

class _FullBannerTitleImageState extends State<FullBannerTitleImage> {

  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 375,
          child: Image(
            image: AssetImage(widget.imageAsset),
            fit: BoxFit.fitWidth,
          ),
        )
    );
  }
}

class FullBannerTitleDarkScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child:
        Container(
          width: MediaQuery.of(context).size.width,
          height: 375,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.45)
          ),
        )
    );
  }
}

class FullBannerTitleText extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 375,
            alignment: Alignment.center,
            child: Text(
              "PROJECT DATABASE",
              style: TextStyle(
                fontFamily: 'Rajdhani',
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            )
        )
    );
  }
}