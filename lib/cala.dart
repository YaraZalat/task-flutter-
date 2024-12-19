import 'package:flutter/material.dart';



class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  double result=0;
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(('Cala App')),
        ),
        body: Column(
          children: [
            Text(
              '$result',
              style: const TextStyle(
                fontSize: 35,
                color: Colors.black
              ),),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: n1,
                decoration: InputDecoration(
                  label: Text("First Number"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: n2,
                decoration: InputDecoration(
                    label: Text("Second Number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    child: Text("+"),
                    color: Colors.blue,
                    onPressed: (){
                      double firstnumber=double.parse(n1.text);
                      double secondnumber=double.parse(n2.text);
                      result=firstnumber+secondnumber;
                      setState(() {

                      });
                    }),
                MaterialButton(
                    child: Text("-"),
                    color: Colors.blue,
                    onPressed: (){
                      double firstnumber=double.parse(n1.text);
                      double secondnumber=double.parse(n2.text);
                      result=firstnumber-secondnumber;
                      setState(() {

                      });
                    }),
                MaterialButton(
                    child: Text("x"),
                    color: Colors.blue,
                    onPressed: (){
                      double firstnumber=double.parse(n1.text);
                      double secondnumber=double.parse(n2.text);
                      result=firstnumber*secondnumber;
                      setState(() {

                      });
                    }),
                MaterialButton(
                    child: Text("/"),
                    color: Colors.blue,
                    onPressed: (){

                      double firstnumber=double.parse(n1.text);
                      double secondnumber=double.parse(n2.text);

                      result=(firstnumber/secondnumber) ;
                      setState(() {

                      });
                    })
              ],
            )
          ],

        ),
      ),
    );
  }
}
