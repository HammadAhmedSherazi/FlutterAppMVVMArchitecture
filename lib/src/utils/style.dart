import '../../export_all.dart';

class AppStyle{

  //TEXT STYLES
  static final TextStyle titleStyle =  TextStyle(
          color: AppColors.kfontColor,
          fontSize: 13,
          fontWeight: FontWeight.w500
        );

  static final TextStyle headingStyle =  TextStyle(
          color: AppColors.kfontColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w800
        );
  
  static final TextStyle subHeadingStyle =  TextStyle(
          color: AppColors.kfontColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500
        );
  
  static final TextStyle buttonTextStyle = TextStyle(
          color: AppColors.kbuttonColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500
        );
  
  static final TextStyle buttonTextStyle2 = TextStyle(
          color: AppColors.kbuttonColor2,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500
        );

  static final TextStyle textfieldStyle = TextStyle(
            color: const Color(0xFF030708).withOpacity(0.3),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins');

  
  //SCREEN PADDING
  static final double horizontalPadding = 0.r;
  static final double verticalPadding = 0.r;


  //SCREEN DECORATION
  static const BoxDecoration pageDocoration =  BoxDecoration();

}