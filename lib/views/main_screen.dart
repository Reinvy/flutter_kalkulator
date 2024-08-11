import 'package:flutter/material.dart';
import 'package:flutter_kalkulator/view_models/calculator_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    CalculatorViewModel calculator = Provider.of<CalculatorViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              color: Colors.blue,
            ),
            Expanded(
                child: Text(
              "99",
              style: TextStyle(),
            )),
            Text(calculator.tempDisplay, textAlign: TextAlign.end),
            GridView.builder(
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                itemCount: calculator.button.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (ctx, i) {
                  return InkWell(
                    onTap: () {
                      calculator.decisionMaking(calculator.button[i].operator,
                          calculator.button[i].symbol);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                      ),
                      height: 10,
                      width: 10,
                      child: Center(
                        child: Text(
                          calculator.button[i].symbol,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
