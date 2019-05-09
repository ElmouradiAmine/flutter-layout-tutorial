import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static bool _isFavourite = false;
  static int _nbStars = 41;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Goify'),
      ),
      body: ListView(
        children: <Widget>[
          _imageSection,
          _titleSection(),
          _buttonSection,
          _textSection,
        ],
      ),
    );
  }

  Widget _imageSection = Container(
    height: 250,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/26/58/f2/2658f2960b9339b67e346280f1da6a5d.jpg'),
            fit: BoxFit.fill)),
  );

  Widget _titleSection() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Oeschinen lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              _toggleFavourite();
            },
            icon: Icon(_isFavourite ? Icons.star : Icons.star_border,
                color: Colors.red),
          ),
          Text('$_nbStars'),
        ],
      ),
    );
  }

  Widget _buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      _buildButtonSection('CALL', Icons.phone, Colors.red),
      _buildButtonSection('ROUTE', Icons.near_me, Colors.green),
      _buildButtonSection('SHARE', Icons.share, Colors.blue),
    ],
  );

  Widget _textSection = Container(
    padding: EdgeInsets.all(32.0),
    child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt '
        'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
        'ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
        'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
        'deserunt mollit anim id est laborum.'),
  );

  static Widget _buildButtonSection(String label, IconData icon, Color color) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(
            color: color,
          ),
        ),
      ],
    );
  }

  void _toggleFavourite() {
    setState(() {
      if (_isFavourite) {
        _isFavourite = false;
        _nbStars = _nbStars - 1;
      } else {
        _isFavourite = true;
        _nbStars = _nbStars + 1;
      }
    });
  }
}
