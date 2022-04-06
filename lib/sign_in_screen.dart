// MY CONFIG
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  bool isPasswordVisible = true;

  final _lowColor = Colors.black54;
  final _highColor = Colors.purple[300];

  Color? _field1Color;
  Color? _field2Color;

  void setVisibilityPass() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // This Text widget uses the RobotoMono font.
              SizedBox(
                height: 45,
              ),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.purple[300],
                      fontWeight: FontWeight.w900,
                    ),
              ),
              SizedBox(
                height: 75,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: Focus(
                  onFocusChange: (hasFocus) {
                    setState(
                        () => _field1Color = hasFocus ? _highColor : _lowColor);
                  },
                  child: TextFormField(
                    controller: txtUsername,
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Username ...",
                        contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                        ),
                        labelStyle: TextStyle(
                          color: _field1Color,
                        )),
                    style: Theme.of(context).textTheme.bodyText2,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: Focus(
                  onFocusChange: (hasFocus) {
                    setState(
                        () => _field2Color = hasFocus ? _highColor : _lowColor);
                  },
                  child: TextField(
                    controller: txtPassword,
                    obscureText: isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password ...",
                      contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purple, width: 2.0),
                      ),
                      labelStyle: TextStyle(
                        color: _field2Color,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setVisibilityPass();
                        },
                        color: _field2Color,
                      ),
                    ),
                    style: Theme.of(context).textTheme.bodyText2,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => FocusScope.of(context).unfocus(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the second screen when tapped.
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      minimumSize: Size(double.infinity, 30),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),

              Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[800],
                    ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sign_up');
                },
                child: Text(
                  "Don't have an account? Sign up here!",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Colors.black45,
                      ),
                ),
              ),
              SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
