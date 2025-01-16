<!DOCTYPE html>
<html lang="en">
<body>
  <div class="container">
    <h1>Hajj & Umrah App</h1>
    <p></p>
    <h2>Documentation</h2>
    <h3>Important Notes:</h3>
    <h4>1) Penggunaan package flutter_screenutil</h4>
    <p>Fungsi: untuk membuat tampilan adaptive terhadap ukuran device  (lebih detail: <a href="https://pub.dev/packages/flutter_screenutil">dokumentasi</a>)</p>
<ul>
  <li><strong>Contoh penggunaan:</strong>
    <ul>
      <li><code>width : 540.w</code> // Menyesuaikan dengan lebar layar.</li>
      <li><code>height: 200.h</code> // Menyesuaikan dengan tinggi layar, dalam kondisi normal tinggi tetap menggunakan <code>x.w</code>.</li>
      <li><code>height: 200.r</code> // Menyesuaikan dengan ukuran terkecil antara lebar atau tinggi layar.</li>
      <li><code>width: 1.sw</code> // Lebar perangkat.</li>
      <li><code>height : 1.sh</code> // Tinggi perangkat.</li>
      <li><code>fontSize : 24.sp</code> // Menyesuaikan ukuran font.</li>
    </ul>
  </li>
</ul>
    <h4>2) Build Runner <strong>(*Sangat disarankan untuk dilakukan sebelum memulai koding)</strong></h4>
    <p>Fungsi: untuk generate kode secara otomatis dengan menambahkan anotasi ke beberapa class seperti class viewModel, Model, dll. seperti pada anotasi untuk Dependecy Injection (<a href="https://pub.dev/packages/injectable_generator">dokumentasi</a>), anotasi freezed pada model (<a href="https://pub.dev/packages/freezed">dokumentasi</a>), dan anotasi pada viewModel (<a href="https://riverpod.dev/docs/introduction/getting_started">dokumentasi</a>)</p>
    <p>Jalankan perintah ini di terminal:</p>
    <code>dart run build_runner watch -d build --delete-conflicting-outputs</code>
    <h4>3) Daftar atribut widget yang dipanggil secara konstan</h4>
    <p>*usahakan atribut widget seperti text, style text, dan warna diambil dari class konstan yang sudah diatur.</p>
    <ul>
      <li><strong>Text</strong>: diambil dari l10n (core/l10n/) yang penggunaanya menggunakan class Lang (di folder core/util/).<br/>
        Contoh: <br/>
        <code>Text(Lang.of(context).helloWorld)</code>
      </li>
      <li><strong>Style Text</strong>: diambil dari file core/styles/fonts/app_font.dart.<br/>
        Contoh: <br/>
        <code>Text(
  ...
  style: AppFont.titleMedium(context),
)</code>
        <p>Bisa juga atur warna dan ketebalan</p>
           <code>Text(
  ...
  style: AppFont.titleMedium(context)?.red.bold,
)</code>
 <p>atau custom style</p>
          <code>Text(
  ...
  style: AppFont.titleMedium(context)?.copyWith(color: Colors.red, fontWeight: FontWeight.w600),
)</code><br/>
           <code>Text(
  ...
  style: AppFont.text16.copyWith(color: Colors.red, fontWeight: FontWeight.w600),
)</code>
      </li>
      <li><strong>Warna</strong>: diambil dari file core/styles/colors/app_color.dart.<br/>
      Contoh:<br/>
        <code>Container(
    color: AppColor.primary(context),
)</code>
      </li>
    </ul>
    <h4>4) Lainnya</h4>
     <ul>
      <li><strong>folder common pada folder ui</strong>: berisi view model dan widget yang dapat digunakan pada lebih dari satu halaman pada scope folder parentnya.</li>
      <li><strong>SafeArea</strong>: Gunakan widget ini jika ingin membuat halaman atau widget tidak tertimpa status bar device.</li>
      <li><strong>SizedBox</strong>: Gunakan widget ini jika ingin membuat jarak antara widget(lebih disarankan dibandingkan menggunakan Padding).</li>
      <li><strong>Kode lebih rapih dan mudah dibaca</strong>: Setiap penutup class widget ")" diberi tanda koma ",". Contoh: <code>Container(),</code></li>
    </ul>
    <hr/>
    <h3>Struktur proyek:</h3>
    <pre>
