import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Flutter layout demo',style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body: Column(
          children: <Widget>[
            imageSection,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(Colors.red, Icons.phone, 'CALL'),
        _buildButtonColumn(Colors.green, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    ),
  );

  Widget titleSection = Container(
    padding: EdgeInsets.all(32.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Oeschinen lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.star,
            color: Colors.red,
          ),
        ),
        Text('41'),
      ],
    ),
  );

  static Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
              ),
            )),
      ],
    );
  }

  Widget textSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut '
    'labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
    'ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor '
    'in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
    'Excepteur sint occaecat cupidatat non proident, sunt '
    'in culpa qui officia deserunt mollit anim id est laborum.'),
  );

  Widget imageSection = Container(
    height: 280,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://i.pinimg.com/originals/26/58/f2/2658f2960b9339b67e346280f1da6a5d.jpg'),fit: BoxFit.fill,
      )
    ),
  );
}
