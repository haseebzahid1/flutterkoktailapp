

class Cocktail {

  String? strDrink;
  String? strDrinkThumb;
  String? idDrink;

  Cocktail({
      this.strDrink,
      this.strDrinkThumb,
      this.idDrink,});

  Cocktail.fromJson(dynamic json) {
    strDrink = json['strDrink'];
    strDrinkThumb = json['strDrinkThumb'];
    idDrink = json['idDrink'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['strDrink'] = strDrink;
    map['strDrinkThumb'] = strDrinkThumb;
    map['idDrink'] = idDrink;
    return map;
  }

}