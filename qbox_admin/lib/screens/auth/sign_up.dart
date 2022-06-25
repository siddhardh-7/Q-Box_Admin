import 'package:flutter/material.dart';
import 'package:qbox_admin/screens/auth/sign_in.dart';
import 'package:qbox_admin/utilities/dimensions.dart';

class SignUp extends StatefulWidget {
  static String routeName = 'signUp';
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _signUpFetching = false;
  final _formKey = GlobalKey<FormState>();
  //final _auth = FirebaseAuth.instance;
  String? errorMessage;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmedPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  double? titleSize;
  double? padding;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmedPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double padding20 = MediaQuery.of(context).size.height * (20 / 1563);
    if ((MediaQuery.of(context).size.width) <= 600) {
      padding = MediaQuery.of(context).size.width * (150 / 1563);
      titleSize = 60;
      //smallTextSize = MediaQuery.of(context).size.width * (32 / 1563);
    } else if (MediaQuery.of(context).size.width <= 1000) {
      padding = MediaQuery.of(context).size.width * (300 / 1563);
      titleSize = 60;
      //smallTextSize = MediaQuery.of(context).size.width * (32 / 1563);
    } else {
      padding = MediaQuery.of(context).size.width * (450 / 1563);
      titleSize = MediaQuery.of(context).size.width * (78 / 1563);
      //smallTextSize = 15;
    }
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(
            horizontal: padding!,
            vertical: MediaQuery.of(context).size.height * (4 / 792)),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * (70 / 792),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * (30 / 1563)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200.withOpacity(0.5),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Q-Box ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: titleSize,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(padding20 / 2),
                          child: TextFormField(
                            controller: _firstNameController,
                            keyboardType: TextInputType.text,
                            onSaved: (value) {
                              _firstNameController.text = value!;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Please Enter Your First Name");
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              hintText: "First Name",
                              fillColor: Colors.grey[100],
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(padding20 / 2),
                          child: TextFormField(
                            controller: _lastNameController,
                            keyboardType: TextInputType.text,
                            onSaved: (value) {
                              _lastNameController.text = value!;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Please Enter Your Last Name");
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              hintText: "Last Name",
                              fillColor: Colors.grey[100],
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(padding20 / 2),
                          child: TextFormField(
                            controller: _ageController,
                            keyboardType: TextInputType.number,
                            onSaved: (value) {
                              _ageController.text = value!;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Please Enter Your Age");
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              hintText: "Age",
                              fillColor: Colors.grey[100],
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(padding20 / 2),
                          child: TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (value) {
                              _emailController.text = value!;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Please Enter Your Email");
                              }
                              // reg expression for email validation
                              if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return ("Please Enter a valid email");
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              hintText: "Email",
                              fillColor: Colors.grey[100],
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(padding20 / 2),
                          child: TextFormField(
                            obscureText: true,
                            controller: _passwordController,
                            onSaved: (value) {
                              _passwordController.text = value!;
                            },
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              RegExp regex = RegExp(r'^.{6,}$');
                              if (value!.isEmpty) {
                                return ("Password is required for signUp");
                              }
                              if (!regex.hasMatch(value)) {
                                return ("Enter Valid Password(Min. 6 Character)");
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              hintText: "password",
                              fillColor: Colors.grey[100],
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(padding20 / 2),
                          child: TextFormField(
                            obscureText: true,
                            controller: _confirmedPasswordController,
                            onSaved: (value) {
                              _confirmedPasswordController.text = value!;
                            },
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              RegExp regex = RegExp(r'^.{6,}$');
                              if (value!.isEmpty) {
                                return ("Password is required for signUp");
                              }
                              if (_passwordController.text !=
                                  _confirmedPasswordController.text) {
                                return ("Password should be same");
                              }
                              if (!regex.hasMatch(value)) {
                                return ("Enter Valid Password(Min. 6 Character)");
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius12),
                              ),
                              hintText: "confirm password",
                              fillColor: Colors.grey[100],
                              filled: true,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * (40 / 792),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _signUpFetching = true;
                            });
                            //signUp();
                          },
                          child: Padding(
                            padding: EdgeInsets.all(padding20 / 2),
                            child: Container(
                              width: double.infinity,
                              height: 51,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(
                                    Dimensions.borderRadius5),
                              ),
                              child: Center(
                                child: _signUpFetching
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (20 / 792),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                          color: Theme.of(context).primaryColor,
                        )),
                        const Text("Sign up with Us"),
                        Expanded(
                            child: Divider(
                          color: Theme.of(context).primaryColor,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (10 / 792),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                          child: Text("I am Member!"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(
                                context, SignIn.routeName);
                          },
                          child: const Text('LogIn'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (10 / 792),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  //
  // Future<void> signUp() async {
  //   if (_formKey.currentState!.validate()) {
  //     final _email = _emailController.text.trim();
  //     try {
  //       await _auth
  //           .createUserWithEmailAndPassword(
  //           email: _email, password: _passwordController.text.trim())
  //           .then((uid) => {
  //         setState(() {
  //           _signUpFetching = false;
  //         }),
  //         Fluttertoast.showToast(msg: 'Sign Up Successful'),
  //         Navigator.popAndPushNamed(context, Explore.routeName),
  //       });
  //       await FirebaseFirestore.instance
  //           .collection('users')
  //           .doc('${_email}')
  //           .set(UserModel(
  //           firstName: _firstNameController.text.trim(),
  //           lastName: _lastNameController.text.trim(),
  //           age: int.parse(_ageController.text.trim()),
  //           email: _emailController.text.trim())
  //           .toJson())
  //           .then((value) => print("User Added"))
  //           .catchError((error) => print("Failed to add user: $error"));
  //     } on FirebaseAuthException catch (error) {
  //       switch (error.code) {
  //         case "too-many-requests":
  //           errorMessage = "Too many requests";
  //           break;
  //         case "operation-not-allowed":
  //           errorMessage = "Signing in with Email and Password is not enabled.";
  //           break;
  //         default:
  //           errorMessage = "An undefined Error happened.";
  //       }
  //       Fluttertoast.showToast(msg: errorMessage!);
  //     }
  //   }
  //   setState(() {
  //     _signUpFetching = false;
  //   });
  // }
}