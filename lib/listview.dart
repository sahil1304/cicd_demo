import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records'),
      ),
      body:
      ListView.builder(
        itemCount: 5,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          // final item = items[index];
          return Container(
            margin: const EdgeInsets.only(
              bottom: 10,
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: Colors.white,
              boxShadow:  const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: ListTile(
              title: Text("Name: Trace Sims",style: TextStyle(color: Colors.deepPurple),),
              subtitle: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Text("Std : 9th",style: TextStyle(color: Colors.black),)),
                      Expanded(child: Text("Div : A ",style: TextStyle(color: Colors.black),)),
                    ],),
                ],),
            ),
          );
        },
      ),
    );
  }
}
