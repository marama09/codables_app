import 'package:flutter/material.dart';
import 'package:kidsonlineeducation/ColorScheme.dart';
import 'package:kidsonlineeducation/HomePage.dart';
import 'HomePage.dart';

class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/HomePage': (context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAFBFF),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'circe'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/images/Rectangle 16.png'),
                        fit: BoxFit.contain)),
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Text(
                      //   "WHERE KIDS LOVE LEARNING",
                      //   style: TextStyle(fontSize: 12, fontFamily: 'circe'),
                      // ),
                    
                      Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: TextFormField(decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email, color:Colors.grey[400]),
                    hintText: 'البريد الالكتروني',
                   
                  ),),),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: TextFormField(decoration: InputDecoration(
                    suffixIcon: Icon(Icons.lock, color:Colors.grey[400]),
                    hintText: 'رمز الدخول',
                   
                  ),),),
                      Center(
                        child: Container(
                          // decoration: BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     border: Border.all(
                          //       width: 30,
                          //       color: Colors.black.withOpacity(0.1),
                            // )),
                          child: Positioned(
                              bottom: 150,
                              child: Material(
                                color: yellow,
                                
                                borderRadius: BorderRadius.circular(25),
                                child: MaterialButton(
                                  onPressed:openHomePage,
                                  child: Text('تسجيل الدخ'),
                                ),
                              ),

                              ),
                              
                        ),

                      ),
                      
                       Text(
                        "already have an account",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'circe'),
                        textAlign: TextAlign.center,
                      ), 

                    ]),
              ),
            ],
          ),
        ));
  }

  void openHomePage() {
    Navigator.pushNamed(context, '/HomePage');
  }
}
