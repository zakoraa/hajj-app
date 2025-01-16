import 'package:flutter/material.dart';

import 'app_font.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme main(BuildContext context) =>
      ThemeData.light().textTheme.copyWith(
            // headlineSmall: Biasanya digunakan untuk heading kecil, seperti subjudul atau bagian dalam kartu kecil.
            headlineSmall: AppFont.text14(context).semiBold,

            // headlineMedium: Digunakan untuk heading dengan ukuran sedang, seperti judul di halaman kecil.
            headlineMedium: AppFont.text16(context).semiBold,

            // headlineLarge: Untuk heading besar, biasanya digunakan untuk judul utama di halaman atau bagian besar.
            headlineLarge: AppFont.text24(context).semiBold,

            // titleSmall: Digunakan untuk teks judul kecil, seperti bagian deskripsi singkat atau label item kecil.
            titleSmall: AppFont.text14(context).bold,

            // titleMedium: Digunakan untuk judul dengan ukuran sedang, misalnya nama elemen atau menu utama.
            titleMedium: AppFont.text16(context).bold,

            // titleLarge: Untuk judul besar, seperti heading utama atau nama produk/halaman penting.
            titleLarge: AppFont.text20(context).bold,

            // bodySmall: Untuk teks body kecil, biasanya digunakan untuk catatan atau teks tambahan.
            bodySmall: AppFont.text10(context),

            // bodyMedium: Digunakan untuk teks body standar, seperti paragraf utama atau konten umum.
            bodyMedium: AppFont.text12(context),

            // bodyLarge: Untuk teks body besar, seperti paragraf yang ingin lebih menonjol atau teks penting.
            bodyLarge: AppFont.text14(context),

            // displayLarge: Biasanya digunakan untuk teks tampilan besar, seperti angka besar atau heading yang sangat menonjol.
            displayLarge: AppFont.text32(context).semiBold,

            // displayMedium: Digunakan untuk teks tampilan sedang, bisa untuk heading sekunder yang cukup besar.
            displayMedium: AppFont.text28(context).semiBold,

            // displaySmall: Untuk teks tampilan kecil, seperti subheading di halaman dengan desain besar.
            displaySmall: AppFont.text24(context).semiBold,

            // labelLarge: Biasanya digunakan untuk label tombol besar atau label yang menonjol.
            labelLarge: AppFont.text14(context).semiBold,

            // labelMedium: Digunakan untuk label standar, seperti label tombol dengan ukuran default.
            labelMedium: AppFont.text12(context).semiBold,

            // labelSmall: Untuk label kecil, misalnya teks kecil di bawah elemen interaktif.
            labelSmall: AppFont.text10(context).semiBold,
          );

  // TODO: menginisialisasi class tema text
}
