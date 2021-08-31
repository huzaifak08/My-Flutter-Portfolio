import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/components/slide_menu.dart';
import 'package:flutter_profile/screens/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SlideMenu(),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                        // our footer
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
