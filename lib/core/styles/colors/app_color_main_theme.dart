part of 'app_color.dart';

@Singleton()
class AppColorMainTheme implements AppColor {
  // ========= Primary colors  
  @override 
  Color get primary => const Color(0xFF013C5A); // Warna utama aplikasi (sering digunakan di AppBar atau tombol utama)

  @override 
  Color get onPrimary => white; // Warna teks atau ikon di atas warna primary
  
  @override 
  Color get primaryContainer => const Color(0xFF23ba45); // Warna elemen pendukung (misalnya card atau container sekunder)
  
  @override 
  Color get onPrimaryContainer => white; // Warna teks atau ikon di atas elemen primaryContainer
  
  @override 
  Color get primaryFixed => primaryContainer; // Variasi tetap dari primary untuk konsistensi di area tertentu
  
  @override 
  Color get primaryFixedDim => primaryContainer.withValues(alpha: 0.8); // Versi redup dari primaryFixed
  
  @override 
  Color get inversePrimary => white; // Warna kontras dengan primary (biasanya terang)

  // ========= Secondary colors  
  @override 
  Color get secondary => const Color(0xFFA7C958); // Warna sekunder untuk elemen pendukung (misalnya chip)
  
  @override 
  Color get onSecondary => white; // Warna teks atau ikon di atas warna secondary
  
  @override 
  Color get secondaryContainer => const Color(0xFFEDF4DE); // Warna container untuk elemen sekunder
  
  @override 
  Color get onSecondaryContainer => black; // Warna teks atau ikon di atas secondaryContainer
  
  @override 
  Color get secondaryFixed => secondaryContainer; // Variasi tetap dari secondary
  
  @override 
  Color get secondaryFixedDim => secondaryContainer.withValues(alpha: 0.8); // Versi redup dari secondaryFixed

  // ========= Tertiary colors  
  @override 
  Color get tertiary => const Color(0xFF717375); // Warna tersier untuk elemen dekoratif
  
  @override 
  Color get onTertiary => white; // Warna teks atau ikon di atas warna tertiary
  
  @override 
  Color get tertiaryContainer => const Color(0xFF717375); // Warna container untuk elemen tersier
  
  @override 
  Color get onTertiaryContainer => white; // Warna teks atau ikon di atas container tersier
  
  @override 
  Color get tertiaryFixed => tertiaryContainer; // Variasi tetap dari tertiary
  
  @override 
  Color get tertiaryFixedDim => tertiaryContainer.withValues(alpha: 0.8); // Versi redup dari tertiaryFixed

  // ========= Surface colors  
  @override 
  Color get surface => const Color(0xFFFFFDF6); // Warna latar belakang utama
  
  @override 
  Color get onSurface => const Color(0xFF252525); // Warna teks atau ikon di atas latar belakang utama
  
  @override 
  Color get surfaceBright => white; // Warna terang untuk elemen seperti kartu
  
  @override 
  Color get surfaceDim => surface.withValues(alpha: 0.9); // Warna redup untuk elemen seperti dialog
  
  @override 
  Color get surfaceContainer => const Color(0xFFFFFFFF); // Warna latar belakang container kecil
  
  @override 
  Color get surfaceContainerLow => surface.withValues(alpha: 0.98); // Warna terang untuk container
  
  @override 
  Color get surfaceContainerHigh => const Color(0xFFF5F5F5); // Warna lebih gelap untuk container
  
  @override 
  Color get surfaceContainerHighest => surface.withValues(alpha: 0.6); // Warna paling gelap untuk container
  
  @override 
  Color get surfaceContainerLowest => surface.withValues(alpha: 0.1); // Warna paling terang untuk container
  
  @override 
  Color get surfaceTint => primary; // Warna aksen pada elemen surface
  
  @override 
  Color get inverseSurface => black; // Warna kontras dengan surface
  
  @override 
  Color get onInverseSurface => const Color(0xFF717375); // Warna teks atau ikon di atas inverseSurface

  // ========= Error colors  
  @override 
  Color get error => const Color(0xFFCB3A31); // Warna untuk status error
  
  @override 
  Color get onError => white; // Warna teks atau ikon di atas warna error
  
  @override 
  Color get errorContainer => error.withValues(alpha: 0.1); // Warna container untuk status error
  
  @override 
  Color get onErrorContainer => white; // Warna teks atau ikon di atas errorContainer

  // ========= Outline and shadow  
  @override 
  Color get outline => const Color(0xFFAABEC8); // Warna garis batas elemen
  
  @override 
  Color get outlineVariant => lightGrey; // Varian garis batas untuk elemen tertentu
  
  @override 
  Color get shadow => Colors.black.withValues(alpha: 0.1); // Warna bayangan elemen
  
  @override 
  Color get scrim => Colors.black.withValues(alpha: 0.5); // Warna overlay semi-transparan, contoh: background dialog

  // ========= Background and neutral colors  
  @override 
  Color get lightGrey => const Color(0xFFBBBBBB); // Warna abu-abu terang untuk elemen netral
  
  @override 
  Color get grey => const Color(0xFF1F1F1F); // Warna abu-abu gelap untuk elemen netral
  
  @override 
  Color get white => Colors.white; // Warna putih umum
  
  @override 
  Color get black => Colors.black; // Warna hitam umum
}
