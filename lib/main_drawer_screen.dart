import 'package:flutter/material.dart';
import 'package:mealApp/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            height: 200,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meals', () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile(
            'Settings',
            () {
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(String text, Function onTapHandler) {
    return ListTile(
      leading: Icon(
        Icons.restaurant,
        size: 26,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapHandler,
    );
  }
}
