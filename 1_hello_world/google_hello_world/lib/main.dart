import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_hello_world/fancy_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class Kitten {
  const Kitten({this.name, this.description, this.age, this.imageUrl});

  final String name;
  final String description;
  final int age;
  final String imageUrl;
}

final List<Kitten> _kittens = <Kitten>[
  Kitten(
      name: 'Mitterns',
      description: 'The pinacle of cats, When kitten sit on lap',
      age: 11,
      imageUrl: 'assets/image.jpg'),
  Kitten(
      name: 'Mitterns',
      description: 'The pinacle of cats, When kitten sit on lap',
      age: 11,
      imageUrl: 'assets/image.jpg'),
  Kitten(
      name: 'Mitterns',
      description: 'The pinacle of cats, When kitten sit on lap',
      age: 11,
      imageUrl: 'assets/image.jpg'),
  Kitten(
      name: 'Mitterns',
      description: 'The pinacle of cats, When kitten sit on lap',
      age: 11,
      imageUrl: 'assets/image.jpg'),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);
  Widget _dialogBuilder(BuildContext context, Kitten kitten) {
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Image.asset(
          kitten.imageUrl,
          fit: BoxFit.fill,
        ),
        // Container(width: 80, height: 80),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              kitten.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text('${kitten.age} months old',
                style: TextStyle(fontStyle: FontStyle.italic)),
            SizedBox(height: 16),
            Text(kitten.description),
            Align(
              alignment: Alignment.centerRight,
              child: Wrap(children: [
                FancyButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  labelButton: 'I\'m alegic',
                ),
                SizedBox(width: 12),
                FancyButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  labelButton: 'Adopt',
                )
              ]),
            )
          ]),
        )
      ],
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (context) => _dialogBuilder(context, _kittens[index])),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            _kittens[index].name,
            style: Theme.of(context).textTheme.headline,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Kittens'),
      ),
      body: ListView.builder(
        itemCount: _kittens.length,
        itemExtent: 60.0,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
