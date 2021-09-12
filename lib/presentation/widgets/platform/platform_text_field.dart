import 'package:devour/presentation/widgets/platform/abstract_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class PlatformTextField
    extends AbstractPlatformWidget<CupertinoTextField, TextField> {
  const PlatformTextField({
    Key? key,
    this.controller,
    this.focusNode,
    this.maxLength,
    this.inputFormatters,
    this.keyboardType,
    this.autocorrect = true,
    this.toolbarOptions,
  }) : super(key: key);

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool autocorrect;
  final ToolbarOptions? toolbarOptions;

  @override
  CupertinoTextField buildCupertino(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      focusNode: focusNode,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      autocorrect: autocorrect,
      toolbarOptions: toolbarOptions,
    );
  }

  @override
  TextField buildMaterial(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      autocorrect: autocorrect,
      toolbarOptions: toolbarOptions,
    );
  }
}
