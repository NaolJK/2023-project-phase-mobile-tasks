import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget{


  Widget build(BuildContext context){


    return SafeArea(
      child: Scaffold(
    
        backgroundColor:Color.fromRGBO(238, 111, 87,1),
    
        body: Container(
    
          margin: EdgeInsets.only(bottom: 70),
    
          child: SafeArea(
    
            child: Column(
    
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
              children: [
    
                Image.asset('assets/painting.png',
    
                fit: BoxFit.fill,),
                
                FloatingActionButton.extended(
    
                  onPressed: (){
                    Navigator.of(context).pushNamed("/all");
                  },
    
                  label: 
    
                    Text("Get Started", 
    
                      style:  TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.w700,
                        fontSize: 19
                        ),
                    ),
    
                  backgroundColor: Color.fromRGBO(12, 140, 233, 1),
    
                  extendedPadding: EdgeInsets.all(40),
    
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    
                )
            ],
          ) 
            ),
        ),
      ),
    );
  }
}