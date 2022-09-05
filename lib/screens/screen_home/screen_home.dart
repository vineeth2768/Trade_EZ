import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye_rounded)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.wallet)),
                      ],
                    )),
              ),
              DataTable(columns: [
                const DataColumn(
                  label: Text("Product"),
                ),
                const DataColumn(
                  label: Text("Price"),
                ),
                const DataColumn(
                  label: Text("Qty"),
                ),
                const DataColumn(
                  label: Text("Subtotal"),
                ),
                DataColumn(
                  label: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                ),
                DataColumn(
                  label: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete)),
                ),
              ], rows: const []),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.yellow,
                          child: const Text("Credit payment"),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.green,
                          child: const Text("Creadit payment"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          child: const Text("Creadit payment"),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.teal,
                          child: const Text("Creadit payment"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
          Expanded(child: ListView()),
        ],
      )),
    );
  }
}
