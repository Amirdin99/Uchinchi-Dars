import 'package:shared_preferences/shared_preferences.dart';

Future<int> setData(int number) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  preferences.setInt("NUMBER", number);
  return number;
}
Future<int> getData() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  int? number = preferences.getInt("NUMBER");
  if (number == null) {
    return 0;
  } else
    return number;
}
