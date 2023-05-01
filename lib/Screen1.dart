import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask1/model.dart';
import 'package:providertask1/provid.dart';

import 'favScreen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List Items = ["time","year", "people","way","day","man","thing", "women","life","child","world", "school",

  ];

  @override
  Widget build(BuildContext context) {
    final object=Provider.of<ProviderPage>(context);
    return Scaffold(
      floatingActionButton:

      FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavoritsScrren(),));

        },
        label: Text("Favorites"),

      ) ,

      appBar: AppBar(
        title: Text("English Word"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(Items[index]),
              trailing:IconButton(
                onPressed: () {
                  object.favorits(Items[index]);

                },icon:
                  object.check(Items[index])?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border),
            ),
            ),

          );
        },
        itemCount: Items.length,
      ),

    );
  }
}
