import 'dart:math' as math;
import '../../export_all.dart';


class CustomTextField extends StatefulWidget {
  final String hintText;
  final int? maxline;
  final TextEditingController controller;
  final IconData? perfixIcon;
  final String? Function(String?)? validator;
  final bool? isPassword;
  final bool? readOnly;
  final VoidCallback? onSearchTap;
  final VoidCallback? onTap;
  final bool? searchField;
  final void Function()? onEditingComplete;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.onTap,
      this.onSearchTap,
      this.onEditingComplete,
      this.maxline,
      this.perfixIcon,
      this.readOnly = false,
      this.isPassword = false,
      this.searchField,
      this.validator});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5.r), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 3),
        )
      ]),
      child: TextFormField(
        onTap: widget.onTap,
        onEditingComplete: widget.onEditingComplete,
        clipBehavior: Clip.none,
        maxLines: widget.maxline ?? 1,
        readOnly: widget.readOnly!,
        controller: widget.controller,
        validator: widget.validator,
        obscureText: showPass,
        cursorColor: const Color(0xFF030708).withOpacity(0.3),
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
            color: const Color(0xFF030708).withOpacity(0.3),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins'),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
            isCollapsed: true,
            // isDense: true,
            filled: true,
            fillColor: AppColors.ktextFieldBgColor,
            hintText: widget.hintText,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            // suffixIconConstraints: BoxConstraints(maxHeight: 30.r),
            suffixIcon: !widget.isPassword! && widget.searchField == null
                ? null
                : !widget.readOnly! && !(widget.searchField!)
                    ? IconButton(
                        focusColor: Colors.grey,
                        splashRadius: 23.r,
                        onPressed: () {
                          showPass = !showPass;
                          setState(() {});
                        },
                        icon: showPass
                            ? Icon(
                                Icons.visibility,
                                size: 23.r,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.visibility_off,
                                size: 23.r,
                                color: Colors.grey,
                              ))
                    : widget.searchField!
                        ? IconButton(
                            onPressed: widget.onSearchTap,
                            icon: Icon(
                              Icons.close,
                              size: 23.r,
                              color: AppColors.kprimaryColor,
                            ))
                        : Transform.rotate(
                            angle: 271 * math.pi / 180,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.grey,
                              size: 16.r,
                            ),
                          )),
    
      ),
    );
  }
}
