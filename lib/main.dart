import 'package:flutter/material.dart';
import 'package:testApp/widgets/text_field.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'Goth'),
      debugShowCheckedModeBanner: false,
      home: Demain()));
}

class Demain extends StatelessWidget {
  const Demain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //height of the screen
    var height = MediaQuery.of(context).size.height;
    //width of the screen
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ScrollConfiguration(
        //disables the scroll of the login page
        behavior: ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        //enables the text fields to slide up when opening keyboard
        child: SingleChildScrollView(
          child: Container(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //top text
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: Text(
                            'Tiwanna',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 35,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        //bottome Game Client text
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: ' Game ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontFamily: 'Mont',
                                fontWeight: FontWeight.w300,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Client',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //space in the middle
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: height * 0.30,
                  ),
                ),
                //the bottom CONTAINER
                Container(
                  height: width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(22, 24, 30, 100),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Login text
                        SizedBox(
                          height: height * 0.09,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        //space in the middle
                        SizedBox(
                          height: height * 0.05,
                        ),

                        //text field container
                        Expanded(
                          flex: 5,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextLogin(
                                    hinttext: 'Username',
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  TextLogin(
                                    hinttext: 'Password',
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Container(
                                    height: 50,
                                    width: width,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text('Login'),
                                      textColor: Colors.white,
                                      color: Colors.blue[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //singup text
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Don\'t have an Account?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '   Register Now!',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