lib/
├── core/
│   ├── constants/
│   │   ├── assets/
│   │   ├── common/
│   ├── failures/
│   ├── l10n/
│   ├── routes/
│   ├── styles/
│   │   ├── colors/
│   │   ├── fonts/
│   │   ├── themes/
│   │   │   ├── modes/
│   │   │   └── widgets/
│   └── utils/
├── data/
│   ├── local/
│   │   ├── data_sources/
│   │   ├── models/
│   │   └── repositories/
│   ├── remote/
│   │   ├── data_sources/
│   │   ├── models/
│   │   └── repositories/
│   └── di/
├── ui/
│   ├── admin/
│   ├── common/
│   ├── user/
│   └── my_app.dart
└── main.dart
    </pre>
    <hr/>
    <h3>Penjelasan struktur proyek:</h3>
    <ul>
  <li><strong>lib/</strong>
    <ul>
      <li><strong>core/</strong>
        <ul>
          <li><strong>constants/</strong>
            <ul>
              <li><strong>assets/</strong>: Berisi variable konstan yang menyimpan nama aset seperti svg, icon, dan gambar (png, jgp, dll)</li>
              <li><strong>common/</strong>: Menyimpan nilai konstan lainnya.</li>
            </ul>
          </li>
          <li><strong>failures/</strong>: Menyimpan definisi kesalahan (error handling).</li>
          <li><strong>l10n/</strong>: Menyimpan file terkait dengan lokalisasi bahasa.</li>
          <li><strong>routes/</strong>: Menyimpan informasi tentang nama atau definisi routing dalam aplikasi.</li>
          <li><strong>styles/</strong>
            <ul>
              <li><strong>colors/</strong>: Menyimpan konfigurasi warna.</li>
              <li><strong>fonts/</strong>: Menyimpan konfigurasi font.</li>
              <li><strong>themes/</strong>
                <ul>
                  <li><strong>modes/</strong>: Berisi mode tema seperti tema utama atau yang lainnya.</li>
                  <li><strong>widgets/</strong>: Berisi widget tema khusus.</li>
                </ul>
              </li>
            </ul>
          </li>
          <li><strong>utils/</strong>: Menyimpan fungsi atau utilitas yang dapat digunakan kembali.</li>
        </ul>
      </li>
      <li><strong>data/</strong>
        <ul>
          <li><strong>local/</strong>
            <ul>
              <li><strong>data_source/</strong>: Menyimpan sumber data lokal.</li>
              <li><strong>models/</strong>: Menyimpan model data lokal.</li>
              <li><strong>repositories/</strong>: Menyimpan logika repository untuk data lokal.</li>
            </ul>
          </li>
          <li><strong>remote/</strong>
            <ul>
              <li><strong>data_source/</strong>: Menyimpan sumber data API.</li>
              <li><strong>models/</strong>: Menyimpan model data dari API.</li>
              <li><strong>repositories/</strong>: Menyimpan logika repository untuk data API.</li>
            </ul>
          </li>
          <li><strong>di/</strong>: Menyimpan file untuk dependency injection.</li>
        </ul>
      </li>
      <li><strong>ui/</strong>
        <ul>
          <li><strong>admin/</strong>: Menyimpan tampilan untuk admin.</li>
          <li><strong>common/</strong>: Menyimpan tampilan yang dapat digunakan pada seluruh halaman.</li>
          <li><strong>user/</strong>: Menyimpan tampilan untuk user.</li>
          <li><strong>my_app.dart</strong>: File untuk mengatur pengaturan utama aplikasi (seperti tema, rute, dll.).</li>
        </ul>
      </li>
      <li><strong>main.dart</strong>: File utama untuk menjalankan aplikasi Flutter.</li>
    </ul>
  </li>
</ul>
    <hr/>
    <h3>Aturan penulisan/penamaan:</h3>
    <ul>
      <li><strong>nama route</strong> : kebab-case dan diawali dengan "/", contoh: /admin-home</li>
      <li><strong>folder</strong> : snake_case dan jika terdapat kemungkinan banyak file didalamnya menggunakan kata jamak, contoh: view_models/</li>
      <li><strong>file</strong> : snake_case, contoh: home_screen.dart</li>
      <li><strong>class</strong> : UpperCase, contoh: HomeScreen</li>
      <li><strong>variable</strong> : camelCase, contoh: helloWorld</li>
      <li><strong>function</strong> : camelCase, contoh: handleButton()</li>
      <li><strong>images/svgs/icons</strong> : kebab-case, contoh: app-logo.png</li>
    </ul>
    <hr/>
  </div>
</body>
</html>
