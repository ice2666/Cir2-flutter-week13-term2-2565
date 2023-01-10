import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: Text("MyApp"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Cxmell ice"),
              accountEmail: Text("rathapoomiwicitrsmbati@gmail.com.com"),
              currentAccountPicture: CircleAvatar(
                // child: Icon(Icons.android),
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2021/04/28/23/58/ice-6215207_960_720.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.indigo, size: 30),
              title: Text('Home',
                  style: TextStyle(color: Colors.purple, fontSize: 15)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login, color: Colors.indigo, size: 30),
              title: Text('Login',
                  style: TextStyle(color: Colors.purple, fontSize: 15)),
              onTap: () {
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}