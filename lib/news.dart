// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

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
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 6,
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 8,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: new CircularPercentIndicator(
                                      radius: 125.0,
                                      lineWidth: 10.0,
                                      percent: 1.0,
                                      center: new Text(
                                        C_news[index]['totalTestResults']
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                        ),
                                      ),
                                      progressColor: Colors.red,
                                    ),
                                  ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            'Positive',
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 84.0,
                                          height: 5.0,
                                          child: const DecoratedBox(
                                            decoration: const BoxDecoration(
                                                color: Colors.green),
                                          ),
                                        ),
                                        Text(
                                          C_news[index]['positive'].toString(),
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            'Nagative',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 84.0,
                                          height: 5.0,
                                          child: const DecoratedBox(
                                            decoration: const BoxDecoration(
                                                color: Colors.orange),
                                          ),
                                        ),
                                        Text(
                                          C_news[index]['negative'].toString(),
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
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
                      padding: const EdgeInsets.all(11.0),
                      child: Card(
                        elevation: 8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      'Death',
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 84.0,
                                    height: 5.0,
                                    child: const DecoratedBox(
                                      decoration:
                                          const BoxDecoration(color: Colors.purple),
                                    ),
                                  ),
                                  Text(
                                    C_news[index]['death'].toString(),
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      'Hospitalized',
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 84.0,
                                    height: 5.0,
                                    child: const DecoratedBox(
                                      decoration:
                                          const BoxDecoration(color: Colors.pink),
                                    ),
                                  ),
                                  Text(
                                    C_news[index]['hospitalizedCurrently'].toString(),
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      'Recover',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 84.0,
                                    height: 5.0,
                                    child: const DecoratedBox(
                                      decoration:
                                          const BoxDecoration(color: Colors.blue),
                                    ),
                                  ),
                                  Text(
                                    C_news[index]['positiveIncrease'].toString(),
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
