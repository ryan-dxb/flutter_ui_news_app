import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kWhite = Color(0xFFFFFFFF);
const Color kLightWhite = Color(0xFFeFF5f4);
const Color kLighterWhite = Color(0xFFFCFCFC);

const Color kGrey = Color(0xFF9397A0);
const Color kLightGrey = Color(0xFFA7A7A7);

const Color kBlue = Color(0xFF5474FD);
const Color kLightBlue = Color(0xFF83B1FF);
const Color kLighterBlue = Color(0xFFC1D4F9);

const Color kDarkBlue = Color(0xFF19202D);

const double kBorderRadius = 16.0;

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);

final kPoppinsBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w700,
);

final kPoppinsSemibold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w600,
);

final kPoppinsMedium = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w500,
);

final kPoppinsRegular = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w400,
);
