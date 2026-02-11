import 'package:flutter/material.dart';

void main() => runApp(AppAmazon());

class AppAmazon extends StatelessWidget {
  const AppAmazon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Amazon',
      home: Amazon(),
    );
  }
} //fin clase AppAmazon

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Amazon Estefania"),
        backgroundColor: const Color.fromARGB(255, 190, 102, 131),
        actions: [
          Icon(Icons.add_sharp),
          Icon(Icons.home),
        ],
      ),
      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Tarjeta de Usuario
      Container(
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 190, 102, 131), // Rosa solicitado
              Color.fromARGB(255, 75, 35, 50),    // Degradado oscuro
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white24,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/fany0588/IAMoviles_Act5_appBarCard_Gpo_6i/refs/heads/main/estefania.jpg',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Estefania Gonzalez',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Usuario Amazon',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.85),
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),

    );
  }
} //fin clase Amazon