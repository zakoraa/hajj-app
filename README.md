<!DOCTYPE html>
<html lang="en">
<body>
  <div class="container">
    <h1>Hajj & Umrah App</h1>
    <p></p>
    <h2>Documentation</h2>
    <h3>Notes:</h3>
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
    <h4>2) Dependency Injection</h4>
    <p>Fungsi: untuk automatisasi kode dependency injection (lebih detail: <a href="https://pub.dev/packages/injectable">dokumentasi</a>)</p>
    <p>Jika ingin menggunakan dependency injection pada sebuah kelas, jalankan perintah ini terlebih dahulu di terminal:</p>
    <code>dart run build_runner watch</code>
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
  </div>
</body>
</html>
