import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jivonjor/screens/custom_widgets/custom_text_field.dart';
import 'package:jivonjor/utils/app_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int isSelectedOTP = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isSelectedOTP = 1;
                        });
                      },
                      child: Container(
                        height: 80,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          color: isSelectedOTP == 1 ? Colors.amber : Colors.white,
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Login With \n OTP".toUpperCase(),
                            style: TextStyle(
                                fontSize: 16,
                                color: isSelectedOTP == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20.0,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isSelectedOTP = 2;
                        });
                      },
                      child: Container(
                        height: 80,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          color: isSelectedOTP == 1 ? Colors.white : Colors.amber,
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Login With \n Password".toUpperCase(),
                            style: TextStyle(
                                fontSize: 16,
                                color: isSelectedOTP == 1
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            isSelectedOTP == 1
                ? SizedBox(
                  height: 170.0,
                  child: Column(
                      children: [
                        Card(
                          child: Row(
                            children: [
                              Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(5.0)),
                                  color: Colors.grey.shade200,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Image(
                                      image: AssetImage(AppImages.indiaFlag),
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                    Text(" +91 "),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                              const VerticalDivider(
                                width: 5.0,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50.0,
                                  child: Center(
                                    child: TextField(
                                      keyboardType: TextInputType.phone,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(10),
                                      ],
                                      style: const TextStyle(fontSize: 16.0),
                                      decoration: const InputDecoration.collapsed(
                                          hintText: ""),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Send OTP",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomTextField(
                          hint: "Enter OTP*",
                          keyboardType: TextInputType.phone,
                          obscureText: true,
                          maxLength: 4,
                          enableShowAndHideIcon: true,
                        ),
                      ],
                    ),
                )
                : SizedBox(
                  height: 170.0,
                  child: Column(
                      children: [
                        CustomTextField(
                          hint: "Enter email/mobile number*",
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CustomTextField(
                          hint: "Enter password*",
                          obscureText: true,
                          enableShowAndHideIcon: true,
                        ),
                      ],
                    ),
                ),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              height: 50.0,
              width: 140.0,
              child: ElevatedButton(
                onPressed: (() {}),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Text("Login".toUpperCase()),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            RichText(
                text: const TextSpan(
                    text: "If you don't have an account?",
                    style: TextStyle(color: Colors.black26, fontSize: 15.0),
                    children: [
                  TextSpan(
                      text: " Sign up",
                      style: TextStyle(color: Colors.amber, fontSize: 20.0))
                ])),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "OR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.iconGoogle),
                  iconSize: 50.0,
                ),
                const VerticalDivider(
                  width: 20.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.iconFacebook),
                  iconSize: 60.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
