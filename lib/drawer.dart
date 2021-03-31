import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Nabendu Biswas'), 
              accountEmail: Text('nabendu@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1020939891457241088/fcbu814K_400x400.jpg")
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Nabendu Biswas"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("nabendu@gmail.com"),
              trailing: Icon(Icons.edit),
            )
          ]
        )
      );
  }
}