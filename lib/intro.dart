import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              child: Card(
                elevation: 5,
                child: ListTile(
                  title: Text(
                    'Covid App',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_pin,
                        size: 32,
                        color: Colors.blue,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
                color: Colors.purple.shade400,
                elevation: 9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'Covid-19',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            'Are you feeling sick?',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'If you are feeling sick or any other symtomss of Covid-19 \n Please call or SMS for you nd society betterment',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('Call'),
                                )),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Sms'),
                              )),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.grey.shade400,
              elevation: 9,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text(
                            'Preventions',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/1.jpg',
                                    width: 50,
                                  ),
                                  Text('Wash your hands'),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/2.jpg',
                                    width: 50,
                                  ),
                                  Text('Senitize the surrounding'),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/3.jpg',
                                  width: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0),
                                  child: Text('Stay Home'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/4.jpg',
                                  width: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: Text('No shake hand'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Card(
                color: Colors.white,
                elevation: 9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [Image.asset('assets/5.jpg', width: 185,)],
                      ),
                    ),
                    Column(
                      children: [Text('Have you vaccinated?',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      )],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
