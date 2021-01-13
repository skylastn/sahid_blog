import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/icon.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';
import '../utils/extensions.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('Contact', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap:(){
                          _sendMailClean();
                        },
                        child: _buildContactInfo(
                          'icons/email.png',
                          'Mail Me:',
                          AppConstants.mail,
                        ),
                      ),

                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          launch("https://wa.me/628815123766/?text=Halo Sahid, "
                              "\nSaya ingin menyewa anda untuk");
                        },
                        child: _buildContactInfo(
                          'icons/call.png',
                          'Call Me:',
                          AppConstants.phone,
                        ),
                      ),

                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          launch("https://www.google.co.id/maps/place/Ar-Zha+Collections/@-7.7075004,110.6067443,19z/data=!4m5!3m4!1s0x2e7a4405dde64d75:0xd023430563dd396d!8m2!3d-7.7073037!4d110.6065468");
                        },
                        child: _buildContactInfo(
                          'icons/pin.png',
                          'Visit Me:',
                          AppConstants.location,
                        ),
                      )

                    ],
                  ),
                ),
                Expanded(
                  child: _buildContactForm(context),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              'Contact',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        _sendMailClean();
                      },
                      child: _buildContactInfo(
                        'icons/email.png',
                        'Mail Me:',
                        AppConstants.mail,
                      ),
                    ),

                    const SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        launch("https://wa.me/628815123766/?text=Halo Sahid, "
                            "\nSaya ingin menyewa anda untuk");
                      },
                      child: _buildContactInfo(
                        'icons/call.png',
                        'Call Me:',
                        AppConstants.phone,
                      ),
                    ),

                    const SizedBox(height: 20),
                    InkWell(
                      onTap: (){
                        launch("https://www.google.co.id/maps/place/Ar-Zha+Collections/@-7.7075004,110.6067443,19z/data=!4m5!3m4!1s0x2e7a4405dde64d75:0xd023430563dd396d!8m2!3d-7.7073037!4d110.6065468");
                      },
                      child: _buildContactInfo(
                        'icons/pin.png',
                        'Visit Me:',
                        AppConstants.location,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 50),
                _buildContactForm(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String imagePath, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(imagePath, color: AppColors.black.withOpacity(.7), size: 20),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: TextStyle(color: AppColors.black.withOpacity(.7)),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Have Something To Write?',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     Expanded(
              //       child: TextFormField(
              //         controller: _nameController,
              //         validator: (text) {
              //           return (text.isValidName())
              //               ? null
              //               : 'Please insert valid name!';
              //         },
              //         decoration: InputDecoration(
              //           hintText: 'Your Name',
              //           border: OutlineInputBorder(),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(width: 15),
              //     Expanded(
              //       child: TextFormField(
              //         controller: _emailController,
              //         validator: (text) {
              //           return (text.isValidEmail)
              //               ? null
              //               : 'Please insert valid email!';
              //         },
              //         decoration: InputDecoration(
              //           hintText: 'Your Email',
              //           border: OutlineInputBorder(),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              TextFormField(
                controller: _nameController,
                validator: (text) {
                  return (text.isValidName())
                      ? null
                      : 'Please insert valid name!';
                },
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              TextFormField(
                minLines: 3,
                maxLines: 10,
                controller: _contentController,
                validator: (text) {
                  return (text.isValidName(minLength: 10))
                      ? null
                      : 'Please insert valid message!, at least 10 characters';
                },
                decoration: InputDecoration(
                  hintText: 'Your Message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              RaisedButton(
                color: AppColors.yellow,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                onPressed: _sendMail,
                child: Text('Send'),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _sendMailClean() async {

    final mailto = Mailto(
      to: [AppConstants.mail],
      subject: "",
      body: "Halo Sahid, ",
    );
    await launch('$mailto');


    // final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
    // String renderHtml(Mailto mailto) =>
    //     '''<html><head><title>mailto example</title></head><body><a href="$mailto">Open mail client</a></body></html>''';
    // await for (HttpRequest request in server) {
    //   request.response
    //     ..statusCode = HttpStatus.ok
    //     ..headers.contentType = ContentType.html
    //     ..write(renderHtml(mailto));
    //   await request.response.close();
    // }
  }

  void _sendMail() async {
    bool isValidForm = _formKey.currentState.validate();
    if (!isValidForm) return;

    print("subject:"+_nameController.text);
    print("deskripsi:"+_contentController.text);

    final mailto = Mailto(
      to: [AppConstants.mail],
      subject: _nameController.text.trim(),
      body: _contentController.text.trim(),
    );
    await launch('$mailto');
    setState(() {
      _nameController.text = "";
      _contentController.text = "";
    });

    // final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
    // String renderHtml(Mailto mailto) =>
    //     '''<html><head><title>mailto example</title></head><body><a href="$mailto">Open mail client</a></body></html>''';
    // await for (HttpRequest request in server) {
    //   request.response
    //     ..statusCode = HttpStatus.ok
    //     ..headers.contentType = ContentType.html
    //     ..write(renderHtml(mailto));
    //   await request.response.close();
    // }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
