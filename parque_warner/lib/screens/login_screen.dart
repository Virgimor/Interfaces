import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parque_warner/screens/warner_beach_screen.dart';

class LoginScreen extends StatefulWidget {

  static const String name = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 7)).then((value){
      context.goNamed(WarnerBeachScreen.name);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height-230,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/portada.png'), fit: BoxFit.cover)
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 5,
                backgroundColor: Color.fromARGB(255, 8, 114, 72),
                color: Color.fromARGB(255, 71, 70, 70),
              ),
            ],
          ),
        )),
    );
  }
}