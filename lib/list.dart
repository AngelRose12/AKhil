import 'package:flutter/material.dart';

class ListViews extends StatefulWidget {
  const ListViews({super.key});

  @override
  State<ListViews> createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  List<String> items= ["item1","Item 2","item 3","item 4","item1","Item 2","item 3","item1","Item 2","item 3"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(items[index]),
            subtitle: Text("subtitle for${items[index]}"),
            onTap: (){
              print("${items[index]}tapped");
            },
          );
        },
      
      ),
    );
  }
}