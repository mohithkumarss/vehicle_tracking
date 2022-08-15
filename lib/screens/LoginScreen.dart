import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _isVisible = false;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Container(
                height: deviceHeight * 0.22,
                child: FittedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/My project.png'),
                    radius: 120,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            Container(
              height: deviceHeight * 0.6,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: LayoutBuilder(
                builder: (ctx, constraints) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 105),
                        child: Text(
                          'AWATAR',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 42),
                        child:
                            Text('Please Enter the details below to Continue'),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.08),
                      Container(
                        height: constraints.maxHeight * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xffB848484).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'text@gmail.com',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      Container(
                        height: constraints.maxHeight * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xff848484).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Center(
                            child: TextField(
                              obscureText: _isVisible ? false : true,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVisible = !_isVisible;
                                    });
                                  },
                                  icon: Icon(
                                    _isVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: InputBorder.none,
                                hintText: 'Password',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                              ))
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: constraints.maxHeight * 0.1,
                        margin: EdgeInsets.only(
                          top: constraints.maxHeight * 0.08,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Don\'t have an Account!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              children: [
                            TextSpan(
                                text: '  Register',
                                style:
                                    TextStyle(color: Colors.teal, fontSize: 15),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {})
                          ]))
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
