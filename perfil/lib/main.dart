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
      title: 'Perfil Profissional',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget menuItem(IconData icon, String text) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(text, style: const TextStyle(fontSize: 18)),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(color: Colors.deepPurple, thickness: 2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        title: const Text("Label"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          ),
        ],
      ),

      // BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            // STACK (banner + foto)
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.deepPurple.withOpacity(0.3),
                ),

                const Positioned(
                  bottom: -40,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.deepPurple,
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // NOME E BIO
            const Text(
              "Ana Luiza",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "Desenvolvedora Mobile Flutter",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // ROW DOS 3 CONTAINERS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [destaqueBox(), destaqueBox(), destaqueBox()],
            ),

            const SizedBox(height: 30),

            // LISTA
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  menuItem(Icons.person_outline, "perfil"),
                  menuItem(Icons.shopping_cart_outlined, "carrinho"),
                  menuItem(Icons.favorite_border, "favoritos"),
                  menuItem(Icons.location_on_outlined, "localização"),
                  menuItem(Icons.logout, "sair"),
                ],
              ),
            ),
          ],
        ),
      ),

      // BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }

  // CONTAINERS DOS DESTAQUES
  Widget destaqueBox() {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
