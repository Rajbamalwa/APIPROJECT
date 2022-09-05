import 'dart:convert';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newapiproject/Model/DataModel.dart';
import 'package:newapiproject/screens/ReusableCode.dart';
import '../Model/DataModel2.dart';
import 'Overview1.dart';

Future<DataModel> getData() async {
  final response = await http.get(Uri.parse(
      'https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return DataModel.fromJson(data);
  } else {
    return DataModel.fromJson(data);
  }
}

List<DataModel2> dataModel2 = [];
Future<List<DataModel2>> getData2() async {
  final response = await http.get(Uri.parse(
      'https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    for (Map i in data) {
      dataModel2.add(DataModel2.fromJson(i));
    }
    return dataModel2;
  } else {
    return dataModel2;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('A P I  C A L L I N G'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey.shade200,
              padding: const EdgeInsets.only(right: 230, top: 0),
              child: Text(
                'Overview',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.blue.shade900),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: FutureBuilder<DataModel>(
                  future: getData(),
                  builder: (context, AsyncSnapshot<DataModel> snapshot) {
                    if (snapshot.hasData) {
                      return Center(
                        child: Column(
                          children: [
                            ReUse(
                                title: 'Sector',
                                value: snapshot.data!.sector.toString()),
                            ReUse(
                                title: 'Industry',
                                value: snapshot.data!.industry.toString()),
                            ReUse(
                                title: 'MarketCap.',
                                value: snapshot.data!.mcap.toString()),
                            ReUse(
                                title: 'Enterprise Value (EV)',
                                value: snapshot.data!.ev.toString()),
                            ReUse(
                                title: 'Book Value / Share',
                                value:
                                    snapshot.data!.bookNavPerShare.toString()),
                            ReUse(
                                title: 'Price-Earning Ratio (PE)',
                                value: snapshot.data!.ttmpe.toString()),
                            ReUse(
                                title: 'PEG Ratio',
                                value: snapshot.data!.pEGRatio.toString()),
                            ReUse(
                                title: 'Dividend Yield',
                                value: snapshot.data!.yield.toString()),
                          ],
                        ),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey.shade200,
              padding: const EdgeInsets.only(right: 230, top: 0),
              child: Text(
                'Performance',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.blue.shade900),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: getData2(),
                builder: (context, AsyncSnapshot<List<DataModel2>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: dataModel2.toSet().toList().length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: ReUse(
                              title: snapshot.data![index].label.toString(),
                              value: snapshot.data![index].changePercent
                                  .toString(),
                              child: LinearPercentIndicator(
                                width: 140.0,
                                lineHeight: 14.0,
                                percent: 0.5,
                                backgroundColor: Colors.grey,
                                progressColor: Colors.blue,
                              ),
                            ),
                          );
                        });
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
