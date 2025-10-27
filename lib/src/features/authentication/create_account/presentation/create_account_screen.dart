import 'package:codehallam/src/common_widget/app_sheet.dart';
import 'package:codehallam/src/common_widget/authentication_form.dart';
import 'package:codehallam/src/common_widget/otp_screen.dart';
import 'package:codehallam/src/features/authentication/create_account/presentation/notifier/create_account_notifier.dart';
import 'package:codehallam/src/features/authentication/create_account/presentation/notifier/otp_resend_notifier.dart';
import 'package:codehallam/src/routing/route_name.dart';

import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen> {
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
    final createAccountProvider = ref.watch(createAccountNotifier);
    final otpProvider = ref.watch(otpNotifier);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.p16.w, vertical: 100.h),
            child: AuthenticationForm(
              isLogin: false,
              emailController: emailController,
              passwordController: passwordController,
              formkey: _formkey,
              onTap: () {
               /*  if (_formkey.currentState!.validate() &&
                    createAccountProvider.isChecked) {
                  // Perform create account action
                } */
              
               openBottomSheet(context, OtpScreen(email: emailController.text,
               resendText:otpProvider.isButtonDisabled ? Colors.grey : Colors.redAccent, 
               timer: otpProvider.showTimer  ? "Resend code in ${otpProvider.secondsRemaining}s"
              : "Didn't receive code?", onResend: () {
                ref.read(otpNotifier.notifier).resendOtp(() {
                  // Actual resend logic here
                  print("Resend OTP logic executed");
                });
              },));
              },
              headline: 'Sign Up',
              obscure: createAccountProvider.isToggled ? true : false,
              suffixIcon: GestureDetector(
                onTap: () {
                  ref
                      .read(createAccountNotifier.notifier)
                      .togglePasswordVisibility();
                },
                child: Icon(
                  createAccountProvider.isToggled
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.grey,
                ),
              ),
              acc1: 'Already have an account?',
              acc2: ' Login',
              btnText: 'Create Account',
              btnOnTap: () {
                Navigator.pushNamed(context, RouteName.login);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: createAccountProvider.isChecked,
                    activeColor: AppColors.primary,
                    onChanged: (value) {
                      ref
                          .read(createAccountNotifier.notifier)
                          .toggleCheckbox(value!);
                    },
                    visualDensity: VisualDensity(
                      horizontal: -4.w, vertical: -3.h
                    ),
                  ),
                  gapW4,
                  Text('I agree to the Terms and Conditions',
                      style: GoogleFonts.lato(
                          fontSize: Sizes.p12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
