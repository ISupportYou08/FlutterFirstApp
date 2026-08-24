import 'package:flutter/material.dart'; //UI Library

void main() => runApp(MyApp()); //entry point

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {// describe what to show on our app
    return Scaffold(
      appBar: AppBar(title: Text('My First App')), 
      body:Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(Icons.star, size: 40),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Icon(Icons.thumb_down_alt_outlined)
                ],
              ),
              SizedBox(height: 10),
              Text('Helluuu flaatttt ka'),
              SizedBox(height: 10),
              ElevatedButton(onPressed:(){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> SecondScreen()),
                );
              }, 
              child: Text('Go to Second Screen'))
            ]

        ), // Column/Vertical layout
      )//center
    ); // MaterialApp/ScaffoldS

  }
}


class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondScreen')),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=> Navigator.pop, child: Text('Go Back'))
      ),
    );
  }
}


class MyApp extends StatelessWidget { // A widget w/ no changes, pure display
@override
  Widget build(BuildContext context) {
   
   return MaterialApp(
    home: FirstScreen()
   );
  }
}






