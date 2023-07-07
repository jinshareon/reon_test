import 'package:flutter/material.dart';

class timezone extends StatefulWidget {
  @override
  _timezoneState createState() => _timezoneState();
}

class _timezoneState extends State<timezone> {
  String selectedtimezone ='';

 List<String> timezone = ['UTC',
      'GMT',
      'EST',
      'CST',
      'MST',
      'PST',
      'IST',
      'CET',
      'EET',
      'AST',
      'AKST',
      'HST',
      'JST',
      'AEST',
      'NZST',
  
];

  @override
  void initState() {
    super.initState();
    selectedtimezone = timezone.first; 
  }


  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(   fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
      ),isExpanded: true,
      value: selectedtimezone,
      onChanged: (String? newValue) {
        setState(() {
          selectedtimezone = newValue!;
        });
      },
      items: timezone.map((String timezone) {
        return DropdownMenuItem<String>(
          value: timezone,
          child: Text(timezone),
        );
      }).toList(),
    );
  }
}
