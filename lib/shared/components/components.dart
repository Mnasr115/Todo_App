import 'package:flutter/material.dart';

import '../../layout/todo_app/cubit/cubit.dart';


class Defaultbotton extends StatelessWidget {
  Defaultbotton(
      {this.background = Colors.blue,
      this.width = double.infinity,
      required this.text,
      this.radius = 5.0,
      required this.onPress});
  final double width;
  final Color background;
  final String text;
  final double radius;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}

class CostumTextFormFeild extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String label;
  final dynamic onSubmit;
  final dynamic onChange;
  final dynamic onTap;
  final dynamic validate;
  final dynamic prefix;
  final dynamic suffix;
  final dynamic suffixPressed;
  final bool isPassword;

  CostumTextFormFeild({
    required this.label,
    required this.controller,
    required this.type,
    required this.prefix,
    this.onSubmit,
    this.onChange,
    required this.validate,
    this.onTap,
    this.suffixPressed,
    this.suffix,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        suffixIcon: Icon(suffix),
        prefixIcon: GestureDetector(
          onTap: suffixPressed,
          child: Icon(
            prefix,
          ),
        ),
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}

class BuildTaskItem extends StatelessWidget {
  final Map model;

  const BuildTaskItem(this.model);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(model['id'].toString()),
      onDismissed: (direction) {
        AppCubit.get(context).deleteData(
          id: model['id'],
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              child: Text(
                '${model['time']}',
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${model['title']}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    '${model['date']}',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            IconButton(
              icon: Icon(
                Icons.check_box_sharp,
                color: Colors.green,
              ),
              onPressed: () {
                AppCubit.get(context).updateData(
                  status: 'done',
                  id: model['id'],
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.archive,
                color: Colors.black45,
              ),
              onPressed: () {
                AppCubit.get(context).updateData(
                  status: 'archived',
                  id: model['id'],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );
  }


  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  void navigateAndFinish(BuildContext context, Widget screen) =>
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return screen;
        }),
      );
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({this.text, this.icon, this.onChanged,this.obSecureText=false});
  Function(String)? onChanged;
  String? text;
  IconData? icon;
  bool? obSecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obSecureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      onChanged: onChanged,
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.textButton,
    this.onPressed,
  });
  String textButton;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(color: Colors.black),
          ),
        ));
  }
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}