import 'package:flutter/material.dart';
import 'package:form/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name'
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter email'
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Phone Number'
                ) ,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  WelcomePage(name: _name.text, email: _email.text, phone: _phone.text)
              )
              );
    }, child: Text('Confirm'))
          ],
        )
    );
  }
}











