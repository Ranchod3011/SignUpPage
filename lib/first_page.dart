import 'package:flutter/material.dart';
import 'package:signup_page/main.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fisrt Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.red,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('Welcome',style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
            Center(
            child: Container(
            width: 300,
              height: 70,
              child: TextFormField(
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  else if(value != 'ritik'){
                    return 'Please enter correct email';
                  }
                  else {
                    return null;
                  }
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.cyanAccent),
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.lightGreenAccent,
                        )
                    )
                ),

              ),
            ),
        ),

                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('You have successfully loged in.')),
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        )
                    );
                  }
                },
                child: Text('Login')
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage(),
                          ),
                        );
                      },
                      child: Text('SignUp',style: TextStyle(fontSize: 15,color: Colors.white),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.red,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('This is Second Page',style: TextStyle(fontSize: 30),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
