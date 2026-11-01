import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTip App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: UTip(),
    );
  }
}

class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  // personcounter variable
   int  _personcounter = 1;
//methods 
void decrement(){
 setState(() {
  if (_personcounter > 0)
   _personcounter--;
 });
}
void increment(){
 setState(() {
   _personcounter = _personcounter + 1;
 });
}

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('UTip App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: theme.colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text('Total per person',
                  style: style,),
                  Text('\$23.48',
                  style: style.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: theme.textTheme.displayMedium!.fontSize
                  ),)
                ],
              ),  
            ),
          ),
          //form
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: theme.colorScheme.primary,
                  width: 2
                )
              ),
              //input bar
              child: Column(
                children: [
                  TextField(
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.attach_money),
                      labelText: 'Bill Amount',
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {
                      print("Value: $value");
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Split',
                      style: theme.textTheme.titleMedium),
                      Row(
                        children:[
                          IconButton(
                            color: theme.colorScheme.primary,
                            onPressed: decrement, icon: const Icon(Icons.remove)),
                          Text('$_personcounter',
                          style: theme.textTheme.titleMedium),
                          IconButton(
                            color: theme.colorScheme.primary,
                            onPressed: increment, icon: const Icon(Icons.add)),
                        ]
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
