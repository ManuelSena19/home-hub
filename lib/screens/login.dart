import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 410,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/login.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Transform.translate(
                  offset: const Offset(0, 280),
                  child: const SizedBox(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sign in to access an account and explore many things',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 61,
            height: 4,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(219, 219, 219, 1)),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 163,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 163,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 112,
                  height: 1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.black],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Or Login',
                  style: TextStyle(
                    color: Color.fromRGBO(30, 30, 30, 2),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 112,
                  height: 1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.black],
                      end: Alignment.centerLeft,
                      begin: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialAuthButton(
                    assetName: 'assets/icons/google.png',
                    label: 'Sign up with Google',
                  ),
                  SocialAuthButton(
                    assetName: 'assets/icons/apple.png',
                    label: 'Login with Apple',
                  ),
                  SocialAuthButton(
                    assetName: 'assets/icons/facebook.png',
                    label: 'Login with Facebook',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton(
      {super.key,
      required this.assetName,
      required this.label,
      this.onPressed});

  final String assetName;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color.fromRGBO(225, 225, 225, 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              assetName,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                color: Color.fromRGBO(39, 42, 49, 1),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
