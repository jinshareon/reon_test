import 'package:flutter/material.dart';


class states extends StatefulWidget {
  @override
  _statesState createState() => _statesState();
}

class _statesState extends State<states> {
  String selectedstate ='';

 List<String> states = [
  'Andhra Pradesh',
  'Arunachal Pradesh',
  'Assam',
  'Bihar',
  'Chhattisgarh',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Madhya Pradesh',
  'Maharashtra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
  'West Bengal',
  'Delhi',
  'Puducherry'
];

  @override
  void initState() {
    super.initState();
    selectedstate = states.first; 
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
      value: selectedstate,
      onChanged: (String? newValue) {
        setState(() {
          selectedstate = newValue!;
        });
      },
      items: states.map((String state) {
        return DropdownMenuItem<String>(
          value: state,
          child: Text(state),
        );
      }).toList(),
    );
  }
}
