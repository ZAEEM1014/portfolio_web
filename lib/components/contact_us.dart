import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responsive.dart';

class ContactUsBlock extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: Responsive.isMobile(context)
            ? const EdgeInsets.only(
                top: defaultPadding,
                bottom: defaultPadding,
                left: defaultPadding,
                right: defaultPadding * 2)
            : Responsive.isTablet(context)
                ? const EdgeInsets.only(
                    top: defaultPadding,
                    bottom: defaultPadding,
                    left: defaultPadding,
                    right: defaultPadding * 2)
                : const EdgeInsets.all(16),
        child: Column(
          children: [
            Responsive.isMobile(context)
                ? Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color:
                              darkColor, // Replace with your desired shadow color
                          offset: Offset(10.0, 10.0), // Shadow offsets
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email-Us",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          buildTextField(
                            "Enter your Name",
                            _nameController,
                          ),
                          buildTextField(
                            "Enter a valid email address",
                            _emailController,
                            emailValidation: true,
                          ),
                          buildTextField(
                            "Enter your Message",
                            _messageController,
                            maxLines: 5,
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding * 2),
                            child: Center(
                              child: ElevatedButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        Material.defaultSplashRadius * 1.7,
                                    vertical: defaultPadding * 1.3,
                                  ),
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    bool emailSent = await sendEmail(
                                      name: _nameController.text,
                                      email: _emailController.text,
                                      message: _messageController.text,
                                    );
                                    if (emailSent) {
                                      _nameController.clear();
                                      _emailController.clear();
                                      _messageController.clear();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Email sent successfully!')),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Failed to send email. Please try again.')),
                                      );
                                    }
                                  }
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left Side - Contact Info
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            SizedBox(height: defaultPadding * 1),
                            contactCard(
                              icon: Icons.location_on,
                              title: "Our Main Office",
                              description:
                                  "Soho 94 Broadway St\nNew York, NY 1001",
                            ),
                            contactCard(
                              icon: Icons.phone,
                              title: "Phone Number",
                              description: "234-9876-5400\n888-0123-4567",
                            ),
                            contactCard(
                              icon: Icons.email,
                              title: "Email",
                              description: "hello@fluttercontact.com",
                            ),
                            contactCard(
                              icon: Icons.email,
                              title: "Email",
                              description: "hello@fluttercontact.com",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      // Right Side - Contact Form
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color:
                                    darkColor, // Replace with your desired shadow color
                                offset: Offset(10.0, 10.0), // Shadow offsets
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email-Us",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 16),
                                buildTextField(
                                  "Enter your Name",
                                  _nameController,
                                ),
                                buildTextField(
                                  "Enter a valid email address",
                                  _emailController,
                                  emailValidation: true,
                                ),
                                buildTextField(
                                  "Enter your Message",
                                  _messageController,
                                  maxLines: 5,
                                ),
                                SizedBox(height: 16),
                                Center(
                                  child: ElevatedButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal:
                                            Material.defaultSplashRadius * 1.7,
                                        vertical: defaultPadding * 1.3,
                                      ),
                                      backgroundColor: primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        bool emailSent = await sendEmail(
                                          name: _nameController.text,
                                          email: _emailController.text,
                                          message: _messageController.text,
                                        );
                                        if (emailSent) {
                                          _nameController.clear();
                                          _emailController.clear();
                                          _messageController.clear();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text(
                                                    'Email sent successfully!')),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text(
                                                    'Failed to send email. Please try again.')),
                                          );
                                        }
                                      }
                                    },
                                    child: const Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: darkColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  // Contact Info Card
  Widget contactCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Color(0xFFFFC107), size: 24),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // TextField Builder
  Widget buildTextField(String label, TextEditingController controller,
      {bool emailValidation = false, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.black),
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This field cannot be empty.";
          }
          if (emailValidation &&
              !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
                  .hasMatch(value)) {
            return "Enter a valid email address.";
          }
          return null;
        },
      ),
    );
  }

  // Function to Send Email
  Future<bool> sendEmail({
    required String name,
    required String email,
    required String message,
  }) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'zaeemakh117@gmail.com', // Replace with your valid email
      query: Uri.encodeQueryComponent(
        'subject=Contact from $name&body=Name: $name\nEmail: $email\nMessage: $message',
      ),
    );

    try {
      if (await launchUrl(emailUri)) {
        return true; // Email sent successfully
      } else {
        return false; // Failed to send email
      }
    } catch (e) {
      print("Error: $e");
      return false; // Error occurred
    }
  }
}
