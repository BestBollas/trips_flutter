import 'package:flutter/material.dart';


class Review extends StatelessWidget{
  String pPathImage = "assets/img/perfil.jpeg";
  String pName = "Keira Shopia";
  String pDetails = "1 review 5 photos";
  String pComment = "There is an amazing place in Sri Lanka ";
  int pStars;
  late int maxStars = 5;

  Review(this.pPathImage,this.pName,this.pDetails,this.pComment,this.pStars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_half = Container(
      margin: const EdgeInsets.only(
          left: 1.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );
    final star_border = Container(
      margin: const EdgeInsets.only(
          left: 1.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(
          left: 1.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );
    final userComment = Container(
      margin: const EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        pComment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );
    final userInfo = Row (
      children: <Widget> [
        Container(
            margin: const EdgeInsets.only(
            left: 20.0
            ),
          child: Text(
            pDetails,
            textAlign: TextAlign.left,
            style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        Row (
          children: <Widget>[
            for(var i = 0; i < maxStars; i++)
              (i < pStars) ? star : star_border,
          ],
        )
      ],

    );
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        pName,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        userName,
        userInfo,
        userComment
      ],
    );
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pPathImage)
      )
    ),
    );

    return Row(
      children: <Widget> [
        photo,
        userDetails
      ],
    );
  }

}