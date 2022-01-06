// ignore_for_file: camel_case_types, curly_braces_in_flow_control_structures, avoid_print
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const formvalidation());
}

class formvalidation extends StatefulWidget {
  const formvalidation({Key key}) : super(key: key);

  @override
  _formvalidationState createState() => _formvalidationState();
}

class _formvalidationState extends State<formvalidation> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String dropdown = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign in',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sign in'),
        ),
        body: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Field is empty';
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter your email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Field is empty';
                    String pattern = r'\w+@\w+\.\w+';
                    if (!RegExp(pattern).hasMatch(value))
                      return 'Invalid Email format';
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Enter your password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Field is empty';
                    String pattern =
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                    if (!RegExp(pattern).hasMatch(value))
                      return 'Password must contain 8 digits an upper case letter and a symbol';
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: DropdownButtonFormField(
                  value: dropdown,
                  items: const [
                    DropdownMenuItem<String>(
                      child: Text('--Choose--'),
                      value: '',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('Male'),
                      value: 'Male',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('Female'),
                      value: 'Female',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('Custom'),
                      value: 'Custom',
                    ),
                  ],
                  onChanged: (String value) {
                    setState(() {
                      dropdown = value;
                    });
                  },
                  validator: (value) {
                    if (value == '') return 'You must Select any option';
                    return null;
                  },
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState.validate()){
                    _key.currentState.save();
                    print('Form Subbmitted');
                    }
                    
                  },
                  child: const Icon(Icons.login),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
