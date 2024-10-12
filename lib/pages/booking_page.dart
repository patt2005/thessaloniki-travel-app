import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int _selectedTransportIndex = -1;

  final _formKey = GlobalKey<FormState>(); // Form key to manage validation

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Book Your Trip",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Choose Your Trip",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Libre",
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTransportButton(
                      context, "By bus", Icons.directions_bus, 0),
                  _buildTransportButton(
                      context, "Shuttle", Icons.directions_transit, 1),
                  _buildTransportButton(
                      context, "Walking", Icons.directions_walk, 2),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFFE0F7FA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contacts",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("We’ll get back to you shortly"),
                    const SizedBox(height: 10),
                    _buildTextField("Email", Icons.email,
                        controller: emailController, validator: _validateEmail),
                    const SizedBox(height: 10),
                    _buildTextField("Phone Number", Icons.phone,
                        controller: phoneController,
                        validator: _validatePhoneNumber),
                    const SizedBox(height: 10),
                    _buildTextField("First Name", Icons.person,
                        controller: firstNameController,
                        validator: _validateName),
                    const SizedBox(height: 10),
                    _buildTextField("Last Name", Icons.person_outline,
                        controller: lastNameController,
                        validator: _validateName),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _showSuccessDialog();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPriaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSuccessDialog() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Success"),
          content:
              const Text("Your booking request has been successfully sent."),
          actions: [
            CupertinoDialogAction(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildTransportButton(
      BuildContext context, String label, IconData icon, int index) {
    bool isSelected = _selectedTransportIndex == index;

    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          _selectedTransportIndex = index;
        });
      },
      icon: Icon(icon, color: Colors.black45),
      label: Text(
        label,
        style: const TextStyle(color: Colors.black45),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blueAccent : kPriaryColor,
        side: isSelected
            ? const BorderSide(color: Colors.white, width: 2.0)
            : BorderSide.none,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, IconData icon,
      {required TextEditingController controller,
      required String? Function(String?) validator}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.teal),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number';
    }
    if (!RegExp(r'^[0-9]{10,15}$').hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }
}
