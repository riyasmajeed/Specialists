import 'package:flutter/material.dart';
import 'package:chat_app/view/mainpage.dart'; // Ensure this import is correct

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Organizer Content')),
    MainPage(),
    Center(child: Text('Video Content')),
    Center(child: Text('Flowers Content')),
    Center(child: Text('Decor Content')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,bottom: 10,right: 10),
          child: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline),
              ),
            ],
            title: Text("Specialists"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(82, 237, 235, 235),
                border: Border(
                  top: BorderSide(color: Color.fromARGB(68, 156, 154, 154)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => _onItemTapped(0),
                    child: Text('Organizer', style: TextStyle(color: _selectedIndex == 0 ? Colors.black : Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                  ),
                  TextButton(
                    onPressed: () => _onItemTapped(1),
                    child: Text('Photo', style: TextStyle(color: _selectedIndex == 1 ? Colors.black : Colors.grey,fontSize: 16,)),
                  ),
                  TextButton(
                    onPressed: () => _onItemTapped(2),
                    child: Text('Video', style: TextStyle(color: _selectedIndex == 2 ? Colors.black : Colors.grey,fontSize: 16,)),
                  ),
                  TextButton(
                    onPressed: () => _onItemTapped(3),
                    child: Text('Flowers', style: TextStyle(color: _selectedIndex == 3 ? Colors.black : Colors.grey,fontSize: 16,)),
                  ),
                  TextButton(
                    onPressed: () => _onItemTapped(4),
                    child: Text('Decor', style: TextStyle(color: _selectedIndex == 4 ? Colors.black : Colors.grey,fontSize: 16,)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
