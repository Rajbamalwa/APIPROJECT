/// ID : 6749
/// Security : "HDFC Bank Ltd."
/// IndustryID : 107
/// Industry : "Bank - Private"
/// SectorID : 6
/// Sector : "Banking"
/// MCAP : 8271751073484.4
/// EV : null
/// EVDateEnd : null
/// BookNavPerShare : 461.03
/// TTMPE : 20.8305
/// TTMYearEnd : 202206
/// Yield : 1.043
/// YearEnd : 202203
/// SectorSlug : "banking"
/// IndustrySlug : "bank-private"
/// SecuritySlug : "hdfc-bank"
/// PEGRatio : 1.0405389212746294

class DataModel {
  DataModel({
    num? id,
    String? security,
    num? industryID,
    String? industry,
    num? sectorID,
    String? sector,
    num? mcap,
    dynamic ev,
    dynamic eVDateEnd,
    num? bookNavPerShare,
    num? ttmpe,
    num? tTMYearEnd,
    num? yield,
    num? yearEnd,
    String? sectorSlug,
    String? industrySlug,
    String? securitySlug,
    num? pEGRatio,
  }) {
    _id = id;
    _security = security;
    _industryID = industryID;
    _industry = industry;
    _sectorID = sectorID;
    _sector = sector;
    _mcap = mcap;
    _ev = ev;
    _eVDateEnd = eVDateEnd;
    _bookNavPerShare = bookNavPerShare;
    _ttmpe = ttmpe;
    _tTMYearEnd = tTMYearEnd;
    _yield = yield;
    _yearEnd = yearEnd;
    _sectorSlug = sectorSlug;
    _industrySlug = industrySlug;
    _securitySlug = securitySlug;
    _pEGRatio = pEGRatio;
  }

  DataModel.fromJson(dynamic json) {
    _id = json['ID'];
    _security = json['Security'];
    _industryID = json['IndustryID'];
    _industry = json['Industry'];
    _sectorID = json['SectorID'];
    _sector = json['Sector'];
    _mcap = json['MCAP'];
    _ev = json['EV'];
    _eVDateEnd = json['EVDateEnd'];
    _bookNavPerShare = json['BookNavPerShare'];
    _ttmpe = json['TTMPE'];
    _tTMYearEnd = json['TTMYearEnd'];
    _yield = json['Yield'];
    _yearEnd = json['YearEnd'];
    _sectorSlug = json['SectorSlug'];
    _industrySlug = json['IndustrySlug'];
    _securitySlug = json['SecuritySlug'];
    _pEGRatio = json['PEGRatio'];
  }
  num? _id;
  String? _security;
  num? _industryID;
  String? _industry;
  num? _sectorID;
  String? _sector;
  num? _mcap;
  dynamic _ev;
  dynamic _eVDateEnd;
  num? _bookNavPerShare;
  num? _ttmpe;
  num? _tTMYearEnd;
  num? _yield;
  num? _yearEnd;
  String? _sectorSlug;
  String? _industrySlug;
  String? _securitySlug;
  num? _pEGRatio;
  DataModel copyWith({
    num? id,
    String? security,
    num? industryID,
    String? industry,
    num? sectorID,
    String? sector,
    num? mcap,
    dynamic ev,
    dynamic eVDateEnd,
    num? bookNavPerShare,
    num? ttmpe,
    num? tTMYearEnd,
    num? yield,
    num? yearEnd,
    String? sectorSlug,
    String? industrySlug,
    String? securitySlug,
    num? pEGRatio,
  }) =>
      DataModel(
        id: id ?? _id,
        security: security ?? _security,
        industryID: industryID ?? _industryID,
        industry: industry ?? _industry,
        sectorID: sectorID ?? _sectorID,
        sector: sector ?? _sector,
        mcap: mcap ?? _mcap,
        ev: ev ?? _ev,
        eVDateEnd: eVDateEnd ?? _eVDateEnd,
        bookNavPerShare: bookNavPerShare ?? _bookNavPerShare,
        ttmpe: ttmpe ?? _ttmpe,
        tTMYearEnd: tTMYearEnd ?? _tTMYearEnd,
        yield: yield ?? _yield,
        yearEnd: yearEnd ?? _yearEnd,
        sectorSlug: sectorSlug ?? _sectorSlug,
        industrySlug: industrySlug ?? _industrySlug,
        securitySlug: securitySlug ?? _securitySlug,
        pEGRatio: pEGRatio ?? _pEGRatio,
      );
  num? get id => _id;
  String? get security => _security;
  num? get industryID => _industryID;
  String? get industry => _industry;
  num? get sectorID => _sectorID;
  String? get sector => _sector;
  num? get mcap => _mcap;
  dynamic get ev => _ev;
  dynamic get eVDateEnd => _eVDateEnd;
  num? get bookNavPerShare => _bookNavPerShare;
  num? get ttmpe => _ttmpe;
  num? get tTMYearEnd => _tTMYearEnd;
  num? get yield => _yield;
  num? get yearEnd => _yearEnd;
  String? get sectorSlug => _sectorSlug;
  String? get industrySlug => _industrySlug;
  String? get securitySlug => _securitySlug;
  num? get pEGRatio => _pEGRatio;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['Security'] = _security;
    map['IndustryID'] = _industryID;
    map['Industry'] = _industry;
    map['SectorID'] = _sectorID;
    map['Sector'] = _sector;
    map['MCAP'] = _mcap;
    map['EV'] = _ev;
    map['EVDateEnd'] = _eVDateEnd;
    map['BookNavPerShare'] = _bookNavPerShare;
    map['TTMPE'] = _ttmpe;
    map['TTMYearEnd'] = _tTMYearEnd;
    map['Yield'] = _yield;
    map['YearEnd'] = _yearEnd;
    map['SectorSlug'] = _sectorSlug;
    map['IndustrySlug'] = _industrySlug;
    map['SecuritySlug'] = _securitySlug;
    map['PEGRatio'] = _pEGRatio;
    return map;
  }
}
