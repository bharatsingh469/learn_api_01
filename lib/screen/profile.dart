import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Personal'),
              ),
              Tab(
                child: Text('Office'),
              ),
              Tab(
                child: Text('Preference'),
              ),
            ],
          ),
          title: const Text('Profile'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            // tab 1
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10),
                                  )
                                ],
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/user1.png'),
                                )),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                    color: Colors.green),
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Upload Profile Image',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text(
                          '   (Size Should be maximum 2MB.\nImage format must be .jpg or .png)',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    buildTextField('Full Name', 'Enter Your full name'),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField(
                        'Personal Email ID', 'Enter Your personal email id'),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Gender', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Modile Number', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Home Address 1', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Home Address 2', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Landmark', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Home City', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Home Pin code', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Date of Birth', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Twitter url', '',),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('Linkedin url', ''),
                    const SizedBox(
                      height: 20,
                    ),

                    buildTextField('Country', ''),
                    const SizedBox(
                      height: 20,
                    ),
                    buildTextField('State', ''),

                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xff4c505b),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 40,
                    )

                    //
                  ],
                ),
              ),
            ),
           /////////////////////////////////////////////////////// // tab  2
           SingleChildScrollView(
             child: Container(
               padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
               child: Column(
                 children: [
                   Center(
                     child: Stack(
                       children: [
                         Container(
                           width: 200,
                           height: 120,
                           decoration: BoxDecoration(
                               border: Border.all(
                                   width: 4,
                                   color: Theme.of(context)
                                       .scaffoldBackgroundColor),
                               
                               shape: BoxShape.rectangle,
                               image: const DecorationImage(
                                 fit: BoxFit.cover,
                                 image: AssetImage('assets/images/business.png'),
                               )),
                         ),
                       ],
                     ),
                   ),
                   const SizedBox(
                     height: 12,
                   ),
                   const Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(
                         'Upload Business Card',
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                             fontSize: 18),
                       ),
                       Text(
                         '   (Size Should be maximum 2MB.\nImage format must be .jpg or .png)',
                         style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.w300,
                             fontSize: 10),
                       ),
                     ],
                   ),
                   const SizedBox(
                     height: 30,
                   ),
                   buildTextField('Organization', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField(
                       'Designation', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Chapter', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Reporting Designation', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Industry Vertical', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('It Experience Years', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Official Landline no.', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Official Email id', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Office Postal Address', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Referred by', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Pincode', '',),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('Office City', ''),
                   const SizedBox(
                     height: 25,
                   ),
           
                   buildTextField('Country', ''),
                   const SizedBox(
                     height: 25,
                   ),
                   buildTextField('State', ''),
           
                   const SizedBox(
                     height: 50,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       GestureDetector(
                           onTap: () {},
                           child: Container(
                             height: 40,
                             width: 150,
                             decoration: BoxDecoration(
                               color: const Color(0xff4c505b),
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Center(
                               child: Text(
                                 'Previous',
                                 style: TextStyle(color: Colors.white),
                               ),
                             ),
                           )),
                           GestureDetector(
                   
                             onTap: () {},
                           child: Container(
                             height: 40,
                             width: 150,
                             decoration: BoxDecoration(
                               color: const Color(0xff4c505b),
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Center(
                               child: Text(
                                 'Next',
                                 style: TextStyle(color: Colors.white),
                               ),
                             ),
                           )
                   
                           ),
                     ],
                   ),
                   const SizedBox(
                     height: 40,
                   )
           
                   //
                 ],
               ),
             ),
           ),
          
            // tab 3
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  const Text(
                    'T Shirt-Size',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 35,
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          color: const Color(0xff4c505b),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('S-36',style: TextStyle(color: Colors.white, fontSize: 16),)],
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          color: const Color(0xff4c505b),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('S-36',style: TextStyle(color: Colors.white, fontSize: 16),)],
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          color: const Color(0xff4c505b),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('S-36',style: TextStyle(color: Colors.white, fontSize: 16),)],
                          ),
                        ),
                      ),
                    ],
                
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 35,
                        child: Card(
                          margin: EdgeInsets.all(0),
                          color: const Color(0xff4c505b),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('S-36',style: TextStyle(color: Colors.white, fontSize: 16),)],
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: Card(
                          margin: EdgeInsets.all(0),
                          color: const Color(0xff4c505b),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('S-36',style: TextStyle(color: Colors.white, fontSize: 16),)],
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        child: Card(
                          margin: EdgeInsets.all(0),
                          color: const Color(0xff4c505b),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('S-36',style: TextStyle(color: Colors.white, fontSize: 16),)],
                          ),
                        ),
                      ),
                    ],
                
                  ),
                            const SizedBox(
                              height: 20,
                            ),
                            buildTextField('', 'Enter your T Shirt-Size'),
                            const SizedBox(height: 30,),
                             const Text(
                              'Topic of interest',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            
                            
                            const TextField(
                             // onChanged: (value) => _runFilter(value),
                              decoration: InputDecoration(
                                contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  labelText: 'Search',
                   labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                                suffixIcon: Icon(Icons.search),
                               // prefix: Icon(Icons.search),
                              ),
                            ),
                             const SizedBox(
                    height: 50,
                  ),
                  //  next && prev btn
                  Container(
                   // padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xff4c505b),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Previous',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                            GestureDetector(
                    
                              onTap: () {},
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xff4c505b),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                    
                            ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  )
                
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

TextField buildTextField(String labelText, String placeholder, ) {
  return TextField(
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          bottom: 10,
          top: 10,
        ),
        
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        // filled: true,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        )),
  );
}
