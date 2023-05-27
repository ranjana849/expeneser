import 'package:flutter/material.dart';
class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade200,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Center(
                child: Text('Singin',style: TextStyle(fontSize: 34,
                color: Colors.black,
                fontWeight: FontWeight.w900),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
