import 'package:flutter/material.dart';

// ignore: camel_case_types
class button extends StatelessWidget {
  final String title;
  const button({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(98, 102, 220, 1.0)),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Container(
                    width: 300,
                    height: 260,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.check))),
                          ),
                          const SizedBox(
                            height: 14.01,
                          ),
                          const Text(
                            'Success',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Center(
                              child: Text(
                                  'The information is successfully submitted',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13))),
                          const SizedBox(
                            height: 23,
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('close'))
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
