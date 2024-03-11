import 'package:donuts_ui_app/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    // list of donuts
    List donutsOnSale = [
      // [ donutFlavor, donutPrice, donutColor, imageName ]

      ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
      ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
      ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
      ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ];

    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
