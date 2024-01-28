import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:flutter/material.dart';

List<String> categories = ["Cappuccino", "Machiato", "Latte", "Americano"];

List<Product> products(BuildContext context) => [
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.9,
        title: "Cappucino",
        subTitle: 'with Oat Milk',
        price: 3.90,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            """When the text is longer than the specified trim length or exceeds the maximum number of lines, it provides a toggle option to show more or show less of the text.
It has two options for settings, the LineModeSettings or LengthModeSettings for trimming using the behavior that you want.""",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
      Product(
        imageURL: context.assets.gridImage1,
        rating: 4.8,
        title: "Cappucino",
        subTitle: 'with Chocolate',
        price: 4.53,
        description:
            "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..",
      ),
    ];
