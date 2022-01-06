// ignore_for_file: camel_case_types
import 'package:covid_app/home.dart';
import 'package:covid_app/menu.dart';
import 'package:covid_app/news.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            elevation: 5.0,
            title: Column(
              children: [
                Text(
                  'Covid App',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.article_outlined)),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.article)),
                Tab(icon: Icon(Icons.menu_rounded)),
              ],
            ),
          ),
          drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration:  BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Covid App', style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),)
                ],
              ),
            ),
            const ListTile(
              leading:  Icon(Icons.home),
              title:  Text('Home'),
            ),
            ListTile(
              leading: const Icon(Icons.collections_sharp),
              title: const Text('News'),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title:const Text('Menu'),
            ),
          ],
        ),
      ),
          body: TabBarView(
            children: <Widget>[
              Home_tab(),
              news_tab(),
              Menu(),
            ],
          ),
          ),
    );
  }
}