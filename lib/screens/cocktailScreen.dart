import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:koktailapp/data/jsondata.dart';
import 'package:koktailapp/modals/cocktail.dart';
import 'package:koktailapp/screens/cocktailController.dart';

import 'detailpage.dart';

class CocktailScreen extends StatelessWidget {
  CocktailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Cocktail> cocktail = CockTailController.getDataa();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cocktail App"),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: cocktail.length,
          itemBuilder: (context, index) {
            Cocktail data = cocktail[index];
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailPage(detailItem: data,)));
              },
              child: Container(
                height: 80.0,
                margin: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:NetworkImage("${data.strDrinkThumb}")),
                    title: Text("${data.strDrink}",
                      style: TextStyle(
                        fontSize: 22,),overflow: TextOverflow.ellipsis,),
                    subtitle: Text("${data.idDrink}",style: TextStyle(fontSize: 19),),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
