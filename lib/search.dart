import 'package:flutter/material.dart';
import 'package:sample_1/datas.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    Datas data = Datas();
    return Scaffold(
      appBar: AppBar(
        title: const Text("search bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0)),
              onTap: () {
                controller.openView();
              },
              onChanged: (value) {
                controller.openView();
              },
              leading: const Icon(Icons.search),
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(3, (index) {
              final String items = data.item[index]['name'];
              return ListTile(
                title: Text(items),
                onTap: () {
                  setState(() {
                    controller.closeView(items);
                  });
                },
              );
            });
          },
        ),
      ),
    );
  }
}
