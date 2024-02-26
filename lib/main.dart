import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerOrtega());

class MiDrawerOrtega extends StatelessWidget {
  const MiDrawerOrtega({Key? key}) : super(key: key);

  get accountName => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Ortega"),
          centerTitle: true,
          backgroundColor: const Color(0xff534417),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_balance_wallet_sharp,
              ),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: const Color(0xff9e8a50),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Madederia Ortega"),
                accountEmail: Text("madederiaortega@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/MAOMOrtega15/practica1_6j_iOS/main/logo.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/MAOMOrtega15/practica1_6j_iOS/main/244266fbc757d3443c0e56ad2ff1fc81.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/MAOMOrtega15/practica1_6j_iOS/main/wooden-user-button-wooden-icon-png.webp"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/MAOMOrtega15/practica1_6j_iOS/main/descarga%20(1).jpg"),
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.add_home_work, color: Colors.indigo),
                title: Text("Sucursal",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.inventory, color: Colors.indigo),
                title: Text("Inventario",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.account_box, color: Colors.indigo),
                title: Text("Cliente",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.account_box_outlined, color: Colors.indigo),
                title: Text("Empleados",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.fire_truck_outlined, color: Colors.indigo),
                title: Text("Proveedores",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
