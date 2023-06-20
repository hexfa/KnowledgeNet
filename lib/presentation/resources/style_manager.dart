import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize,String fontFamily,FontWeight fontWeight,Color color){
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
  );
}


// Extra Light text style
TextStyle getExtraLightStyle({required double fontSize,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.extraLight, color);
}

// light text style
TextStyle getLightStyle({required double fontSize,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.light, color);
}


// regular style
TextStyle getRegularStyle({required double fontSize,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.regular, color);
}


// semi-bold text style
TextStyle getSemiBoldStyle({required double fontSize,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.semiBold, color);
}


// bold text style
TextStyle getBoldStyle({required double fontSize,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.bold, color);
}


// extraBold text style
TextStyle getMediumStyle({required double fontSize,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily,FontWeightManager.extraBold, color);
}