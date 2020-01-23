<?php
/**
 * Konfigurasi dasar WordPress.
 *
 * Berkas ini berisi konfigurasi-konfigurasi berikut: Pengaturan MySQL, Awalan Tabel,
 * Kunci Rahasia, Bahasa WordPress, dan ABSPATH. Anda dapat menemukan informasi lebih
 * lanjut dengan mengunjungi Halaman Codex {@link http://codex.wordpress.org/Editing_wp-config.php
 * Menyunting wp-config.php}. Anda dapat memperoleh pengaturan MySQL dari web host Anda.
 *
 * Berkas ini digunakan oleh skrip penciptaan wp-config.php selama proses instalasi.
 * Anda tidak perlu menggunakan situs web, Anda dapat langsung menyalin berkas ini ke
 * "wp-config.php" dan mengisi nilai-nilainya.
 *
 * @package WordPress
 */

// ** Pengaturan MySQL - Anda dapat memperoleh informasi ini dari web host Anda ** //
/** Nama basis data untuk WordPress */
define( 'DB_NAME', 'timedoor' );

/** Nama pengguna basis data MySQL */
define( 'DB_USER', 'root' );

/** Kata sandi basis data MySQL */
define( 'DB_PASSWORD', '' );

/** Nama host MySQL */
define( 'DB_HOST', 'localhost' );

/** Set Karakter Basis Data yang digunakan untuk menciptakan tabel basis data. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Jenis Collate Basis Data. Jangan ubah ini jika ragu. */
define('DB_COLLATE', '');

/**#@+
 * Kunci Otentifikasi Unik dan Garam.
 *
 * Ubah baris berikut menjadi frase unik!
 * Anda dapat menciptakan frase-frase ini menggunakan {@link https://api.wordpress.org/secret-key/1.1/salt/ Layanan kunci-rahasia WordPress.org}
 * Anda dapat mengubah baris-baris berikut kapanpun untuk mencabut validasi seluruh cookies. Hal ini akan memaksa seluruh pengguna untuk masuk log ulang.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'klf:+`J<KO{o@:f^NW(:zi?|0Iu:o4:$,? #JZ|J5qCkNaM>)6qiKd6=4mBymns}' );
define( 'SECURE_AUTH_KEY',  ':p.@R~y]Fa`i/_i{@B_M($RQv[h(zh*::DfL,r,dw2in-!nX?)Mexz@Im@yRa$W;' );
define( 'LOGGED_IN_KEY',    '6$Qe{vj8DZh#L_s9,hi%IgAS{]3bCakANb2aH5]l@LMnD#9s~/[,rWwa6b-zLT5.' );
define( 'NONCE_KEY',        'P@=g9s#JXEJ]{?3c2<q!?p|Y8]$Rlq4q  U|h+:F+F:R~txXb1w1}--LK2 pQFzT' );
define( 'AUTH_SALT',        'PA<9!4Xtk`tA1inD0InT$DFi2=^9P.!,1%X7)ZN~`|73wM]T9NJwT5$+$b|)*6K~' );
define( 'SECURE_AUTH_SALT', '8EB3#q&JGR]!,}`tn(.GDZ/a~jlk8V*R#r+?7ZSmQiz:ye!Rm`G::/Vp;.cu?!3m' );
define( 'LOGGED_IN_SALT',   '|7MdQ+NMMof_mJ0F,;h8~/cyWWHenXu+]kN}ez5{xa)+R]QZ#z+6T=qefgU=~./x' );
define( 'NONCE_SALT',       'l=`=)HjU8n)b^LY(WafI;z %>XBa^Mjr$3U j/C:y)qFbK=au|[*(r+I@] 1{+< ' );

/**#@-*/

/**
 * Awalan Tabel Basis Data WordPress.
 *
 * Anda dapat memiliki beberapa instalasi di dalam satu basis data jika Anda memberikan awalan unik
 * kepada masing-masing tabel. Harap hanya masukkan angka, huruf, dan garis bawah!
 */
$table_prefix = 'wp_';

/**
 * Untuk pengembang: Moda pengawakutuan WordPress.
 *
 * Ubah ini menjadi "true" untuk mengaktifkan tampilan peringatan selama pengembangan.
 * Sangat disarankan agar pengembang plugin dan tema menggunakan WP_DEBUG
 * di lingkungan pengembangan mereka.
 */
define('WP_DEBUG', false);

/* Cukup, berhenti menyunting! Selamat ngeblog. */

/** Lokasi absolut direktori WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Menentukan variabel-variabel WordPress berkas-berkas yang disertakan. */
require_once(ABSPATH . 'wp-settings.php');
