import 'package:educational_portal/Listview.dart';
import 'package:flutter/material.dart';

import 'CommonTextField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Educational Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Educational Portal'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailID = TextEditingController();
  TextEditingController password = TextEditingController();

  TextEditingController CemailID = TextEditingController();
  TextEditingController Cpassword = TextEditingController();

  TextEditingController AemailID = TextEditingController();
  TextEditingController Apassword = TextEditingController();

  void _navigateToPersonalDetail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Listview(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Student",),
                Tab(text: "Consumer",),
                Tab(text: "Admin",),
              ],
            ),
            title: const Text('Educational portal'),
          ),
          body: TabBarView(
            children: [
            Container(
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Student Login',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      )),
                  CommonTextField(
                    controller: emailID,
                    label: "Enter email",
                    isEmail: true,
                  ),
                  CommonTextField(
                    controller: password,
                    label: "Password",
                    textInputType: TextInputType.visiblePassword,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _navigateToPersonalDetail();
                        }
                      },
                      style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
            Container(
                alignment: Alignment.center,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Consumer Login',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          )),
                      CommonTextField(
                        controller: CemailID,
                        label: "Enter email",
                        isEmail: true,
                      ),
                      CommonTextField(
                        controller: Cpassword,
                        label: "Password",
                        textInputType: TextInputType.visiblePassword,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _navigateToPersonalDetail();
                            }
                          },
                          style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                          child: const Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Container(
                alignment: Alignment.center,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Admin Login',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          )),
                      CommonTextField(
                        controller: AemailID,
                        label: "Enter email",
                        isEmail: true,
                      ),
                      CommonTextField(
                        controller: Apassword,
                        label: "Password",
                        textInputType: TextInputType.visiblePassword,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _navigateToPersonalDetail();
                            }
                          },
                          style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                          child: const Text('Login'),
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
    );
  }
}
