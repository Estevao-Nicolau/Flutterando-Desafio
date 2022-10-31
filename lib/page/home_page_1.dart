import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget widgetLogo() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Image.asset('assets/logo1.png'),
      ),
    );
  }

  Widget widgetSizedBox() {
    return const SizedBox(height: 20);
  }

  Widget widgetTextTitle() {
    return Column(
      children: const <Widget>[
        Text(
          'Get your Money\n Under Control',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget widgetText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const <Widget>[
          Text(
            'Manage your expenses.\n         Seamlessly.',
            style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 18.0,
                color: Colors.white),
          ),
        ],
      ),
    );
  }

// color: const Color.fromARGB(255, 94, 91, 241),
  Widget widgetButton() {
    return Container(
        //child: Image.asset('assets/google-logo.png'),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 94, 91, 241),
        ),
        child: Expanded(
          child: Row(
            children: const [
              Text(
                ' Sign Up with Email ID',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }

  Widget widgetButtonIcon() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Flexible(
          child: Row(
            children: [
              Flexible(
                child: Image.asset(
                  'assets/google-logo.png',
                ),
              ),
              const Text(
                'Sign Up with Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }

  Widget widgetButtonText() {
    return RichText(
      text: const TextSpan(
        text: 'Already have an account? ',
        children: <TextSpan>[
          TextSpan(
            text: 'Sign In',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              widgetLogo(),
              widgetSizedBox(),
              widgetTextTitle(),
              widgetText(),
            ],
          ),
          Column(
            children: <Widget>[
              widgetButton(),
              widgetSizedBox(),
              widgetButtonIcon(),
              widgetSizedBox(),
              widgetButtonText(),
            ],
          ),
        ],
      ),
    ));
  }
}
