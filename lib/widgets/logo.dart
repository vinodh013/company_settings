import 'package:company_settings/widgets/button.dart';
import 'package:flutter/material.dart';

class Uploadlogo extends StatelessWidget {
  const Uploadlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 520,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Card(
              color: Colors.greenAccent, // Backgrond color
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: InkWell(
                borderRadius: BorderRadius.circular(24),
                splashColor: Colors.red, // Splash color
                onTap: () {},
                child: Ink(width: 80, height: 80),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Button'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                )),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 50,
                width: 100,
                child:  InkWell(
                  onTap: (){},
                  child:  Container(
                    //width: 100.0,
                    height: 50.0,
                    decoration:  BoxDecoration(
                      color: Color.fromARGB(32, 249, 20, 20),
                      border:  Border.all(color: Colors.red, width: 1.0),
                      borderRadius:  BorderRadius.circular(8.0),
                    ),
                    child:  Center(
                      child:  Text(
                        'Click Me',
                        style:
                             TextStyle(fontSize: 12.0, color: Colors.red),
                      ),
                    ),
                  ),
                ),
                // child: OutlinedButton(

                //   onPressed: () {},
                //   child: Text('Button', style: TextStyle(
                //     color: Colors.red
                //   ),),
                //   style: OutlinedButton.styleFrom(

                //     backgroundColor: Color.fromARGB(36, 255, 17, 0),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                // )),
              ))
        ],
      ),
    );
  }
}
