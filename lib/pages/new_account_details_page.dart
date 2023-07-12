import 'package:flutter/material.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_text_form_field.dart';
import 'acknowledgment_page.dart';

class NewAccountDetails extends StatefulWidget {
  const NewAccountDetails({super.key});

  @override
  State<NewAccountDetails> createState() => _NewAccountDetailsState();
}

class _NewAccountDetailsState extends State<NewAccountDetails> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatController =
      TextEditingController();
  bool _showPassword = true;
  bool _showPasswordRepeat = true;
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        title: const Text("Account Creation"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500),
        backgroundColor: Colors.red.shade800,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _keyForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  textLabel: 'First Name',
                  textHint: 'abc',
                  aboveHeightSpace: 40,
                  textController: _nameController,
                ),
                const CustomTextFormField(
                  textLabel: "Last Name",
                  textHint: 'xyz',
                ),
                const CustomTextFormField(textLabel: "Father's Name"),
                CustomTextFormField(
                  textLabel: "Email Address",
                  textHint: 'abc123@gmail.com',
                  textHelper: 'Gmail Address',
                  keyBoard: TextInputType.emailAddress,
                  textController: _emailController,
                  iconSuffix: IconButton(
                    onPressed: () {
                      _emailController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
                const CustomTextFormField(
                  aboveHeightSpace: 15,
                  keyBoard: TextInputType.phone,
                  textLabel: "Phone Number",
                  textHint: '03548971290',
                  maxInput: 11,
                ),
                const CustomTextFormField(
                  aboveHeightSpace: 15,
                  textLabel: 'Home Address',
                  keyBoard: TextInputType.streetAddress,
                ),
                CustomTextFormField(
                  textLabel: "Password",
                  textHint: 'man666!t@566#',
                  keyBoard: TextInputType.visiblePassword,
                  showText: _showPassword,
                  textController: _passwordController,
                  iconSuffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      )),
                ),
                CustomTextFormField(
                  textLabel: "Password Confirm",
                  textHint: 'man666!t@566#',
                  keyBoard: TextInputType.visiblePassword,
                  showText: _showPasswordRepeat,
                  textController: _passwordRepeatController,
                  iconSuffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _showPasswordRepeat = !_showPasswordRepeat;
                        });
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      )),
                ),
                const CustomTextFormField(
                    textLabel: "Current Academic Centre Name"),
                const SizedBox(height: 30),
                CustomButton(
                    buttonText: 'Submit',
                    textColor: Colors.white,
                    bgColor: Colors.red.shade800,
                    buttonPress: () {
                      if (_keyForm.currentState!.validate() &&
                          _passwordController.text ==
                              _passwordRepeatController.text) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AcknowledgmentPage(
                                nameController: _nameController),
                          ),
                        );
                      }
                    }),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
