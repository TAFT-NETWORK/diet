import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['tr', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String trText = '',
    String enText = '',
  }) =>
      [trText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // giris
  {
    'kf4ml98u': {
      'tr': 'Telefon Numaranız',
      'en': '',
    },
    'j6p13jk0': {
      'tr': 'Sisteme Kayıtlı Cep Numaranız...',
      'en': '',
    },
    '66wikfch': {
      'tr': 'Giris Kodu Al',
      'en': '',
    },
    '5obrm7uw': {
      'tr': 'Sadece Kayıtlı Üyeler Giris Yapabilir',
      'en': '',
    },
    '2tb2c7vy': {
      'tr': 'Home',
      'en': '',
    },
  },
  // nsyf
  {
    'spcp0s58': {
      'tr': 'MrB,',
      'en': '',
    },
    'l6xa2nfg': {
      'tr': 'Diet Listesi/Egzersizler',
      'en': '',
    },
    'pah4qhhl': {
      'tr': 'Hedef Kilo',
      'en': '',
    },
    'nsaz1mhb': {
      'tr': '77,5 KG',
      'en': '',
    },
    'hhw3v1xg': {
      'tr': 'Geçerlilik Tarihi',
      'en': '',
    },
    'a51hpoae': {
      'tr': '05/25',
      'en': '',
    },
    'a0s38hed': {
      'tr': 'Size ÖZel Servisler',
      'en': '',
    },
    'pq49z476': {
      'tr': 'Akıllı Saat',
      'en': '',
    },
    'kvwc87t8': {
      'tr': 'Aktivite',
      'en': '',
    },
    'q1o8wy10': {
      'tr': 'Diet ',
      'en': '',
    },
    'guxzl7yw': {
      'tr': 'Bluetooth',
      'en': '',
    },
    '2f5rmr9l': {
      'tr': 'Sağlık',
      'en': '',
    },
    'jixhq959': {
      'tr': 'Ayarlar',
      'en': '',
    },
    'ptb6d2a0': {
      'tr': 'Yapılacaklar Listesi',
      'en': '',
    },
    'urb1tkiv': {
      'tr': '4 Kilometre Yürüyüs',
      'en': '',
    },
    'pxf2nrml': {
      'tr': 'Günlük',
      'en': '',
    },
    'twjwkpt5': {
      'tr': '3200 Cal',
      'en': '',
    },
    '67r1xbqh': {
      'tr': 'Hello World',
      'en': '',
    },
    'az15jpoy': {
      'tr': 'Kilonuzu  Giriniz',
      'en': '',
    },
    'k8ddt4ft': {
      'tr': 'Income',
      'en': '',
    },
    'icl1lws9': {
      'tr': '67 KG',
      'en': '',
    },
    '03h67xmb': {
      'tr': 'Hello World',
      'en': '',
    },
    'gjsa5tpv': {
      'tr': 'Hedef Başarıldı..',
      'en': '',
    },
    '6irc2pu3': {
      'tr': 'Income',
      'en': '',
    },
    'po5miwjq': {
      'tr': '4100 Cal',
      'en': '',
    },
    'gaeqdcmd': {
      'tr': 'Hello World',
      'en': '',
    },
    'l4sjpj5q': {
      'tr': 'Go Far Rewards',
      'en': '',
    },
    '5eslxwbb': {
      'tr': 'Income',
      'en': '',
    },
    '0r2ycj61': {
      'tr': '\$50.00',
      'en': '',
    },
    'rnmcxlzk': {
      'tr': 'Hello World',
      'en': '',
    },
    'meil5moj': {
      'tr': 'Profil',
      'en': '',
    },
  },
  // SmsOnay
  {
    'lr5wgzav': {
      'tr': 'Sms Onay Sayfası ',
      'en': '',
    },
    'ibkf73yf': {
      'tr':
          '\nHesabınızla ilişkili telefon numarasına gelen doğrulama kodunu yazınız.',
      'en': '',
    },
    'g5c9z7w3': {
      'tr': 'Onay Kodu',
      'en': '',
    },
    'ott262mk': {
      'tr': '',
      'en': '',
    },
    '0t8j07md': {
      'tr': 'Kodu Gönder',
      'en': '',
    },
    'rzg5rsjt': {
      'tr': 'Home',
      'en': '',
    },
  },
  // SoruSor
  {
    't82ykgrp': {
      'tr': 'Sorular 1/3',
      'en': '',
    },
    'c0pvedd3': {
      'tr': 'Bugün diyete başlamak için kendini nsaıl hissediyorsun ?',
      'en': '',
    },
    'v11zi6kd': {
      'tr':
          'Bu giden sorulardan sonra 2 gün içinde veya sizin için atanmış tarihte diyetinizie başlamış olacaksınız.',
      'en': '',
    },
    'xnexdcho': {
      'tr': 'Sonraki Soruya Geç',
      'en': '',
    },
    '3avua3nq': {
      'tr': 'Diyete Başla',
      'en': '',
    },
    'uhthcwcj': {
      'tr': 'Home',
      'en': '',
    },
  },
  // Anasayfa
  {
    'e11e6vb1': {
      'tr': 'Sisteme kayıtlı verileriniz görüntülenmektedir.',
      'en': '',
    },
    'lt9gwji6': {
      'tr': 'Günlük Kalori',
      'en': '',
    },
    'ob0ytaq2': {
      'tr': 'Goals',
      'en': '',
    },
    '89mao0qg': {
      'tr': 'Progress',
      'en': '',
    },
    'hjnxzv06': {
      'tr': '4/10',
      'en': '',
    },
    'pv837f72': {
      'tr': 'Haftalık Analiz',
      'en': '',
    },
    'wawr7lqp': {
      'tr': 'April 1-7th',
      'en': '',
    },
    'k33us22j': {
      'tr': 'Diyetli Gün',
      'en': '',
    },
    '6tvf3orm': {
      'tr': 'April 2022',
      'en': '',
    },
    'ztunz0ne': {
      'tr': '03',
      'en': '',
    },
    '8xtl3wp7': {
      'tr': 'Time Left',
      'en': '',
    },
    'hrse65cv': {
      'tr': '8:20:24',
      'en': '',
    },
    'iyrfm2wj': {
      'tr': 'Aktivite',
      'en': '',
    },
    'a24ye9x3': {
      'tr': 'Goals',
      'en': '',
    },
    '57fx25zp': {
      'tr': 'Progress',
      'en': '',
    },
    'ip2hnhd8': {
      'tr': '4/10',
      'en': '',
    },
    'pitx2pvq': {
      'tr': 'Günlük Sorular',
      'en': '',
    },
    'qhjcl4eg': {
      'tr': 'Lütfen istenilen günlük soruları cevaplayınız',
      'en': '',
    },
    'lmzxin4x': {
      'tr': 'Sorulara Gidiniz',
      'en': '',
    },
    'dr00kw5j': {
      'tr': 'Home',
      'en': '',
    },
  },
  // addAnotherProfile
  {
    'lvmzxc8p': {
      'tr': 'Profil Ekle',
      'en': '',
    },
    'bur837nt': {
      'tr': 'Bu kişiyi kolayca tanımlayabilmemiz için bir fotoğraf yükleyin.',
      'en': '',
    },
    'lm3a3ir6': {
      'tr': 'Kişi Adı',
      'en': '',
    },
    '9poef1y9': {
      'tr': 'Adınızı Yazınız...',
      'en': '',
    },
    'elqb5kpe': {
      'tr': 'Kişi Yaşı',
      'en': '',
    },
    'rb7s1opy': {
      'tr': 'Yaşınızı Yazınız...',
      'en': '',
    },
    'fsvagka6': {
      'tr': 'Hedefiniz',
      'en': '',
    },
    '1c0wzzhb': {
      'tr': 'Hedef Kilonuzu Yazınız...',
      'en': '',
    },
    'ko6d5ttt': {
      'tr': 'Eposta Adresi',
      'en': '',
    },
    't859b7az': {
      'tr': 'Lütfen geçerli eposta adresini giriniz...',
      'en': '',
    },
    '5ql2rr7j': {
      'tr': 'Cinsiyet',
      'en': '',
    },
    'pm6p3xy6': {
      'tr': 'Erkek',
      'en': '',
    },
    '0z2u8uts': {
      'tr': 'Kadın',
      'en': '',
    },
    'bfkzgz4k': {
      'tr': 'Diğer',
      'en': '',
    },
    'yjgzehfx': {
      'tr': 'Profili Tamamla',
      'en': '',
    },
    'r9or6o3t': {
      'tr': 'Home',
      'en': '',
    },
  },
  // iletisim
  {
    'wn1k41is': {
      'tr': 'Selamlar',
      'en': '',
    },
    'q2drqwa6': {
      'tr': 'Sormak İstediğiniz bir konu var mı?',
      'en': '',
    },
    'qzxdeeyf': {
      'tr': 'Diet Başlangıç/Bitiş ',
      'en': '',
    },
    'f1g77drf': {
      'tr':
          'Buradan Diet Başlangıç ve Bitiş Tarihlerinizi Kontrol Edebilirsiniz',
      'en': '',
    },
    'td8uhfww': {
      'tr': 'Bizi Arayın',
      'en': '',
    },
    'o8o3xq8c': {
      'tr': 'Hafta İçi 09:00/18:00 Hafta Sonu Cumartesi 09:00/14:00 da Arayın.',
      'en': '',
    },
    'a02q826p': {
      'tr': 'WhatsApp ',
      'en': '',
    },
    'rkldt544': {
      'tr': 'Bize WhatsApp ile Ulaşın',
      'en': '',
    },
    '8qf7f3a7': {
      'tr': ' Home',
      'en': '',
    },
  },
  // findSymptoms
  {
    'pulppgqa': {
      'tr': 'Yapay Zeka Arama Motoru',
      'en': '',
    },
    'otaxxqjk': {
      'tr': 'Yemek Adı',
      'en': '',
    },
    '6plxl3dh': {
      'tr': 'Yemek Adı Veya Sebze/Meyve',
      'en': '',
    },
    'e67v77kp': {
      'tr': '[Symptom Name]',
      'en': '',
    },
    'l8i0et6w': {
      'tr': 'Yapay Zeka İle Sizlere Sağlık Verilerini Sunmaktayız.',
      'en': '',
    },
    '7ggso12q': {
      'tr': 'Symptoms',
      'en': '',
    },
  },
  // appointmentDetails
  {
    'pihqoajb': {
      'tr': 'Details',
      'en': '',
    },
    'j4sy5rw9': {
      'tr': 'Type of Appointment',
      'en': '',
    },
    'j26ej2ks': {
      'tr': 'What’s the problem?',
      'en': '',
    },
    'ij8jyqyv': {
      'tr': 'For',
      'en': '',
    },
    'p9ga7i4y': {
      'tr': 'When',
      'en': '',
    },
    'kf9vm97q': {
      'tr': 'Reschedule',
      'en': '',
    },
    'uruzhia7': {
      'tr': 'Cancel Appointment',
      'en': '',
    },
    '12fxxury': {
      'tr': 'Home',
      'en': '',
    },
  },
  // profilePage
  {
    '7t2fhtxd': {
      'tr': 'Ailments',
      'en': '',
    },
    'ey155zll': {
      'tr': 'Next Appointment',
      'en': '',
    },
    'n9z3xw6r': {
      'tr': 'Aug 20, 2021',
      'en': '',
    },
    'aebv2l2o': {
      'tr': 'Past Appointments',
      'en': '',
    },
    '43ks09ty': {
      'tr': '[Appointment Type]',
      'en': '',
    },
    'ohmtq16e': {
      'tr': '[date_time]',
      'en': '',
    },
    'es31by3n': {
      'tr': 'For',
      'en': '',
    },
    'ypoj9w7m': {
      'tr': '[display_name]',
      'en': '',
    },
    'qcgngdpg': {
      'tr': 'Profile',
      'en': '',
    },
  },
  // basarili
  {
    '3sl9y9op': {
      'tr': 'Tebrikler!',
      'en': '',
    },
    'lxt2qh9q': {
      'tr': 'Başarılı bir şekide tamamlandı..',
      'en': '',
    },
    'wrx7af6o': {
      'tr': 'Devam',
      'en': '',
    },
    'bwo1gpke': {
      'tr': 'Home',
      'en': '',
    },
  },
  // sporyap
  {
    'm8yg99n9': {
      'tr': 'Spor Ve Sağlık',
      'en': '',
    },
    'gz8jlq4l': {
      'tr': 'Yapay Zeka ile Arama Motorunuz...',
      'en': '',
    },
    '6c4ahza0': {
      'tr': 'Kategoriler',
      'en': '',
    },
    'zjik13y1': {
      'tr': 'Yoga',
      'en': '',
    },
    '5plr74fg': {
      'tr': 'Savunma',
      'en': '',
    },
    'na3k0rp6': {
      'tr': 'Fitness',
      'en': '',
    },
    'yn5asm8d': {
      'tr': 'Meditasyon',
      'en': '',
    },
    'zb5aeb9o': {
      'tr': 'Running',
      'en': '',
    },
    'eqbkprpz': {
      'tr': 'Günlük Aktiviteler',
      'en': '',
    },
    '2vjssljj': {
      'tr': 'Başlangıç ',
      'en': '',
    },
    '8rl2u8ym': {
      'tr': 'Başla',
      'en': '',
    },
    'jxex0z6g': {
      'tr': 'Orta',
      'en': '',
    },
    'dkz336ms': {
      'tr': 'Başla',
      'en': '',
    },
    'am2t5qo6': {
      'tr': 'Zorlu',
      'en': '',
    },
    'xbnao5m5': {
      'tr': 'Başla',
      'en': '',
    },
  },
  // Aktivitelistesi
  {
    'edkm3nl8': {
      'tr': 'Aktivite Takvimi',
      'en': '',
    },
    'j5gwqgyj': {
      'tr': 'Son Aktiviteleriniz',
      'en': '',
    },
    'dko20vve': {
      'tr': '14, Eylül. 2022',
      'en': '',
    },
    '9zcgvyur': {
      'tr': 'Kullanıcı',
      'en': '',
    },
    'oisabm0k': {
      'tr': 'Andrew Daniels',
      'en': '',
    },
    'd0h5ehsa': {
      'tr': 'Andrew F.',
      'en': '',
    },
    'zyfb2zsr': {
      'tr': '14, Eylül 2022',
      'en': '',
    },
    'h0rxgxvo': {
      'tr': 'Kullanıcı',
      'en': '',
    },
    '8c9v1onf': {
      'tr': 'Meditasyon',
      'en': '',
    },
    'xcmmlapb': {
      'tr': 'Andrew F.',
      'en': '',
    },
    'm29youa7': {
      'tr': '14, Sept. 2021',
      'en': '',
    },
    'b5ynv58r': {
      'tr': 'Oluşturuldu',
      'en': '',
    },
    'c8gszblt': {
      'tr': '#402 - Talep',
      'en': '',
    },
    'w6trqfdk': {
      'tr': 'Andrew F.',
      'en': '',
    },
    'ml0e67l1': {
      'tr': 'Tamamlanan Aktiviteler',
      'en': '',
    },
  },
  // baslangic
  {
    'wrxom2db': {
      'tr': 'Hadi Başlayalım..',
      'en': '',
    },
    'bapjdrky': {
      'tr': 'Karın Kasları',
      'en': '',
    },
    'z80gqu1i': {
      'tr': 'Göğüs Kasları',
      'en': '',
    },
    'ilbltffl': {
      'tr': 'Kol Kasları',
      'en': '',
    },
    'goj3znly': {
      'tr': 'Bacak Kasları',
      'en': '',
    },
    'setjuj6p': {
      'tr': 'Omuz Ve Sırt Kasları',
      'en': '',
    },
    'ni3wtnif': {
      'tr': 'Başlangıç',
      'en': '',
    },
    'xm2i8jpu': {
      'tr': 'Home',
      'en': '',
    },
  },
  // gogusbaslangic
  {
    'u372icn0': {
      'tr': 'Göğüs Başlangıç Düzeyi',
      'en': '',
    },
    'zto0qcwm': {
      'tr': 'Home',
      'en': '',
    },
  },
  // zorlu
  {
    'rremdq09': {
      'tr': 'Hadi Başlayalım..',
      'en': '',
    },
    'z6h84yc1': {
      'tr': 'Karın Kasları',
      'en': '',
    },
    'bzq6cbh7': {
      'tr': 'Göğüs Kasları',
      'en': '',
    },
    'eu9xwd2y': {
      'tr': 'Kol Kasları',
      'en': '',
    },
    '9wsv9ck5': {
      'tr': 'Bacak Kasları',
      'en': '',
    },
    '8b5bb0qc': {
      'tr': 'Omuz Ve Sırt Kasları',
      'en': '',
    },
    '9ej9p7dn': {
      'tr': 'Page Title',
      'en': '',
    },
    'tysyc437': {
      'tr': 'Home',
      'en': '',
    },
  },
  // Orta
  {
    'npicgquf': {
      'tr': 'Hadi Başlayalım..',
      'en': '',
    },
    'sfx9obhg': {
      'tr': 'Karın Kasları',
      'en': '',
    },
    'd9xpvw4b': {
      'tr': 'Göğüs Kasları',
      'en': '',
    },
    'l56nyr1t': {
      'tr': 'Kol Kasları',
      'en': '',
    },
    'jct3jym9': {
      'tr': 'Bacak Kasları',
      'en': '',
    },
    '20imremi': {
      'tr': 'Omuz Ve Sırt Kasları',
      'en': '',
    },
    'd8qou4ez': {
      'tr': 'Orta',
      'en': '',
    },
    'y7ywdaa3': {
      'tr': 'Home',
      'en': '',
    },
  },
  // SaatEslesme
  {
    'c9leeh7m': {
      'tr': 'Google Fit ',
      'en': '',
    },
    'u97edbgz': {
      'tr':
          'Google Fit Eklentisi ile Akıllı Saatlerde Ve Telefonunuzdan Veri Alınacaktır.',
      'en': '',
    },
    'zo7vncpw': {
      'tr': 'Apple Health',
      'en': '',
    },
    'uzc39gcc': {
      'tr':
          'Apple Health Eklentisi ile Akıllı Saatlerde Ve Telefonunuzdan Veri Alınacaktır.',
      'en': '',
    },
    '4ob6mrk7': {
      'tr': 'Samsung Health',
      'en': '',
    },
    '95f8xq1f': {
      'tr':
          'Samsung Health Eklentisi ile Akıllı Saatlerde Ve Telefonunuzdan Veri Alınacaktır.',
      'en': '',
    },
    'zgzw0m7o': {
      'tr': 'Ayarları Kaydet',
      'en': '',
    },
    '7ftl3iek': {
      'tr': 'Saat Entegrasyonu',
      'en': '',
    },
  },
  // DietListesi
  {
    '6h5r72fd': {
      'tr': 'Diyet Sistemi Başlangıç',
      'en': '',
    },
    'ixdajv1a': {
      'tr': 'Model 42',
      'en': '',
    },
    '96cleb44': {
      'tr': 'KG',
      'en': '',
    },
    'waktxs0c': {
      'tr': 'Diyet Başlama Sistemi',
      'en': '',
    },
    'qry8gqfy': {
      'tr': 'Charge',
      'en': '',
    },
    '2ahpwjkc': {
      'tr': '70%',
      'en': '',
    },
    '4gx3x7vb': {
      'tr': 'Range',
      'en': '',
    },
    'sfaf754e': {
      'tr': '329m',
      'en': '',
    },
    'i3csg0jc': {
      'tr': 'Status',
      'en': '',
    },
    'jmm848nh': {
      'tr': 'Good',
      'en': '',
    },
    '7ih74drr': {
      'tr': 'Diyete Başla',
      'en': '',
    },
    '1arhiaga': {
      'tr': '28 Gün sürecek diyetiniz başlamak üzeredir.',
      'en': '',
    },
    'uet83evk': {
      'tr': 'Home',
      'en': '',
    },
  },
  // bookAppointment
  {
    'egrda8tt': {
      'tr': 'Book Appointment',
      'en': '',
    },
    'edwgk3nn': {
      'tr':
          'Fill out the information below in order to book your appointment with our office.',
      'en': '',
    },
    'pqfmpnny': {
      'tr': 'Emails will be sent to:',
      'en': '',
    },
    'w5obv0ic': {
      'tr': 'Booking For',
      'en': '',
    },
    'adf9smef': {
      'tr': 'Type of Appointment',
      'en': '',
    },
    'j33qufrs': {
      'tr': 'Doctors Visit',
      'en': '',
    },
    'x4x4wmba': {
      'tr': 'Routine Checkup',
      'en': '',
    },
    '285x204f': {
      'tr': 'Scan/Update',
      'en': '',
    },
    'zlfefjgk': {
      'tr': 'What\'s the problem?',
      'en': '',
    },
    'odwxfape': {
      'tr': 'Choose Date',
      'en': '',
    },
    'pwxqoa0e': {
      'tr': 'Cancel',
      'en': '',
    },
    'np0hjbfx': {
      'tr': 'Book Now',
      'en': '',
    },
  },
  // bookingOld
  {
    '7j89ka9o': {
      'tr': 'Book Appointment',
      'en': '',
    },
    'lj6614xp': {
      'tr':
          'Fill out the information below in order to book your appointment with our office.',
      'en': '',
    },
    'e1ukodcu': {
      'tr': 'Email Address',
      'en': '',
    },
    '9hlyr3xe': {
      'tr': 'Booking For',
      'en': '',
    },
    'zf8xc7f4': {
      'tr': 'Type of Appointment',
      'en': '',
    },
    '9m6bnr03': {
      'tr': 'Doctors Visit',
      'en': '',
    },
    'gmcjih58': {
      'tr': 'Routine Checkup',
      'en': '',
    },
    '1ujnngsp': {
      'tr': 'Scan/Update',
      'en': '',
    },
    'fqk2ju2o': {
      'tr': 'What\'s the problem?',
      'en': '',
    },
    'kg8l1fc1': {
      'tr': 'Choose Date',
      'en': '',
    },
    'oud8d8zd': {
      'tr': 'Cancel',
      'en': '',
    },
    'my4btljv': {
      'tr': 'Book Now',
      'en': '',
    },
  },
  // editBooking
  {
    'ulxs0v35': {
      'tr': 'Edit Appointment',
      'en': '',
    },
    'ilbqej1i': {
      'tr': 'Edit the fields below in order to change your appointment.',
      'en': '',
    },
    'dvgatqhg': {
      'tr': 'Emails will be sent to:',
      'en': '',
    },
    'xcwvf0q9': {
      'tr': 'Booking For',
      'en': '',
    },
    '9vq5pp0v': {
      'tr': 'Type of Appointment',
      'en': '',
    },
    't8lzh90x': {
      'tr': 'Doctors Visit',
      'en': '',
    },
    'se3ch9ul': {
      'tr': 'Routine Checkup',
      'en': '',
    },
    'k5mn2jre': {
      'tr': 'Scan/Update',
      'en': '',
    },
    'ea5cnmg2': {
      'tr': 'What\'s the problem?',
      'en': '',
    },
    'ur3zqcik': {
      'tr': 'Choose Date',
      'en': '',
    },
    '7gp1m0bu': {
      'tr': 'Cancel',
      'en': '',
    },
    'opf4thbe': {
      'tr': 'Save Changes',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'ecbwbbi5': {
      'tr': '',
      'en': '',
    },
    '1la3b3bf': {
      'tr': '',
      'en': '',
    },
    'owkb993e': {
      'tr': '',
      'en': '',
    },
    '7aybwgvp': {
      'tr': '',
      'en': '',
    },
    '2tkr1id6': {
      'tr': '',
      'en': '',
    },
    'prigebkb': {
      'tr': '',
      'en': '',
    },
    'la8ormf6': {
      'tr': '',
      'en': '',
    },
    'acx0lsac': {
      'tr': '',
      'en': '',
    },
    '77jdm571': {
      'tr': '',
      'en': '',
    },
    'vgsenfon': {
      'tr': '',
      'en': '',
    },
    '0e0niegs': {
      'tr': '',
      'en': '',
    },
    'wknzq10w': {
      'tr': '',
      'en': '',
    },
    'qpwomdi3': {
      'tr': '',
      'en': '',
    },
    '4u0h76br': {
      'tr': '',
      'en': '',
    },
    'bb3zaho3': {
      'tr': '',
      'en': '',
    },
    'os0v6lhq': {
      'tr': '',
      'en': '',
    },
    '0uuysxwl': {
      'tr': '',
      'en': '',
    },
    '6ru8ln35': {
      'tr': '',
      'en': '',
    },
    'pyrok7go': {
      'tr': '',
      'en': '',
    },
    'e0bzj7cn': {
      'tr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
