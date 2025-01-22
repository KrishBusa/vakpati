import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vakpati/approvel_admin_show_scrren.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(height: 100),
                      SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset("assets/images/style.png"),
                      ),
                       SizedBox(height: 100),
                       Text(
                        "Enter your one time password",
                        style: TextStyle(fontSize: 20),
                      ),
                       SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          return Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: 50,
                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  } else if (value.isEmpty) {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                style: Theme.of(context).textTheme.headlineMedium,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                       SizedBox(height: 50),
                      SizedBox(
                        height: 60,
                        width: 216,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Approval_admin_Show_Screen(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor:  Color.fromARGB(255, 183, 138, 45),
                          ),
                          child:  Text(
                            "SUBMIT",
                            style: TextStyle(
                              color: Color.fromARGB(255, 254, 249, 245),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                       Spacer(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
