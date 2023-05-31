import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '백과 새전',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('백과 새전'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/swan.jpg',
            width:  250,
            height: 250,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                  },
                ),
              ),
              child: Text('다음'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                  },
                ),
              ),
              child: Text('뒤로'),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                  },
                ),
              ),
              child: Text('처음으로'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/yuri.jpg'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/hon.jpg'),
                ),
              ],
              accountName: const Text('김민균'),
              accountEmail: const Text('alsrbs49@naver.com'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('홈'),
              onTap: () {},
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('봄'),
              onTap: () {},
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('여름'),
              onTap: () {},
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('가을'),
              onTap: () {},
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('겨울'),
              onTap: () {},
              trailing: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
