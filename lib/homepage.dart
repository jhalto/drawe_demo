import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  myDrawer(){
    return Drawer(
      child: Container(
        child: ListView(
          children: [
             DrawerHeader(
                 padding: EdgeInsets.zero,
                 child: UserAccountsDrawerHeader(
                   otherAccountsPictures: [
                     CircleAvatar(

                         backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvZ44JBNYm0elDbU51pqkCeOoSaJ6coRKLUFzsAy3YQerw4USWY1UMYDeFh-g-NciW44c&usqp=CAU")),
                     CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGTuqu7-Md8sUZ_K_O7GpKyAeuFd2qCWrzN1HVYg-3PKW_KNexxwX89OlXxfdcmd5P5Ck&usqp=CAU")),
                   ],

               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage(

                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ9ow8qnnd0mesESrc6VtBODm3bfE5cXhGTj8xPvlOyw&s"),
               ),
               accountEmail: Text("zobayerarmannadim@gmail.com"),
               accountName: Text("Md. Zobayer Arman Nadim"),
             )),
            ListTile(

              title: Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(width: 10,),
                  Text("Home")
                ],
              ),
            ),
            ListTile(

              title: Row(
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(width: 10,),
                  Text("About")
                ],
              ),
            ),
            ListTile(

              title: Row(
                children: [
                  Icon(Icons.production_quantity_limits),
                  SizedBox(width: 10,),
                  Text("Products")
                ],
              ),
            ),
            ListTile(

              title: Row(
                children: [
                  Icon(Icons.account_box_outlined),
                  SizedBox(width: 10,),
                  Text("Contact")
                ],
              ),
            )




          ],
        ),
      ),
      width: 300,
      backgroundColor: Colors.blue,

    );
  }
  GlobalKey<ScaffoldState> _scffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      key: _scffoldKey,
      drawer: myDrawer(),
      endDrawer: myDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MaterialButton(onPressed: (){
              _scffoldKey.currentState!.openDrawer();
            },child: Text("Drawer 1"),color: Colors.lightBlueAccent,),
            SizedBox(height: 200,),
            MaterialButton(onPressed: (){
              _scffoldKey.currentState!.openEndDrawer();
            },child: Text("Drawer 2"),color: Colors.lightBlueAccent)
          ],
        ),
      ),
    );
  }
}















