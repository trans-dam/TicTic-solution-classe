import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/login/login.dart';
import 'package:tictic/screens/register/register.dart';
import 'package:tictic/screens/welcome/welcome.dart';

final routes = {
  Welcome.routeName: (context) => Welcome(),
  HomeScreen.routeName: (context) => HomeScreen(),
  Register.routeName: (context) => Register(),
  Login.routeName: (context) => Login(),
};
