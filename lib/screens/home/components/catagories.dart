import 'package:flutter/material.dart';
import '../../../constants.dart';

class Catagories extends StatefulWidget {
  @override
  _CatagoriesState createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  List<String> catagories = ["Hand bag", "Jewellery", "FootWear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catagories.length,
          itemBuilder: (context, index) => buildCatagory(index),
        ),
      ),
    );
  }

  Widget buildCatagory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                catagories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ],
          ),
        ),
      );
}
