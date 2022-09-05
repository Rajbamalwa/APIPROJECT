import 'package:flutter/material.dart';
import 'package:newapiproject/Model/DataModel.dart';
import 'HomePage.dart';
import 'ReusableCode.dart';

class OverView extends StatelessWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<DataModel?>(
          future: getData(),
          builder: (context, AsyncSnapshot<DataModel?> snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  ReUse(
                      title: 'Sector', value: snapshot.data!.sector.toString()),
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
                      value: snapshot.data!.bookNavPerShare.toString()),
                  ReUse(
                      title: 'Price-Earning Ratio (PE)',
                      value: snapshot.data!.ttmpe.toString()),
                  ReUse(
                      title: 'PEG Ratio',
                      value: snapshot.data!.pEGRatio.toString()),
                  ReUse(
                      title: 'Dividend Yield',
                      value: snapshot.data!.yield.toString()),
                  ReUse(
                      title: 'IndustryID',
                      value: snapshot.data!.industryID.toString()),
                  ReUse(
                      title: 'SectorID',
                      value: snapshot.data!.sectorID.toString()),
                  ReUse(
                      title: 'Security',
                      value: snapshot.data!.security.toString()),
                  ReUse(
                      title: 'EVDateEnd',
                      value: snapshot.data!.eVDateEnd.toString()),
                  ReUse(
                      title: 'TTMYearEnd',
                      value: snapshot.data!.tTMYearEnd.toString()),
                  ReUse(
                      title: 'SectorSlug',
                      value: snapshot.data!.sectorSlug.toString()),
                  ReUse(
                      title: 'IndustrySlug',
                      value: snapshot.data!.industrySlug.toString()),
                  ReUse(
                      title: 'SecuritySlug',
                      value: snapshot.data!.securitySlug.toString()),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
