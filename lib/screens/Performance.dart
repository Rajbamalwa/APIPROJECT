import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../Model/DataModel2.dart';
import 'HomePage.dart';
import 'ReusableCode.dart';

class Performance extends StatelessWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 10),
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
                      itemCount: dataModel2.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ReUse(
                                title: snapshot.data![index].label.toString(),
                                value: snapshot.data![index].changePercent
                                    .toString()),
                          ],
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
    );
  }
}
