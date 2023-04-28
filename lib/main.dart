import 'package:flutter/material.dart';
import 'package:signup_page/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 720,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('SignUp',style: TextStyle(fontSize: 30,color: Colors.cyanAccent),),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.cyanAccent),
                        hintText: 'Enter Name',
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Name',
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
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.cyanAccent),
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
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

                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Moblie',
                          labelStyle: TextStyle(color: Colors.cyanAccent),
                          hintText: 'Enter Mobile No.',
                          prefixIcon: Icon(Icons.phone),
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

                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.cyanAccent),
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.key),
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
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SecondPage(),
                                  )
                              );
                            },
                            child: Text('SignIn')
                        )
                    )
                )
              ],
            ),
          ),
      ),
    );
  }
}
