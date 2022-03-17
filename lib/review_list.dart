import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/perfil.jpeg", "Eddy Bollas", "1 review - 5 Photos", "Very good",3),
        Review("assets/img/perfil.jpeg", "Keria Sophia", "2 review - 2 Photos", "Test",2),
        Review("assets/img/perfil.jpeg", "Miriam Mejia", "3 review - 6 Photos", "Muy bueno",1),
        Review("assets/img/perfil.jpeg", "Eddy Bollas", "1 review - 5 Photos", "Very good",5),
        Review("assets/img/perfil.jpeg", "Keria Sophia", "2 review - 2 Photos", "Test",4),
        Review("assets/img/perfil.jpeg", "Miriam Mejia", "3 review - 6 Photos", "Muy bueno",3),
        Review("assets/img/perfil.jpeg", "Eddy Bollas", "1 review - 5 Photos", "Very good",2),
        Review("assets/img/perfil.jpeg", "Keria Sophia", "2 review - 2 Photos", "Test",1),
        Review("assets/img/perfil.jpeg", "Miriam Mejia", "3 review - 6 Photos", "Muy bueno",1),
        Review("assets/img/perfil.jpeg", "Eddy Bollas", "1 review - 5 Photos", "Very good",2),
        Review("assets/img/perfil.jpeg", "Keria Sophia", "2 review - 2 Photos", "Test",3),
        Review("assets/img/perfil.jpeg", "Miriam Mejia", "3 review - 6 Photos", "Muy bueno",4),
        Review("assets/img/perfil.jpeg", "Eddy Bollas", "1 review - 5 Photos", "Very good",5),
        Review("assets/img/perfil.jpeg", "Keria Sophia", "2 review - 2 Photos", "Test",2),
        Review("assets/img/perfil.jpeg", "Miriam Mejia", "3 review - 6 Photos", "Muy bueno",1),
      ],
    );
  }

}