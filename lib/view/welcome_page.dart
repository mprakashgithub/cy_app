import 'package:cy_app/provider/welcome_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  double? _height;
  late WelcomeProvider welcomeProvider;

  @override
  void initState() {
    super.initState();
    welcomeProvider = Provider.of<WelcomeProvider>(context, listen: false);
    welcomeProvider.getBankApi();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Consumer<WelcomeProvider>(builder: (context, provider, child) {
      return SafeArea(
        child: Container(
            height: _height,
            padding: const EdgeInsets.only(top: 20),
            child: !provider.isLoaded
                ? const Center(child: CircularProgressIndicator())
                : Center(
                    child: Text("Welcome to ${provider.model!.bANK} "),
                  )),
      );
    }));
  }
}
