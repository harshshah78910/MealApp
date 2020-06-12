import 'package:flutter/material.dart';
import 'package:mealApp/main_drawer_screen.dart';

class FilterScreen extends StatefulWidget {
  static const String routeName = 'filter-screen';
  final Function saveFiltersMap;
  FilterScreen(this.saveFiltersMap);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _isGlutenFree = false;
  var _isVegetrian = false;
  var _isLactoseFree = false;
  var _isVegan = false;

  Widget _buildSwitchWidget(
      String text, String subTitle, bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(text),
      onChanged: updateValue,
      subtitle: Text(subTitle),
      value: currentValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Settings'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'glutenFree': false,
                'lactoseFree': false,
                'vegan': false,
                'vegeterian': false
              };
              widget.saveFiltersMap(selectedFilters);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text('This is Filter Screen'),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitchWidget(
                'Gluten-Free',
                'Gluten-Free Content',
                _isGlutenFree,
                (newValue) {
                  setState(
                    () {
                      _isGlutenFree = newValue;
                    },
                  );
                },
              ),
              _buildSwitchWidget(
                'Lactose-Free',
                'Lactose-Free Content',
                _isLactoseFree,
                (newValue) {
                  setState(
                    () {
                      _isLactoseFree = newValue;
                    },
                  );
                },
              ),
              _buildSwitchWidget(
                'Vegan',
                'Vegan Content',
                _isVegan,
                (newValue) {
                  setState(
                    () {
                      _isVegan = newValue;
                    },
                  );
                },
              ),
              _buildSwitchWidget(
                'Vegeterian',
                'Veggies Content',
                _isVegetrian,
                (newValue) {
                  setState(
                    () {
                      _isVegetrian = newValue;
                    },
                  );
                },
              ),
            ],
          ))
        ],
      ),
    );
  }
}
