import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../application/app/app.locator.dart';
import '../../../../application/models/riwayat_detail.dart';
import '../../../../application/models/solusi.dart';

class RiwayatDetailViewModel extends FutureViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  static const int _itemRequestThreshold = 20;
  int _currentPage = 0;

  RiwayatDetail? _riwayatDetail;

  RiwayatDetail? get riwayatDetail => _riwayatDetail;

  @override
  Future futureToRun() async => _riwayatDetail = RiwayatDetail(
        id: '2',
        fullname: 'Muhammad Iqbal Pranatayudha',
        dob: '24 Mei 1999',
        virusName: 'Beta',
        code: 'B.1.351',
        subVarian: '-',
        createdAt: '18 Januari 2023',
        solution: [
          Solusi(
            name: 'Demam',
            prevention: [
              'Sering-seringlah mencuci tangan',
              'Tutup mulut saat batuk dan hidung saat bersin',
              'Hindari berbagi cangkir, gelas, dan peralatan makan dengan orang lain',
              'Mengenakan masker jika sedang keluar rumah, agar terhindar dari penularan virus yang dapat tersebar melalui droplet air liur',
            ],
            treatment: [
              'Minum banyak air putih',
              'Perlu beristirahat yang cukup',
              'Buatlah diri sendiri nyaman dengan mengenakan pakaian yang ringan',
              'Kompres hangat area kening, serta jaga suhu ruangan tetap sejuk dan tidur hanya dengan sprei atau selimut tipis',
            ],
            drug: [
              'Ibuprofen',
              'Aspirin',
              'Paracetamol',
              'Sanmol Tablet',
              'Panadol',
              'Dumin',
              'Biogesic',
              'Hansaplast Cooling Fever',
              'Trimafol Forte',
            ],
          ),
          Solusi(
            name: 'Batuk Berdahak',
            prevention: [
              'Usahakan agar badan tetap hangat dengan cara menggunakan jaket, minum air jahe dan minuman yang hangat, mandi air hangat, dan lain-lain',
              'Beristirahatlah yang cukup',
              'Perbanyak minum air putih',
              'Hindari berdekatan dengan pengidap flu dan batuk lainnya',
              'Berkumur dengan air garam atau air biasa selama 60 detik, tiga kali sehari untuk menghilangkan kuman bakteri di tenggorokan',
            ],
            treatment: [
              'Minum air putih hangat',
              'Mandi air hangat',
              'Minum madu',
              'Menggunakan humidifier atau pelembap udara',
              'Mencukupi waktu istirahat',
              'Meninggikan kepala',
            ],
            drug: [
              'Codeine',
              'Ambroxol',
              'Guaifenesin',
              'Bromhexine',
              'Bodrex Batuh Berdahak PE',
              'Triaminic',
              'Siladex',
              'Comtusi',
              'Oxopect',
              'OBH Batuk Berdahak',
              'Bisolvon',
            ],
          ),
          Solusi(
            name: 'Pusing',
            prevention: [
              'Mengurangi kafein',
              'Menghindari pemicu sakit kepala',
              'Istirahat yang cukup',
              'Makan dengan teratur',
              'Kurangi stres',
              'Mengurangi konsumsi obat',
            ],
            treatment: [
              'Biofeedback, yaitu teknik relaksasi untuk membantu dalam manajemen nyeri',
              'Akupunktur',
              'Olahraga ringan sampai sedang bisa membantu meningkatkan produksi bahan kimia di otak yang tentunya bisa membuat merasa lebih bahagia dan rileks',
              'Mandi air hangat, untuk membantu merilekskan otot yang tegang',
            ],
            drug: [
              'Aspirin',
              'Ibuprofen',
              'Paracetamol',
              'Indomethacin',
              'Sumatriptan',
              'Naproxen',
              'Ketorolac',
              'Zolmitriptan',
            ],
          ),
          Solusi(
            name: 'Sakit Kepala',
            prevention: [
              'Mengurangi kafein',
              'Menghindari pemicu sakit kepala',
              'Istirahat yang cukup',
              'Makan dengan teratur',
              'Kurangi stres',
              'Mengurangi konsumsi obat',
            ],
            treatment: [
              'Biofeedback, yaitu teknik relaksasi untuk membantu dalam manajemen nyeri',
              'Akupunktur',
              'Olahraga ringan sampai sedang bisa membantu meningkatkan produksi bahan kimia di otak yang tentunya bisa membuat merasa lebih bahagia dan rileks',
              'Mandi air hangat, untuk membantu merilekskan otot yang tegang',
            ],
            drug: [
              'Aspirin',
              'Ibuprofen',
              'Paracetamol',
              'Indomethacin',
              'Sumatriptan',
              'Naproxen',
              'Ketorolac',
              'Zolmitriptan',
            ],
          ),
          Solusi(
            name: 'Sakit Tenggorokan',
            prevention: [
              'Tidak merokok dan menghindari asap rokok',
              'Membatasi konsumsi alkohol dan kafein',
              'Perbanyak minum air',
              'Hindari makanan pedas',
              'Tingkatkan daya tahan tubuh',
              'Rajin cuci tangan',
              'Hindari orang yang sedang sakit pilek atau batuk',
            ],
            treatment: [
              'Minum banyak cairan untuk menghindari dehidrasi',
              'Berkumur dengan air garam hangat',
              'Menggunakan pelembap udara',
              'Banyak beristirahat',
            ],
            drug: [
              'FG Troches Meiji',
              'Strepsils',
              'Cooling 5 Spray',
              'Adem Sari',
              'Hexadol',
              'Efisol Loz',
            ],
          ),
          Solusi(
            name: 'Indra Penciuman Hilang',
            prevention: [
              'Menghindari paparan zat yang dapat memicu alergi',
              'Menghindari asap rokok dan kebiasaan merokok',
              'Menjaga kebersihan tubuh agar terhindar dari pilek dan juga flu',
            ],
            treatment: [
              'Meningkatkan sistem kekebalan tubuh',
              'Istirahat yang cukup',
              'Konsumsi makanan sehat',
              'Melatih indra penciuman dengan aroma',
              'Irigasi atau cuci hidung hidung dengan larutan garam (saline)',
            ],
            drug: [
              'Antihistamin',
              'Nasal Spray(Obat semprot hidung)',
            ],
          ),
          Solusi(
            name: 'Hilang Selera Makan',
            prevention: [
              'Kurangi pekerjaan terlalu berat',
              'Berlatih mengistirahatkan tubuh dan pikiran',
              'Pola makan yang sehat',
              'Hindari stress',
            ],
            treatment: [
              'Konsumsi makanan dengan gizi seimbang',
              'Minum air yang cukup',
              'Olahraga rutin',
            ],
            drug: [
              'Imboost Force',
              'Enervon C Multivitamint',
              'Vitabiotics Ultra Vitamin D3',
              'Stimuno',
            ],
          ),
          Solusi(
            name: 'Diare',
            prevention: [
              'Mencuci tangan sebelum makan',
              'Menjauhi makanan yang diragukan kebersihannya',
              'Tidak mengonsumsi makanan atau minum air yang belum dimasak sampai matang',
            ],
            treatment: [
              'Istirahat yang cukup',
              'Minum lebih banyak air putih setelah BAB untuk mencegah dehidrasi',
              'Mengonsumsi makanan yang tepat',
            ],
            drug: [
              'Oralit',
              'Loperamide',
              'Suplemen probiotik',
              'Bismuth subsalicylate',
              'Neo Entrostop Strip',
              'Diapet',
            ],
          ),
          Solusi(
            name: 'Batuk Tanpa Dahak',
            prevention: [
              'Hindari merokok',
              'Minum cukup air putih',
              'Jaga kelembaban udara ruangan',
              'Konsumsi makanan dan minuman yang baik',
              'Hindari kontak langsung dengan sumber alergi',
            ],
            treatment: [
              'Gunakan pelembab udara',
              'Konsumsi air putih hangat',
              'Kumur-kumur dengan air garam',
              'Tinggikan kepala saat tidur',
              'Konsumsi madu',
            ],
            drug: [
              'Vicks Formula 44',
              'Woods Peppermint Antitussive',
              'Siladex Antitussive',
              'Konidin',
              'Bodrex Flu & Batuk PE',
              'OB Herbal',
              'Actifed Plus Cough Suppressant',
            ],
          ),
          Solusi(
            name: 'Menggigil',
            prevention: [
              'Menggunakan pakaian hangat',
              'Mengonsumsi makanan bergizi',
              'Rutin mencuci tangan dengan air dan sabun untuk menghindari infeksi virus atau bakteri',
              'Minum air putih yang cukup',
            ],
            treatment: [
              'Menggunakan kompres hangat atau mandi air hangat',
              'Tidak menggunakan kipas angin atau pendingin ruangan (AC)',
              'Istirahat yang cukup',
            ],
            drug: [
              'Paracetamol',
              'Ibuprofen',
              'Amoxicillin',
            ],
          ),
          Solusi(
            name: 'Suhu Tinggi',
            prevention: [
              'Usahakan tubuh untuk tetap dingin atau memiliki suhu tubuh yang normal dengan memakai pakaian yang benar',
              'Tetaplah terhidrasi dengan baik, minum air putih secukupnya',
              'Konsumsi makanan bergizi',
              'Minur air putih yang cukup',
            ],
            treatment: [
              'Minum banyak air putih, karena demam dapat menyebabkan kehilangan cairan dan dehidrasi',
              'Istirahat yang cukup',
              'Kompres hangat area kening',
            ],
            drug: [
              'Paracetamol',
              'Aspirin',
              'Ibuprofen',
              'Naproxen',
            ],
          ),
        ],
      );
}
