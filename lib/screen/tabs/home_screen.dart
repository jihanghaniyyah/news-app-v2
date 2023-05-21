import 'package:flutter/material.dart';
import 'package:news_app_v2/widget/home_widget/all_news.dart';
import 'package:news_app_v2/style/theme.dart' as Style;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text(
                "Semua Berita",
                style: TextStyle(
                    color: Style.Colors.titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ],
          ),
        ),
        AllNewsWidget()
      ],
    );
  }
}