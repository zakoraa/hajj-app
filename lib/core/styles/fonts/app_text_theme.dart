import 'package:flutter/material.dart';

import 'app_font.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme main(BuildContext context) =>
      ThemeData.light().textTheme.copyWith(
            // headlineSmall: Biasanya digunakan untuk heading kecil, seperti subjudul atau bagian dalam kartu kecil.
            headlineSmall: AppFont.text14(context),

            // headlineMedium: Digunakan untuk heading dengan ukuran sedang, seperti judul di halaman kecil.
            headlineMedium: AppFont.text16(context),

            // headlineLarge: Untuk heading besar, biasanya digunakan untuk judul utama di halaman atau bagian besar.
            headlineLarge: AppFont.text24(context),

            // titleSmall: Digunakan untuk teks judul kecil, seperti bagian deskripsi singkat atau label item kecil.
            titleSmall: AppFont.text12(context),

            // titleMedium: Digunakan untuk judul dengan ukuran sedang, misalnya nama elemen atau menu utama.
            titleMedium: AppFont.text14(context),

            // titleLarge: Untuk judul besar, seperti heading utama atau nama produk/halaman penting.
            titleLarge: AppFont.text18(context),

            // bodySmall: Untuk teks body kecil, biasanya digunakan untuk catatan atau teks tambahan.
            bodySmall: AppFont.text10(context),

            // bodyMedium: Digunakan untuk teks body standar, seperti paragraf utama atau konten umum.
            bodyMedium: AppFont.text12(context),

            // bodyLarge: Untuk teks body besar, seperti paragraf yang ingin lebih menonjol atau teks penting.
            bodyLarge: AppFont.text14(context),

            // displayLarge: Biasanya digunakan untuk teks tampilan besar, seperti angka besar atau heading yang sangat menonjol.
            displayLarge: AppFont.text32(context),

            // displayMedium: Digunakan untuk teks tampilan sedang, bisa untuk heading sekunder yang cukup besar.
            displayMedium: AppFont.text28(context),

            // displaySmall: Untuk teks tampilan kecil, seperti subheading di halaman dengan desain besar.
            displaySmall: AppFont.text24(context),

            // labelLarge: Biasanya digunakan untuk label tombol besar atau label yang menonjol.
            labelLarge: AppFont.text14(context),

            // labelMedium: Digunakan untuk label standar, seperti label tombol dengan ukuran default.
            labelMedium: AppFont.text12(context),

            // labelSmall: Untuk label kecil, misalnya teks kecil di bawah elemen interaktif.
            labelSmall: AppFont.text10(context),
          );

  // TODO: menginisialisasi class tema text
}
