import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()) ;//Application
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch:Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home:HomeActivity()); //Starting Activity of My App
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  MySnackBar(message,context)
  {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inventory App'),
        titleSpacing: 10,
        //centerTitle: true,
        toolbarHeight: 60, //default height
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar('Comments', context );}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar('Search', context );}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('Settings', context );}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar('Email', context );}, icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar('I am floating action button', context);
        },
      ),
      /*body: Text('Hello'),
      drawer: (),//Left nevigation drawer
      endDrawer: (),
      bottomNavigationBar: (),
      */
    );
  }
}
