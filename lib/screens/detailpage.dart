import 'package:flutter/material.dart';
import 'package:koktailapp/modals/cocktail.dart';

class DetailPage extends StatelessWidget {
  final Cocktail detailItem;
  const DetailPage({Key? key, required this.detailItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerLeft,
              colors: [
                Colors.blueAccent,
                Colors.lightBlue,
              ]),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 45.0,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Text(
                  "${detailItem.strDrink}",
                  style: const TextStyle(fontSize: 29, color: Colors.white),
                )),
              ],
            ),
            const SizedBox(
              height: 160,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      "${detailItem.strDrinkThumb}",
                      width: 200,
                      height: 200,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${detailItem.idDrink}",
                  style: const TextStyle(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "${detailItem.strDrink}",
                  style: const TextStyle(fontSize: 32, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
