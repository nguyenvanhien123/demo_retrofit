const List<String> destinationList = [
  'An Giang (Châu Đốc,Long Xuyên)',
  'Buôn Ma Thuột',
  'Bình Minh',
  'Bình Định',
  'Bạc Liêu',
  'Bảo Lộc',
  'Bến Tre',
  'Cam Ranh',
  'Cao Lãnh',
  'Châu Đốc',
  'Cu Jut',
  'Cà Mau',
  'Cần Thơ',
  'Huế',
  'Hà Nội',
  'Hà Tiên',
  'Hậu Giang',
  'Hồng Ngự',
  'Kiên Giang',
  'Long Xuyên',
  'Lâm Đồng',
  'Mũi Né',
  'Nam Định',
  'Ngã Năm',
  'Nha Trang',
  'Ninh Hòa',
  'Năm Căn',
  'Phan Rang',
  'Phan Thiết',
  'Phú Yên',
  'Qui Nhơn',
  'Quảng Ngãi',
  'Rạch Giá',
  'Sa Đéc',
  'Sóc Trăng',
  'TP.Hồ Chí Minh',
  'Thốt Nốt',
  'Tri Tôn',
  'Trà Vinh',
  'Tuy Hòa',
  'Tịnh Biên',
  'Vĩnh Châu',
  'Vĩnh Thuận',
  'Vũng Tàu',
  'Vị Thanh',
  'Đà Lạt',
  'Đà Nẵng',
  'Đơn Dương',
  'Đại Ngãi',
  'Đắk Lắk',
  'Đắk Nông',
  'Đồng Tháp',
];

enum busType { booking, ticket, shipping }
enum InfoProcess { entry, accept, completed }

/// VanDriverStatus: (1)confirm, (2)shipping, (3)done
enum VanDriverStatus { stop, start, process, shipping, arrived, done }
enum WidgetBuild { entry, loading, list, noShadow }
enum PackageStatus { working, reviced }

/// BikeDriverStatus: (1)confirm, (2)arrived, (3)working
enum BikeDriverStatus { stop, start, confirm, arrived, working, done }
enum EnumConnectivityResult { Cellular, Wifi, Offline }
