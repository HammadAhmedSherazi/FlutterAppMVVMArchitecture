import 'package:flutter/cupertino.dart';

import '../../export_all.dart';

class CustomAndroidButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final double? width;
  final MaterialStatePropertyAll<Color?>? color;

  const CustomAndroidButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      this.width,
      this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            alignment: Alignment.center,
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r))),
            backgroundColor: color ??
                 MaterialStatePropertyAll(AppColors.kprimaryColor),
            fixedSize: MaterialStatePropertyAll(
                Size(MediaQuery.sizeOf(context).width, 50.r))),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 19.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600),
        ));
  }
}

class CustomIOSButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color ? color;

  const CustomIOSButton(
      {super.key, required this.buttonText, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50.h,
          width: MediaQuery.sizeOf(context).width,
          child: CupertinoButton(
              onPressed: onTap,
              padding: EdgeInsets.zero,
              borderRadius: BorderRadius.circular(10.r),
              color: color ?? AppColors.kprimaryColor,
              child: Text(
                buttonText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              )),
        ),
        10.verticalSpace
      ],
    );
  }
}
