
import 'package:codehallam/src/common_widget/authentication_form.dart';
import 'package:codehallam/src/features/authentication/create_account/presentation/notifier/create_account_notifier.dart';
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

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(
    BuildContext context,
  ) {
    final createAccountProvider = ref.watch(createAccountNotifier);
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
            padding: EdgeInsets.symmetric(
            horizontal: Sizes.p16.w, vertical: 100.h),
            child: AuthenticationForm(
              formkey: _formkey,
              onTap: () {
                if (_formkey.currentState!.validate() && createAccountProvider.isChecked) {
                  // Perform create account action
                }
              },
              headline: 'Sign Up',
              obscure: createAccountProvider.isToggled ? true : false,
              suffixIcon:  GestureDetector(
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
              child: Padding(
                padding: EdgeInsets.only(left: Sizes.p8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                       height: 4,
                      width: 4,
                      child: Checkbox(
                        value: createAccountProvider.isChecked,
                        activeColor: AppColors.primary,
                        onChanged: (value) {
                         ref.read(createAccountNotifier.notifier).toggleCheckbox(value!);
                        },
                      ),
                    ),
                   gapW12,
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
      ),
    );
  }
}
