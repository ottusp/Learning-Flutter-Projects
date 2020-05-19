import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/educaree_logo.jpg'),
              ),
              Text(
                'Educaree',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Text(
                  'Reimaginando a educação',
                  style: TextStyle(
                    color: Colors.tealAccent[100],
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.purple,
                ),
              ),
              ContactBox(),
              FacebookBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactBox extends Card {
  IconData _icon_data = Icons.email;
  String _text = 'educaree@educaree.com.br';

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
          leading: Icon(
            _icon_data,
            color: Colors.cyan[900],
          ),
          title: Text(
            _text,
            style: TextStyle(color: Colors.cyan[700], fontSize: 17),
          )),
    );
  }
}

class FacebookBox extends ContactBox {
  String _text = 'facebook.com/educaree01';

  IconData _icon_data = Icons.favorite_border;
}
