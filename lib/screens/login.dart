import 'package:flutter/material.dart';
import 'package:sample_project/main.dart';
import 'package:sample_project/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login Page'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.account_circle)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Value is empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Value is empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                          visible: !_isDataMatched,
                          child: const Text(
                            'Username and Password doesnot match',
                            style: TextStyle(color: Colors.red),
                          )),
                      SizedBox(
                        width: 360,
                        height: 60,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              checkLogin(context);
                            } else {
                              print('Data Empty');
                            }
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('Login'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void checkLogin(BuildContext ctx) async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (username == 'shijin' && password == '12345') {
      //Goto Home
      final sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setBool(saveKeyName, true);
      if (mounted) {
        Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(
            builder: (ctx1) => const HomeScreen(),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
        content: Text('Incorrect Username or Password'),
        backgroundColor: Colors.red,
      ));
    }
  }
}
