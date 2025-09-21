// ignore_for_file: file_names

import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Card(
              elevation: 10,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/list_food_images/burger.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.cancel, size: 35),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Jebneh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              'Simple soul food, the traditional melted cheese mankousheh',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Divider(thickness: 15, color: paletteColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'choice of Bread',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text('up to 1 selection', style: TextStyle(fontSize: 12)),
          ),
          //---1---
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Multi Cereal Dough', style: TextStyle(fontSize: 16)),
                Spacer(),
                Text('(+3 SAR)', style: TextStyle(fontSize: 16)),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 35, top: 5),
            child: Divider(),
          ),
          //---2---
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Oat Dough', style: TextStyle(fontSize: 16)),
                Spacer(),
                Text('(+3 SAR)', style: TextStyle(fontSize: 16)),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 35, top: 5),
            child: Divider(),
          ),
          //---3---
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Protein Dough', style: TextStyle(fontSize: 16)),
                Spacer(),
                Text('(+3 SAR)', style: TextStyle(fontSize: 16)),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 35, top: 5),
            child: Divider(),
          ),
          //---4---
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Potato Dough', style: TextStyle(fontSize: 16)),
                Spacer(),
                Text('(+3 SAR)', style: TextStyle(fontSize: 16)),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Divider(thickness: 15, color: paletteColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Add The Items',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text('up to 4 selections', style: TextStyle(fontSize: 12)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 30),
            child: Row(
              children: [
                Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: paletteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Spacer(),
                      Text('1'),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 280,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Add',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '19 SAR',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
