import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIconSection(
                Icons.icecream_outlined,
                "Ice cream is very delicious right?",
              ),
              _buildIconSection(
                Icons.code,
                "Programming is not boring if you love it.",
              ),
              _buildIconSection(
                Icons.water_drop_outlined,
                "If you submit code directly copy from chatgpt then mark will 0",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconSection(IconData icon, String text) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFFEADDFF),
          radius: 80,
          child: Icon(
            icon,
            size: 100,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor:const Color(0xFFFFC107),
      title: const Text("My Profile"),
      actions: [
        _appBarIcon(() {}, Icons.add),
        _appBarIcon(() {}, Icons.settings),
        _appBarIcon(() {}, Icons.call),
      ],
    );
  }

  Widget _appBarIcon(VoidCallback onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}