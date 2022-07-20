import 'package:cy_app/provider/welcome_provider.dart';
import 'package:cy_app/view/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override
  State<EnterCode> createState() => EnterCodeState();
}

class EnterCodeState extends State<EnterCode> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<WelcomeProvider>(builder: (context, provider, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                icon: Icon(Icons.numbers),
                labelText: "Enter ifsc",
              ),
              // focusNode: myFocusNode,
              onSubmitted: (val) {
                // setState(() {
                //   _items.add(val);
                // });
                // myController.clear();
                // myFocusNode.requestFocus();
              },
            ),
          ),
          provider.model != null ? Text(provider.model!.bANK!) : Container(),
          ElevatedButton(
            // color: Colors.accents  ,
            onPressed: () {
              provider.getBankApi(controller.text);
              Future.delayed(const Duration(seconds: 2), () async {
                // do something here
                if (provider.model!.bANK!.isNotEmpty) {
                  provider.setBankName(provider.model!.bANK!);
                }
              });
            },
            child: const Text("Check"),
          ),
          Container(
              padding: const EdgeInsets.only(top: 20),
              child: !provider.isLoaded
                  ? Container()
                  : ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const WelcomePage())));
                      },
                      child: const Text("Next"),
                    )),
        ],
      );
    }));
  }
}
