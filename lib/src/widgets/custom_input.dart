import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    Key? key,
    required this.icon,
    required this.placeholder,
    required this.textController,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        controller: widget.textController,
        focusNode: _focusNode,
        autocorrect: false,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          hintText: widget.placeholder,
          hintStyle: TextStyle(
            color: _isFocused ? Colors.black : Colors.black54,
            fontSize: 16,
          ),
          prefixIcon: Icon(
            widget.icon,
            color: _isFocused ? Colors.black : Colors.black54,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15), // Esto centra el placeholder verticalmente
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: _isFocused ? Colors.black : Colors.black, // Cambia el color del texto cuando está enfocado
        ),
      ),
    );
  }
}
