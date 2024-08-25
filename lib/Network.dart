import 'dart:io';

const PREF_DOH_CLOUDFLARE = 1;
const PREF_DOH_GOOGLE = 2;
const PREF_DOH_ADGUARD = 3;
const PREF_DOH_QUAD9 = 4;
const PREF_DOH_ALIDNS = 5;
const PREF_DOH_DNSPOD = 6;
const PREF_DOH_360 = 7;
const PREF_DOH_QUAD101 = 8;
const PREF_DOH_MULLVAD = 9;
const PREF_DOH_CONTROLD = 10;
const PREF_DOH_NJALLA = 11;
const PREF_DOH_SHECAN = 12;
const PREF_DOH_LIBREDNS = 13;

class CustomHttpOverrides extends HttpOverrides {
  final int dohProvider;

  CustomHttpOverrides(this.dohProvider);

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client = super.createHttpClient(context);

    switch (dohProvider) {
      case PREF_DOH_CLOUDFLARE:
        return client..findProxy = _dohProxy("https://cloudflare-dns.com/dns-query");
      case PREF_DOH_GOOGLE:
        return client..findProxy = _dohProxy("https://dns.google/dns-query");
      case PREF_DOH_ADGUARD:
        return client..findProxy = _dohProxy("https://dns-unfiltered.adguard.com/dns-query");
      case PREF_DOH_QUAD9:
        return client..findProxy = _dohProxy("https://dns.quad9.net/dns-query");
      case PREF_DOH_ALIDNS:
        return client..findProxy = _dohProxy("https://dns.alidns.com/dns-query");
      case PREF_DOH_DNSPOD:
        return client..findProxy = _dohProxy("https://doh.pub/dns-query");
      case PREF_DOH_360:
        return client..findProxy = _dohProxy("https://doh.360.cn/dns-query");
      case PREF_DOH_QUAD101:
        return client..findProxy = _dohProxy("https://dns.twnic.tw/dns-query");
      case PREF_DOH_MULLVAD:
        return client..findProxy = _dohProxy("https://doh.mullvad.net/dns-query");
      case PREF_DOH_CONTROLD:
        return client..findProxy = _dohProxy("https://freedns.controld.com/p0");
      case PREF_DOH_NJALLA:
        return client..findProxy = _dohProxy("https://dns.njal.la/dns-query");
      case PREF_DOH_SHECAN:
        return client..findProxy = _dohProxy("https://free.shecan.ir/dns-query");
      case PREF_DOH_LIBREDNS:
        return client..findProxy = _dohProxy("https://doh.libredns.gr/dns-query");
      default:
        return client;
    }
  }

  String Function(Uri) _dohProxy(String dohUrl) {
    return (uri) {
      return HttpClient.findProxyFromEnvironment(uri, environment: {"https_proxy": dohUrl});
    };
  }
}

