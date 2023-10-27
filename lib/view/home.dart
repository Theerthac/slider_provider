import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_provider/controller/slider_provier.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Consumer<SliderProvider>(builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)),
                      child: const Center(
                          child: Text(
                        'container 1',
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value)),
                      child: const Center(
                          child: Text(
                        'container 2',
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                  )
                ],
              )
            ],
          );
        }));
  }
}
