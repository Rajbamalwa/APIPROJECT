/// ID : 1
/// Label : "1 Day"
/// ChartPeriodCode : "1D"
/// ChangePercent : 0.64

class DataModel2 {
  DataModel2({
    num? id,
    String? label,
    String? chartPeriodCode,
    num? changePercent,
  }) {
    _id = id;
    _label = label;
    _chartPeriodCode = chartPeriodCode;
    _changePercent = changePercent;
  }

  DataModel2.fromJson(dynamic json) {
    _id = json['ID'];
    _label = json['Label'];
    _chartPeriodCode = json['ChartPeriodCode'];
    _changePercent = json['ChangePercent'];
  }
  num? _id;
  String? _label;
  String? _chartPeriodCode;
  num? _changePercent;
  DataModel2 copyWith({
    num? id,
    String? label,
    String? chartPeriodCode,
    num? changePercent,
  }) =>
      DataModel2(
        id: id ?? _id,
        label: label ?? _label,
        chartPeriodCode: chartPeriodCode ?? _chartPeriodCode,
        changePercent: changePercent ?? _changePercent,
      );
  num? get id => _id;
  String? get label => _label;
  String? get chartPeriodCode => _chartPeriodCode;
  num? get changePercent => _changePercent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['Label'] = _label;
    map['ChartPeriodCode'] = _chartPeriodCode;
    map['ChangePercent'] = _changePercent;
    return map;
  }
}
