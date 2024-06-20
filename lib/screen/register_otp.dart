import 'package:flutter/material.dart';

class OtpRegisterScreen extends StatefulWidget {
  const OtpRegisterScreen({super.key});

  @override
  State<OtpRegisterScreen> createState() => _OtpRegisterScreenState();
}

class _OtpRegisterScreenState extends State<OtpRegisterScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Stack(
          children: [
            Container(
               padding: const EdgeInsets.only(left: 35.0, top: 130),
              child: const Text(
                'Verification',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
             SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'OTP',
                        labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Please Enter Otp',
                        hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                       color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                     GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'profile');
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color(0xff4c505b),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'OTP Verify',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                )
              ),),

          ],
         ),
      ),
    );
  }
}