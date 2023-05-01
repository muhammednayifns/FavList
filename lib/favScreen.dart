
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask1/provid.dart';

class FavoritsScrren extends StatelessWidget {
  const FavoritsScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object=Provider.of<ProviderPage>(context);
    List flist=object.favoritecart;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites Word"),
      ),
      body: ListView.builder(itemCount: flist.length,itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(flist[index]),
            trailing:IconButton(
              onPressed: () {
                object.favorits(flist[index]);

              },icon:
            object.check(flist[index])?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border),
            ),
          ),

        );

      },),

    );
  }
}
