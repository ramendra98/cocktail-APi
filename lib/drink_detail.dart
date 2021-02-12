import 'package:flutter/material.dart';

class DrinksDetails extends StatelessWidget {
  final drink;

  const DrinksDetails({Key key, @required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drink["strDrink"]),
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: drink["idDrink"],
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(drink["strDrinkThumb"] ?? "https://rimatour.com/wp-content/uploads/2017/09/No-image-found.jpg"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "ID ${drink["idDrink"]}",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "${drink["strDrink"]}",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
