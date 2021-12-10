import 'dart:convert';

import 'package:koktailapp/data/jsondata.dart';
import 'package:koktailapp/modals/cocktail.dart';

class CockTailController {

 static List<Cocktail> getData(){
   var response = jsonDecode(JsonData.getAllCockTail());
   var dataa = response["drinks"];
   List<Cocktail> cocktailList = [];
   for(int i=0; i<dataa.length; i++){
     cocktailList.add(Cocktail.fromJson(dataa[i]));
   }
   return cocktailList;
 }


 static List<Cocktail> getDataa(){
   var response = jsonDecode(JsonData.getAllCockTail());
   var dataa = response["drinks"];
   List<Cocktail> cocktailList = [];

   dataa.forEach( (e){
     cocktailList.add(Cocktail.fromJson(e));
   });

   print(cocktailList);
   return cocktailList;
 }





}