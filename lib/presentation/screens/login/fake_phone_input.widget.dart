import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Duration _kAnimationDuration = Duration(milliseconds: 200);
String _kFakeEmptySymbol = '\u200A';

/// Widget to displaying text of [textEditingController] as if it was the real input,
///   but in correct phone format with dashes
class FakePhoneInputWidget extends StatefulWidget {
  const FakePhoneInputWidget({
    Key? key,
    required this.focusNode,
    required this.textEditingController,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController textEditingController;

  @override
  _FakePhoneInputWidgetState createState() => _FakePhoneInputWidgetState();
}

class _FakePhoneInputWidgetState extends State<FakePhoneInputWidget>
    with TickerProviderStateMixin {
  late AnimationController _cursorAnimator;
  late Animation<double> _cursorAnimation;
  bool _focused = false;

  @override
  void initState() {
    super.initState();

    _cursorAnimator = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _cursorAnimation = ReverseAnimation(
        CurvedAnimation(parent: _cursorAnimator, curve: Curves.easeInOutSine));
    widget.textEditingController.addListener(() => setState(() {}));
    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus) {
        _cursorAnimator.repeat();
      } else {
        _cursorAnimator.stop();
      }

      setState(() {
        _focused = widget.focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final fakeInputDecoration = BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: _focused
                    ? Theme.of(context).accentColor
                    : Theme.of(context).dividerColor,
                width: 2.0)));

    return GestureDetector(
      onTap: widget.focusNode.requestFocus,
      child: AnimatedContainer(
        duration: _kAnimationDuration,
        padding: const EdgeInsets.only(bottom: 5),
        width: double.infinity,
        decoration: fakeInputDecoration,
        child: RichText(
          text: TextSpan(
            // Used to deny collapsing of Text widget
            text: _kFakeEmptySymbol +
                getPhoneFormattedString(widget.textEditingController.text),
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
            children: [
              if (_focused && widget.textEditingController.text.length < 11)
                WidgetSpan(
                  child: FadeTransition(
                    opacity: _cursorAnimation,
                    child: Container(
                        width: 12,
                        height: 2,
                        color: Theme.of(context).accentColor),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

List<int> _kSeparatorIntervals = [3, 3, 2, 2]; // ingoring the first one
String getPhoneFormattedString(final String phoneNumber) {
  var charactersIterator = phoneNumber.characters;
  String formattedPhone = '';
  formattedPhone += '+${charactersIterator.take(1)}';
  if (charactersIterator.take(1).isNotEmpty) {
    charactersIterator = charactersIterator.skip(1);
  }
  for (final int interval in _kSeparatorIntervals) {
    if (charactersIterator.isNotEmpty) {
      formattedPhone += '-';
      formattedPhone += '${charactersIterator.take(interval)}';
      charactersIterator = charactersIterator.skip(interval);
    } else if (charactersIterator.length < interval) break;
  }

  return formattedPhone;
}
