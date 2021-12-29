// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class news_tab extends StatefulWidget {
  @override
  _news_tabState createState() => _news_tabState();
}

class _news_tabState extends State<news_tab> {
  final String url = "https://api.covidtracking.com/v1/us/daily.json";
  List C_news;
  @override
  void initState() {
    super.initState();
    this.Getnews();
  }

  Future<String> Getnews() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      var newsJson = json.decode(response.body);
      C_news = newsJson;
    });
    return 'Success';
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: C_news == null ? 0 : C_news.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(115, 5, 4, 5),
                              child: Text(
                                C_news[index]['dateChecked'].toString(),
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.bloodtype,
                                              color: Colors.green,
                                              size: 26,
                                            ),
                                          ),
                                          Text(
                                            'Positive'.toString(),
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          C_news[index]['positive'].toString(),
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.person_remove_outlined,
                                              color: Colors.orange,
                                              size: 26,
                                            ),
                                          ),
                                          Text(
                                            'Nagative'.toString(),
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          C_news[index]['negative'].toString(),
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.health_and_safety_sharp,
                                              color: Colors.teal,
                                              size: 26,
                                            ),
                                          ),
                                          Text(
                                            'Recover'.toString(),
                                            style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          C_news[index]['recover'].toString(),
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.local_hospital_rounded,
                                              color: Colors.purple,
                                              size: 26,
                                            ),
                                          ),
                                          Text(
                                            'Hospitalize'.toString(),
                                            style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          C_news[index]['hospitalizedCurrently']
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.purple,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.clear_outlined,
                                              color: Colors.red,
                                              size: 26,
                                            ),
                                          ),
                                          Text(
                                            'death'.toString(),
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          C_news[index]['death'].toString(),
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Icon(
                                              Icons.pending_actions_outlined,
                                              color: Colors.yellow.shade600,
                                              size: 26,
                                            ),
                                          ),
                                          Text(
                                            'Pending'.toString(),
                                            style: TextStyle(
                                              color: Colors.yellow.shade600,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          C_news[index]['pending'].toString(),
                                          style: TextStyle(
                                            color: Colors.yellow.shade700,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
