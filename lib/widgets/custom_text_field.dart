import 'package:flutter/material.dart';

class CustomFormTextField extends StatefulWidget {
  CustomFormTextField({
    this.hintText,
    this.isPassword = false,
    this.label,
    this.inputType,
    this.controller,
    this.onSubmitted,
    this.onChanged,
    this.textInputAction,
  });

  String? hintText;
  String? label;
  TextInputType? inputType;
  ValueChanged<String>? onSubmitted;
  void Function(String)? onChanged;
  late bool isPassword;
  TextEditingController? controller;
  TextInputAction? textInputAction;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  bool isHidden = true;
  /*String? hintText;
  String? label;
  TextInputType? inputType;
  ValueChanged<String>? onSubmitted;
  Function(String)? onChanged;
   bool? isPassword;
  TextEditingController? controller;
  TextInputAction? textInputAction;*/

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.label}',
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w700,
            ),
          ),
          TextFormField(
            
            onFieldSubmitted:widget.onSubmitted,
            controller: widget.controller,
            style: TextStyle(color: Colors.black, fontSize: 17),
            keyboardType: widget.inputType,
            obscureText: isHidden && widget.isPassword,
            validator: (data) {
              if (data!.isEmpty || data.trim().isEmpty || data == null) {
                return 'field is required';
              }
            },
            decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                /*  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),*/
                border: InputBorder.none,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        child: Image.asset('assets/images/pass.png'))
                    : SizedBox(),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 20,
                )),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffE2E2E2),
          ),
        ],
      ),
    );
  }
}





/*

import 'package:flutter/material.dart';

class CustomFormTextField extends StatefulWidget {
  CustomFormTextField({required TextEditingController controller, required TextInputType inputType, required String label, required Null Function(dynamic text) onSubmitted,  TextInputAction? textInputAction, required String hintText}/*{
    this.hintText,
    this.isPassword = false,
     this.label,
    this.inputType,
    this.controller,
  this.onSubmitted,
    this.onChanged,
    this.textInputAction,
  }*/);
/*
 String? hintText;
  String? label;
  TextInputType? inputType;
   Function(String)? onSubmitted ;
  Function(String)? onChanged;
  late bool isPassword;
  TextEditingController? controller  ;
  TextInputAction? textInputAction;*/

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  bool isHidden = true;
 String? hintText;
  String? label;
  TextInputType? inputType;
   Function(String)? onSubmitted ;
  Function(String)? onChanged;
  late bool isPassword;
  TextEditingController? controller  ;
  TextInputAction? textInputAction;
 
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${label}',
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w700,
            ),
          ),
          TextFormField(
            onFieldSubmitted:onSubmitted ,
            controller:controller,
            style: TextStyle(color: Colors.black, fontSize: 17),
            keyboardType: inputType,
            obscureText: isHidden && isPassword,
            
              validator: 
              
             (data) {
        if (data!.isEmpty|| data.trim().isEmpty || data==null ) {
          return 'field is required';
        }
      },
      
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                /*  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),*/
                border: InputBorder.none,
                suffixIcon:isPassword
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        child: Image.asset('assets/images/pass.png'))
                    : SizedBox(),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 20,
                )),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffE2E2E2),
          ),
        ],
      ),
    );
  }
}
*/