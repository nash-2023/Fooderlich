import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    Container(color: Colors.red),
// TODO: Replace with Card2
    Container(color: Colors.green),
// TODO: Replace with Card3
    Container(color: Colors.blue)
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: pages[_selectedIndex],
      // 4
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
// 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// TODO: Set selected tab bar
// 6
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
