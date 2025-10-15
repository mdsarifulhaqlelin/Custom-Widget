import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Widget')),
      body: Column(
        children: [

          CatItems(),
          Contact(),
          SubCatItems(),
          BottomMenu(),
        ],
      ),
    );
  }
}


class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
      color: Colors.redAccent,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index)=> Padding(padding: const EdgeInsets.all(11),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(backgroundColor: Colors.green,),
          ),
          ),
        ),
      ),
    );
  }
  
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded (
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green),
              title: Text('Name'),
              subtitle: Text('Mob No'),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build (BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(6, (index) { // ✅ এখানে List.generate() ব্যবহার করা হয়েছে
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}