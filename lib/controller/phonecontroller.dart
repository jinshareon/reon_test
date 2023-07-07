import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class phonenum extends StatelessWidget {
  phonenum({super.key});
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(227, 229, 229, 1),
            ),
            borderRadius: BorderRadius.circular(8)),
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
  }
}
