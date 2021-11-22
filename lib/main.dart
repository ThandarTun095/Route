import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(MyHomePage());
}


class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{

  int status = 0;


  Widget build(BuildContext context){  

    print("Build Method");

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          onTap: (value){
            setState(() {
           status = value;   
            });
          },
          currentIndex: status,
          items : [
          BottomNavigationBarItem(icon: Icon(Icons.home) ,label: "home", ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Content" )
        ] ),
        appBar: AppBar(title: Text("My App")),
        body: MyHome()
        )
    );
  }
}


class MyHome extends StatefulWidget{

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  bool check = true;
 
  
  Widget build(BuildContext context){


      // return Column(children: [
      //   Table(
      //     defaultColumnWidth: FixedColumnWidth(80),
      //     border: TableBorder.all(width: 2, color: Colors.black),
      //     children: [
      //     TableRow(children: [
      //       TableCell(child: Text("Mg Mg")),
      //       TableCell(child: Text("12")),
      //       TableCell(child: Text("Mandalay")),
      //     ]),
      //     TableRow(children: [
      //       TableCell(child: Text("Aung Aung")),
      //       TableCell(child: Text("12")),
      //       TableCell(child: Text("Yangon")),
      //     ]),
      //   ]),
      // ]);

      return Column(children: [
        DataTable( 
          columns: [
            DataColumn(label: Text("User Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Location"))
          ],
          rows: [
          DataRow(cells: [
            DataCell(Text("Mg Mg")),
            DataCell(Text("12")),
            DataCell(Text("Mandalay")),
          ]),
          DataRow(cells: [
            DataCell(Text("Aung Aung")),
            DataCell(Text("12")),
            DataCell(Text("Yangon")),
          ])
        ]),
        

        OutlinedButton(child: Text("To Second Page"),
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context){
            return SecondPae();
          }));
        },
        )
      ],);



  }
}


