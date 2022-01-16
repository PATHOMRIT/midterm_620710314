// ignore_for_file: avoid_print
import 'dart:io';
  void main() {
    var girth = stdin.readLineSync();
    var length = stdin.readLineSync();
    var girthCal = double.tryParse(girth!);
    var lengthCal = double.tryParse(length!);
    var weigth = (girthCal!*0.01 * girthCal!*0.01)* lengthCal!*0.01 * 69.3;
    print(weigth.toString());
    var sell = weigth*112.50;
    print(sell.toString());
  }
