import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width =  size.width;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hola, ',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF0093E5),
                          ),
                        ),
                        TextSpan(
                          text: 'Good Morning!',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color.fromARGB(0, 173, 164, 164),
                    elevation: 0,
                    child: Ink(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'What did you fuel up on this \n morning? ',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          // Handle camera button press
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.mic),
                        onPressed: () {
                          // Handle mic button press
                        },
                      ),
                    ],
                  ),
                  hintText: 'Search Your Meal....',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(60), // Adjust the border radius
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Breakfast button press
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xFFFFFFFF),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                        child: const Text('Breakfast'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Lunch button press
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xFFD4FAFA),
                        ),
                        child: const Text('Lunch'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Dinner button press
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xFFD4FAFA),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomRight: Radius.circular(60),
                            ),
                          ),
                        ),
                        child: const Text('Dinner'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 30),
            child:Stack(
              children:[
            Container(
              width: width,
              height: height/4.4,
              
              decoration: BoxDecoration(
                color: Color(0xFF44A1D6),
                borderRadius: BorderRadius.circular(15),
              ),
            ) ,
            const Positioned(
              top:15,
              left: 10,
              child: Image(image: AssetImage('assets/pngs/masalaidli.png'))
              ),
               Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 60,
                  height: 20,
                  margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 11, 11, 11),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Breakfast',
                       style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                    ),
                  ),
              ),
            ),
             const Positioned(
        top: 10,  
        left: 130, 
        child: Text(
          'Masala Idli',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      const Positioned(
        top: 30,  
        left: 130, 
        child: Text(
          'Qunatity: 7',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
      const Positioned(
  top: 60,
  left: 130,
  child: Stack(
    children: [
      SizedBox(
        width: 170,
        height: 15,
        child: LinearProgressIndicator(
          value: 0.3,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF01F1FF)),
        ),
      ),
      Positioned(
        top: 0,
        left: 6,
        child: Text(
          '455 Kcal',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      Positioned(
        top: 0,
        left:70 ,
        child: Text(
          'Carbohydrates',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  ),
),
      const Positioned(
  top: 85,
  left: 130,
  child: Stack(
    children: [
      SizedBox(
        width: 170,
        height: 15,
        child: LinearProgressIndicator(
          value: 0.7,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF01F1FF)),
        ),
      ),
      Positioned(
        top: 0,
        left: 20,
        child: Text(
          '1445 Kcal',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      Positioned(
        top: 0,
        left:125 ,
        child: Text(
          'Protiens',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  ),
),
const Positioned(
  top: 110,
  left: 130,
  child: Stack(
    children: [
      SizedBox(
        width: 170,
        height: 15,
        child: LinearProgressIndicator(
          value: 0.5,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF01F1FF)),
        ),
      ),
      Positioned(
        top: 0,
        left: 25,
        child: Text(
          '355% Kcal',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      Positioned(
        top: 0,
        left:100 ,
        child: Text(
          'Lipids',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  ),
),

      
      
          ],
            ),
          ),
          
            Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
                  child: ClipRRect(
                  borderRadius:  BorderRadius.circular(30),
                    child: BottomNavigationBar(
                    backgroundColor: Color.fromARGB(255, 68, 161, 214),                    
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    selectedIconTheme: IconThemeData(color: Color.fromARGB(255, 187, 242, 70),),
                    unselectedItemColor: Color.fromARGB(255, 243, 248, 255),
                    type: BottomNavigationBarType.fixed,                     
                    items:  const [
                      BottomNavigationBarItem(icon: Icon(Icons.home), label: "",),
                      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/pngs/water.png'),color: Colors.white,),  label: "",),
                      BottomNavigationBarItem(icon: Icon(Icons.bubble_chart_outlined), label: "",),
                      BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/pngs/heart.png'),color: Colors.white,),  label: "",/*backgroundColor: Colors.white*/),
                      BottomNavigationBarItem(icon: Icon(Icons.person),  label: "",/*backgroundColor: Colors.white*/),
                    ],
                    ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
