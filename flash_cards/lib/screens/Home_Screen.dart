import 'package:flashcards/screens/Bichos_Screen.dart';
import 'package:flashcards/screens/Numeros_Screen.dart';
import 'package:flashcards/screens/Vogais_Screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flash Cards",
          textAlign: TextAlign.center,
        ),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "Bichos",),
            Tab(text: "Números",),
            Tab(text: "Vogais",),
          ],
      ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BichosScreen(),
          VogaisScreen(),
          NumerosScreen()
        ],
      ),
    );
  }
}
