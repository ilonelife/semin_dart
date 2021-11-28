/*
IP 어드레스 검사
당신은 어느 프로그램에서 IP 주소를 입력 하는 기능의 일부를 개발하고 있습니다.
입력은 "." 과 "숫자" 로 구성된 길이가 N인 문자열이 입력됩니다.
입력 된 IP 주소가 서식에 적합한 지 판정하여 맞으면 True, 다르면 False를 출력하는 프로
그램을 작성하십시오.
판별할 IP 주소는 IPv4로 정의 된 IP 주소이고 형식은 다음과 같습니다.
점(.) 으로 구분 된 10 진수 4개의 숫자로 표시
숫자의 범위는 0에서 255 사이의 수
 */

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> ipaddress = [];
  int count = int.parse(stdin.readLineSync(encoding: utf8));

  IpAddress ipAddress = IpAddress();

  for (int i = 0; i < count; i++) {
    String imsi = stdin.readLineSync(encoding: utf8);
    ipaddress.add(imsi);
  }

  ipAddress.checkIpaddress(ipaddress).forEach(print);

}

class IpAddress {
  List<bool> result = [];
  RegExp ipExp = RegExp(
      r"^(?!0)(?!.*\.$)((1?\d?\d|25[0-5]|2[0-4]\d)(\.|$)){4}$",
      caseSensitive: false,
      multiLine: false);

  List<bool> checkIpaddress(List<String> ipaddress) {
    bool temp;
    for (int i = 0; i < ipaddress.length; i++) {
      temp = (ipExp.hasMatch(ipaddress[i])) ? true : false;
      result.add(temp);
    }
    return result;
  }
}
