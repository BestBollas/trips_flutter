import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  late String namePlace;
  late int satrs;
  late String decriptionPlace;

  DescriptionPlace(this.namePlace,this.satrs,this.decriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
          left: 20.0
      ),
      child: Text(
          decriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff56575a)
        ),
          textAlign: TextAlign.justify
      ),
    ) ;
    final title_stars = Row (
      children:<Widget> [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row (
          children: <Widget>[
            star,
            star,
            star,
            star_border,
            star_border
          ],
        )
      ],

    );

    final content = Container(
      child: Column(
        children: <Widget>[
          title_stars,
          description
        ],
      ),
    );

    return content;
  }
}