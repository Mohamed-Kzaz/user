import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var selectedValue = 'v1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إنشاء حساب'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedValue,
          items: const [
            DropdownMenuItem(value: 'v1', child: Text('v1')),
            DropdownMenuItem(value: 'v2', child: Text('v2')),
            DropdownMenuItem(value: 'v3', child: Text('v3')),
          ],
          onChanged: (v) {
            setState(() {
              selectedValue = v!;
            });
          },
        ),
      ),
    );
  }
}
