import 'package:devour/screens/Login/fake_phone_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

double _kInputWidth = 280.0;

/// Phone input field with fake text view, rendering phone with dashes
class PhoneInputField extends StatelessWidget {
  PhoneInputField({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController(text: '7');
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final hiddenTextFieldWidget = Opacity(
      opacity: 0.0,
      child: TextField(
        controller: _textEditingController,
        focusNode: _focusNode,
        maxLength: 11,
        inputFormatters: [ FilteringTextInputFormatter.digitsOnly ],
        keyboardType: TextInputType.number,
        autocorrect: false,
        toolbarOptions: ToolbarOptions(),
      ),
    );
    
    return SizedBox(
      width: _kInputWidth,
      child: Stack(
         children: [
          hiddenTextFieldWidget,
          FakePhoneInputWidget(
            focusNode: _focusNode, 
            textEditingController: _textEditingController, 
          )
         ],
      ),
    );
  }
}
