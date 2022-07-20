class WelcomeModel {
  String? mICR;
  String? bRANCH;
  String? aDDRESS;
  String? sTATE;
  String? cONTACT;
  bool? uPI;
  bool? rTGS;
  String? cITY;
  String? cENTRE;
  String? dISTRICT;
  bool? nEFT;
  bool? iMPS;
  String? sWIFT;
  String? iSO3166;
  String? bANK;
  String? bANKCODE;
  String? iFSC;

  WelcomeModel(
      {this.mICR,
      this.bRANCH,
      this.aDDRESS,
      this.sTATE,
      this.cONTACT,
      this.uPI,
      this.rTGS,
      this.cITY,
      this.cENTRE,
      this.dISTRICT,
      this.nEFT,
      this.iMPS,
      this.sWIFT,
      this.iSO3166,
      this.bANK,
      this.bANKCODE,
      this.iFSC});

  WelcomeModel.fromJson(Map<String, dynamic> json) {
    mICR = json['MICR'];
    bRANCH = json['BRANCH'];
    aDDRESS = json['ADDRESS'];
    sTATE = json['STATE'];
    cONTACT = json['CONTACT'];
    uPI = json['UPI'];
    rTGS = json['RTGS'];
    cITY = json['CITY'];
    cENTRE = json['CENTRE'];
    dISTRICT = json['DISTRICT'];
    nEFT = json['NEFT'];
    iMPS = json['IMPS'];
    sWIFT = json['SWIFT'];
    iSO3166 = json['ISO3166'];
    bANK = json['BANK'];
    bANKCODE = json['BANKCODE'];
    iFSC = json['IFSC'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MICR'] = mICR;
    data['BRANCH'] = bRANCH;
    data['ADDRESS'] = aDDRESS;
    data['STATE'] = sTATE;
    data['CONTACT'] = cONTACT;
    data['UPI'] = uPI;
    data['RTGS'] = rTGS;
    data['CITY'] = cITY;
    data['CENTRE'] = cENTRE;
    data['DISTRICT'] = dISTRICT;
    data['NEFT'] = nEFT;
    data['IMPS'] = iMPS;
    data['SWIFT'] = sWIFT;
    data['ISO3166'] = iSO3166;
    data['BANK'] = bANK;
    data['BANKCODE'] = bANKCODE;
    data['IFSC'] = iFSC;
    return data;
  }
}
