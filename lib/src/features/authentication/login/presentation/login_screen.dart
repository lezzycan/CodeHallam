import 'package:codehallam/src/common_widget/authentication_form.dart';
import 'package:codehallam/src/features/authentication/login/presentation/notifier/login_screen_notifier.dart';
import 'package:codehallam/src/routing/route_name.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(
    BuildContext context,
  ) {
    final loginProvider = ref.watch(loginNotifier);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
            horizontal: Sizes.p16.w, vertical: 100.h),
              child: AuthenticationForm(
                isLogin: true,
                emailController: emailController,
                passwordController: passwordController,
                formkey: _formkey,
                suffixIcon: GestureDetector(
                  onTap: () {
                    ref
                        .read(loginNotifier.notifier)
                        .togglePasswordVisibility();
                  },
                  child: Icon(
                    loginProvider.isToggled
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.grey,
                  ),
                ),
                obscure: loginProvider.isToggled ? true : false,
                
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    //Todo : Implement login functionality
                    
                  }
                },
                headline: 'Login',
                btnText: 'Login',
                
                acc1: 'Don\'t have an account?',
                acc2: ' Sign Up',
               
                btnOnTap: () { Navigator.pushNamed(context, RouteName.signUp); },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, RouteName.forgotPassword), 
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.lato(
                          fontSize: Sizes.p14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

