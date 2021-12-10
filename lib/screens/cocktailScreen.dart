import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:koktailapp/data/jsondata.dart';
import 'package:koktailapp/modals/cocktail.dart';
import 'package:koktailapp/screens/cocktailController.dart';

class CocktailScreen extends StatelessWidget {
   CocktailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   List<Cocktail> cocktail =  CockTailController.getDataa();
    return Scaffold(
      appBar: AppBar(title: Text("Cocktail App"),),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cocktail.length,
        itemBuilder: (context, index){
          Cocktail data = cocktail[index];
          return Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 5.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue
            ),
            child: Row(
              children: [
                Text("${data.idDrink}"),
              ],
            ),
          );
        }
      ),
    );
  }
}

