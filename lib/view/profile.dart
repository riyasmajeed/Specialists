import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class profiledetils extends StatefulWidget {
  const profiledetils({super.key});

  @override
  State<profiledetils> createState() => _profiledetilsState();
}

class _profiledetilsState extends State<profiledetils> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SizedBox(
        child: Stack(
          children: [
            Column(
            children: [
            
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            image: DecorationImage(image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThseXcR7Rhd2xTkF1wYI902l-GatS7wFzXXw&s'),
             fit: BoxFit.cover,)
                ),
            
            
                child: Stack(
                
            children: [
                
                Positioned(
            top: 30,
            left: 10,
            child: Container(
            height: 40,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(38, 215, 202, 202)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back_ios,color: Color.fromARGB(197, 255, 255, 255),),
            ),
            )),
            
                 
                
            ],
                ),
              )
            ],
            
            
            ),
        
          Positioned(
            bottom: 220,
            right: 45,
            child: Container(
        height: 190,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 52, 41, 37),
          
        ),
        child: Stack(
        
          children: [
        
             Positioned(
              top: 10,
              left: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '5.0',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
             ),
        
             Positioned(
         top: 10,
              right: 10,
        child:
        Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(55, 243, 239, 239),
        ),
        child: Icon(Icons.favorite_border_outlined, size: 20,color: Colors.white,),
            ) ),
        
            Positioned(
        top: 50,
              left: 95,
        child: 
            Column(
          
        children: [
        
        Row(
          children: [
         Text(
                    'Daria Serova',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                   
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.verified,
                    color: const Color.fromARGB(255, 35, 119, 244),
                  ),
        
          ],
        ),
        
        
        
        ],
            )
            ),
            Positioned(
              top: 80,
              left: 70,
              child: Row(
                children: [
                  Text(
                    'Photographer ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '| Tbilisi, Georgia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
        
            Positioned(
        bottom: 20,
        left: 15,
        right: 15,
              child: Row(
            
         
              children: [
              
                Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(44, 223, 219, 219)),
                     child: Icon(Ionicons.logo_facebook,color: Colors.white),      
                ),
              SizedBox(width: 20,),
                 Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(44, 223, 219, 219)),
                     child: Icon(Ionicons.logo_instagram,color: Colors.white),      
                ),
                   SizedBox(width: 20,),
                 Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(44, 223, 219, 219)),
                     child: Icon(Ionicons.logo_twitter,color: Colors.white),      
                ),
                   SizedBox(width: 20,),
                 Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(44, 223, 219, 219)),
                     child: Icon(Ionicons.logo_web_component,color: Colors.white),      
                ),
                   SizedBox(width: 20,),
                 Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(44, 223, 219, 219)),
                     child: Icon(Ionicons.logo_google,color: Colors.white,),      
                )
        
        
              ],
                        )
                        )
          ],
        
        
        ),
          )
          ),
        
        
          Positioned(
             bottom: 365,
            right: 170,
            child: 
           Container(
                height:95,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(color: Colors.white, width: 5),
                  image: DecorationImage(
                    image: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww'),
                    fit: BoxFit.cover,
                  ),
                ),
               
              ),
          ),
        
        
        Positioned(
          bottom: 140,
          left: 10,
          right: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
        height: 50,
          
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Text('Portfolio',style: TextStyle(
            fontSize: 18,color: Colors.black
          ),),
          Icon(Icons.arrow_forward_ios)
          
            ],
          ),
        ),
            ),
          ),
        ),
        
        Positioned(
          bottom: 70,
          left: 10,
          right: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
        height: 50,
          
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Text('Price',style: TextStyle(
            fontSize: 18,color: Colors.black
          ),),
          Icon(Icons.arrow_forward_ios)
          
            ],
          ),
        ),
            ),
          ),
        ),
        
        
        Positioned(
            bottom: 1,
          left: 10,
          right: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             height: 50,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color.fromARGB(255, 52, 41, 37),
             ),
            child: Center(
              child: Text('Message',style: TextStyle(color: Colors.white,fontSize: 15),),
            ),
                    ),
          ))
        
          ],
        ),

       
      ),
    );
  }
}