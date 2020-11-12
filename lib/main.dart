import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
        appBar: AppBar(
          title: Text(
            'My Title',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('Col 1'),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.cyan,
                child: Text('Col 2'),
              ),
            ),
            Expanded(
              child: Container(
                //alignment: Alignment.center,
                color: Colors.grey,
                child: Image(
                  image: AssetImage('assets/imgs/sky.jpg'),
                ),
              ),
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
              color: Colors.amber,
              child: Text('Col 4'),
            ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    color: Colors.green,
                    child: Text('Row 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    color: Colors.grey,
                    child: Text('Row 2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 50,
                    color: Colors.deepPurple,
                    child: Text('Row 3'),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {print('You clicked me !');},
          child: Text(
            'Click',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    );
  }
}
