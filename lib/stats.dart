// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
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
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 5, 4, 5),
                              child: Text(
                                C_news[index]['dateChecked']
                                    .toString()
                                    .substring(0, 10),
                                style: TextStyle(
                                  color: Colors.red,
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
                                ],
                              ),
                            ),
                          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.clear_outlined,
                                            color: Colors.red,
                                            size: 26,
                                          ),
                                          Text(
                                            'Death',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        C_news[index]['death'].toString(),
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
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
                                ),
                              ],
                            )
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
