import 'package:flutter/material.dart';

class QuickInvest extends StatelessWidget {
  const QuickInvest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quick Invest"),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Text(""),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[200],
                    child: const Text(""),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[300],
                    child: const Text(""),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[400],
                    child: const Text(""),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[500],
                    child: const Text(""),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text(""),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
