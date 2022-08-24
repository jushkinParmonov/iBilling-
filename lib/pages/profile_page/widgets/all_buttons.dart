import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/pages/profile_page/widgets/information_text.dart';
import 'all_svg_icons.dart';

//Alert dialog for show language button
class LanguageDialog extends StatefulWidget {
  const LanguageDialog({Key? key}) : super(key: key);

  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  static Language _language = Language.en;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Center(
        child: Text(
          'choose_lang'.tr(),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: const Color(0xff2A2A2D),
      actions: [
        Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.white10,
            disabledColor: const Color(0xff008F7F),
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                  onTap: () => setState(() => _language = Language.uz),
                  title: languageText("O'zbek(Lotin)"),
                  leading: flagSvg('assets/icons/uzb_flag.svg'),
                  trailing: Radio<Language>(
                    value: Language.uz,
                    groupValue: _language,
                    onChanged: (Language? value) => setState(() => _language = value!),
                  )),
              ListTile(
                onTap: () => setState(() => _language = Language.en),
                title: languageText("English(USA)"),
                trailing: Radio<Language>(
                  value: Language.en,
                  groupValue: _language,
                  onChanged: (Language? value) => setState(() => _language = value!),
                ),
                leading: flagSvg('assets/icons/usa_flag.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 32, top: 32, bottom: 24),
                child: Row(
                  children: [
                    //---> 'false' is to cancel and 'true' is to change language namely done button
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: cancelDone(false, context),
                    ),
                    const SizedBox(width: 32),
                    GestureDetector(
                      onTap: (){
                        if(_language == Language.uz){
                          context.locale = const Locale('uz', 'UZ');
                        }else{
                          context.locale = const Locale('en', 'US');
                        }
                        Navigator.pop(context);
                      } ,
                      child: cancelDone(true, context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

enum Language { uz, en }



//Cancel and delete buttons
Widget cancelDone(bool buttonType, BuildContext context) {
  return Container(
    width: 120,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: buttonType
          ? const Color(0xff008F7F)
          : const Color(0xff008F7F).withOpacity(0.3),
    ),
    child: Center(
      child: Text(
        buttonType ? 'done'.tr() : 'cancel'.tr(),
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: buttonType ? Colors.white : const Color(0xff008F7F),
        ),
      ),
    ),
  );
}
