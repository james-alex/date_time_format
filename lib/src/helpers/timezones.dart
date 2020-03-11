/// Contains a map of time zone names and their corresponding abbreviations.
class TimeZones {
  TimeZones._();

  /// A map containing time zone names and their corresponding abbreviations.
  ///
  /// All Windows and VMware time zone IDs that have a corresponding
  /// time zone abbreviation or encompass a single country with a standardized
  /// timezone abbreviation have been included.
  static const Map<String, String> identifiers = <String, String>{
    'Baker Island Time': 'BIT', // -12
    'Dateline Standard Time': 'IDLW', // -12
    'International Date Line West': 'IDLW', // -12
    'International Day Line West': 'IDLW', // -12
    'Niue Time': 'NUT', // -11
    'Samoa Standard Time': 'SST', // -11
    'Aleutian Standard Time': 'HST', // -10
    'Cook Island Time': 'CKT', // -10
    'Hawaiian Standard Time': 'HST', // -10
    'Hawaii–Aleutian Standard Time': 'HST', // -10
    'Samoa Daylight Time': 'SDT', // -10
    'Tahiti Time': 'TAHT', // -10
    'Marquesas Islands Time': 'MIT', // -09:30
    'Marquesas Standard Time': 'MIT', // -09:30
    'Alaska Standard Time': 'AKST', // -09
    'Alaskan Standard Time': 'AKST', // -09
    'Gambier Island Time': 'GIT', // -09
    'Gambier Islands Time': 'GAMT', // -09
    'Hawaii–Aleutian Daylight Time': 'HDT', // -09
    'Alaska Daylight Time': 'AKDT', // -08
    'Clipperton Island Standard Time': 'CIST', // -08
    'Pacific Standard Time': 'PST', // -08
    'Pacific Standard Time (Mexico)': 'PST', // -08
    'Pacific Standard Time (North America)': 'PST', // -08
    'Mexico Standard Time 2': 'MST', // -07
    'Mountain Standard Time': 'MST', // -07
    'Mountain Standard Time (Mexico)': 'MST', // -07
    'Mountain Standard Time (North America)': 'MST', // -07
    'Pacific Daylight Time': 'PDT', // -07
    'Pacific Daylight Time (North America)': 'PDT', // -07
    'US Mountain Standard Time': 'MST', // -07
    'U.S. Mountain Standard Time': 'MST', // -07
    'Canada Central Standard Time': 'CST', // -06
    'Central America Standard Time': 'CST', // -06
    'Central Standard Time': 'CST', // -06
    'Central Standard Time (Mexico)': 'CST', // -06
    'Central Standard Time (North America)': 'CST', // -06
    'Easter Island Standard Time': 'EAST', // -06
    'Galápagos Time': 'GALT', // -06
    'Mexico Standard Time': 'CST', // -06
    'Mountain Daylight Time': 'MDT', // -06
    'Mountain Daylight Time (North America)': 'MDT', // -06
    'Acre Time': 'ACT', // -05
    'Central Daylight Time': 'CDT', // -05
    'Central Daylight Time (North America)': 'CDT', // -05
    'Colombia Time': 'COT', // -05
    'Cuba Standard Time': 'CST', // -05
    'Easter Island Summer Time': 'EASST', // -05
    'Eastern Standard Time': 'EST', // -05
    'Eastern Standard Time (Mexico)': 'EST', // -05
    'Eastern Standard Time (North America)': 'EST', // -05
    'Ecuador Time': 'ECT', // -05
    'Haiti Standard Time': 'EST', // -05
    'Peru Time': 'PET', // -05
    'SA Pacific Standard Time': 'SAPST', // -05
    'Turks And Caicos Standard Time': 'EST', // -05
    'US Eastern Standard Time': 'EST', // -05
    'U.S. Eastern Standard Time': 'EST', // -05
    'Amazon Time': 'AMT', // -04
    'Amazon Time (Brazil)': 'AMT', // -04
    'Atlantic Standard Time': 'AST', // -04
    'Bolivia Time': 'BOT', // -04
    'Central Brazilian Standard Time': 'AMT', // -04
    'Chile Standard Time': 'CLT', // -04
    'Colombia Summer Time': 'COST', // -04
    'Cuba Daylight Time': 'CDT', // -04
    'Eastern Caribbean Time': 'ECT', // -04
    'Eastern Daylight Time': 'EDT', // -04
    'Eastern Daylight Time (North America)': 'EDT', // -04
    'Falkland Islands Time': 'FKT', // -04
    'Guyana Time': 'GYT', // -04
    'Pacific S.A. Standard Time': 'CLT', // -04
    'Pacific SA Standard Time': 'CLT', // -04
    'Paraguay Standard Time': 'PYT', // -04
    'Paraguay Time': 'PYT', // -04
    'S.A. Western Standard Time': 'SAWST', // -04
    'SA Western Standard Time': 'SAWST', // -04
    'Venezuela Standard Time': 'VET', // -04
    'Venezuelan Standard Time': 'VET', // -04
    'Newfoundland and Labrador Standard Time': 'NST', // -03:30
    'Newfoundland Standard Time': 'NST', // -03:30
    'Newfoundland Time': 'NT', // -03:30
    'Amazon Summer Time': 'AMST', // -03
    'Amazon Summer Time (Brazil)': 'AMST', // -03
    'Argentina Standard Time': 'ART', // -03
    'Argentina Time': 'ART', // -03
    'Atlantic Daylight Time': 'ADT', // -03
    'Brasília Time': 'BRT', // -03
    'Chile Summer Time': 'CLST', // -03
    'E. South America Standard Time': 'EST', // -03
    'Falkland Islands Summer Time': 'FKST', // -03
    'French Guiana Time': 'GFT', // -03
    'Montevideo Standard Time': 'UYT', // -03
    'Paraguay Summer Time': 'PYST', // -03
    'Rothera Research Station Time': 'ROTT', // -03
    'SA Eastern Standard Time': 'EST', // -03
    'S.A. Eastern Standard Time': 'EST', // -03
    'Saint Pierre and Miquelon Standard Time': 'PMST', // -03
    'Saint Pierre Standard Time': 'PMST', // -03
    'Showa Station Time': 'SYOT', // -03
    'Suriname Time': 'SRT', // -03
    'Tocantins Standard Time': 'BRT', // -03
    'Uruguay Standard Time': 'UYT', // -03
    'West Greenland Time': 'WGT', // -03
    'Greenland Standard Time': 'WGT', // -03
    'Newfoundland Daylight Time': 'NDT', // -02:30
    'Brasília Summer Time': 'BRST', // -02
    'Fernando de Noronha Time': 'FNT', // -02
    'Mid-Atlantic Standard Time': 'GST',
    'Saint Pierre and Miquelon Daylight Time': 'PMDT', // -02
    'South Georgia and the South Sandwich Islands Time': 'GST', // -02
    'Uruguay Summer Time': 'UYST', // -02
    'West Greenland Summer Time': 'WGST', // -02
    'Azores Standard Time': 'AZOT', // -01
    'Cabo Verde Standard Time': 'CVT', // -01
    'Cape Verde Standard Time': 'CVT', // -01
    'Cape Verde Time': 'CVT', // -01
    'Eastern Greenland Time': 'EGT', // -01
    'Azores Summer Time': 'AZOST', // +00
    'Coordinated Universal Time': 'UTC', // +00
    'Eastern Greenland Summer Time': 'EGST', // +00
    'GMT Standard Time': 'GMT', // +00
    'Greenwich Mean Time': 'GMT', // +00
    'Greenwich Standard Time': 'GMT', // +00
    'Morocco Standard Time': 'WET', // +00
    'Sao Tome Standard Time': 'GMT', // +00
    'Western European Time': 'WET', // +00
    'British Summer Time': 'BST', // +01
    'Central Europe Standard Time': 'CET', // +01
    'Central European Standard Time': 'CET', // +01
    'Central European Time': 'CET', // +01
    'Irish Standard Time': 'IST', // +01
    'Middle European Time': 'MET', // +01
    'West Africa Time': 'WAT', // +01
    'Western European Summer Time': 'WEST', // +01
    'Romance Standard Time': 'RST', // +01
    'W. Central Africa Standard Time': 'WAT', // +01
    'W. Europe Standard Time': 'WEST', // +01
    'Central Africa Time': 'CAT', // +02
    'Central European Summer Time': 'CEST', // +02
    'E. Europe Standard Time': 'EET', // +02
    'Eastern European Time': 'EET', // +02
    'Egypt Standard Time': 'EET', // +02
    'FLE Standard Time': 'EET', // +02
    'GTB Standard Time': 'CEST', // +02
    'Heure Avancée d\'Europe Centrale': 'HAEC', // +02
    'Israel Standard Time': 'IST', // +02
    'Jordan Standard Time': 'AST', // +02
    'Kaliningrad Standard Time': 'KALT', // +02
    'Kaliningrad Time': 'KALT', // +02
    'Libya Standard Time': 'EET', // +02
    'Middle East Standard Time': 'EET', // +02
    'Middle European Summer Time': 'MEST', // +02
    'Namibia Standard Time': 'CAT', // +02
    'South Africa Standard Time': 'SAST', // +02
    'South African Standard Time': 'SAST', // +02
    'Sudan Standard Time': 'CAT', // +02
    'Syria Standard Time': 'EET', // +02
    'West Africa Summer Time': 'WAST', // +02
    'West Bank Standard Time': 'EET', // +02
    'Arabia Standard Time': 'AST', // +03
    'Arabic Standard Time': 'AST', // +03
    'Arab Standard Time': 'AST', // +03
    'East Africa Time': 'EAT', // +03
    'E. Africa Standard Time': 'EAT', // +03
    'Eastern European Summer Time': 'EEST', // +03
    'Further-eastern European Time': 'FET', // +03
    'Further-Eastern European Time': 'FET', // +03
    'Indian Ocean Time': 'IOT', // +03
    'Israel Daylight Time': 'IDT', // +03
    'Moscow Time': 'MSK', // +03
    'Russian Standard Time': 'MSK', // +03
    'Turkey Standard Time': 'TRT', // +03
    'Turkey Time': 'TRT', // +03
    'Iran Standard Time': 'IRST', // +03:30
    'Armenia Time': 'AMT', // +04
    'Azerbaijan Standard Time': 'AZT', // +04
    'Azerbaijan Time': 'AZT', // +04
    'Caucasus Standard Time': 'AMT', // +04
    'Georgia Standard Time': 'GET', // +04
    'Georgian Standard Time': 'GET', // +04
    'Gulf Standard Time': 'GST', // +04
    'Mauritius Standard Time': 'MUT', // +04
    'Mauritius Time': 'MUT', // +04
    'Réunion Time': 'RET', // +04
    'Russia Time Zone 3': 'SAMT', // +04
    'Samara Time': 'SAMT', // +04
    'Saratov Standard Time': 'SAMT', // +04
    'Seychelles Time': 'SCT', // +04
    'Volgograd Standard Time': 'VOLT', // +04
    'Volgograd Time': 'VOLT', // +04
    'Afghanistan Time': 'AFT', // +04:30
    'Afghanistan Standard Time': 'AFT', // +04:30
    'Iran Daylight Time': 'IRDT', // +04:30
    'Transitional Islamic State of Afghanistan Standard Time': 'AFT', // +04:30
    'Aqtobe Time': 'AQTT', // +05
    'Ekaterinburg Standard Time': 'YEKT', // +05
    'French Southern and Antarctic Time': 'TFT', // +05
    'Heard and McDonald Islands Time': 'HMT', // +05
    'Maldives Time': 'MVT', // +05
    'Mawson Station Time': 'MAWT', // +05
    'Oral Time': 'ORAT', // +05
    'Pakistan Standard Time': 'PKT', // +05
    'Qyzylorda Standard Time': 'YEKT', // +05
    'Tajikistan Time': 'TJT', // +05
    'Turkmenistan Time': 'TMT', // +05
    'Uzbekistan Time': 'UZT', // +05
    'Yekaterinburg Time': 'YEKT', // +05
    'India Standard Time': 'IST', // +05:30
    'Indian Standard Time': 'IST', // +05:30
    'Sri Lanka Standard Time': 'SLST', // +05:30
    'Nepal Standard Time': 'NPT', // +05:45
    'Nepal Time': 'NPT', // +05:45
    'Alma-Ata Time': 'ALMT', // +06
    'Bangladesh Standard Time': 'BST', // +06
    'Bhutan Time': 'BTT', // +06
    'British Indian Ocean Time': 'BIOT', // +06
    'Central Asia Standard Time': 'BTT', // +06
    'Kyrgyzstan Time': 'KGT', // +06
    'Omsk Standard Time': 'OMST', // +06
    'Omsk Time': 'OMST', // +06
    'Qyzylorda Time': 'QYZT', // +06
    'Vostok Station Time': 'VOST', // +06
    'Cocos Islands Time': 'CCT', // +06:30
    'Myanmar Standard Time': 'MMT', // +06:30
    'Christmas Island Time': 'CXT', // +07
    'Davis Time': 'DAVT', // +07
    'Hovd Time': 'HOVT', // +07
    'Indochina Time': 'ICT', // +07
    'Krasnoyarsk Time': 'KRAT', // +07
    'N. Central Asia Standard Time': 'NCAST', // +07
    'North Asia Standard Time': 'KRAT', // +07
    'Novosibirsk Time ': 'NOVT', // +07
    'S.E. Asia Standard Time': 'THA', // +07
    'SE Asia Standard Time': 'THA', // +07
    'Thailand Standard Time': 'THA', // +07
    'Tomsk Standard Time': 'KRAT', // +07
    'W. Mongolia Standard Time': 'HOVD', // +07
    'Western Indonesian Time': 'WIT', // +07
    'Australian Western Standard Time': 'AWST', // +08
    'Brunei Time': 'BDT', // +08
    'Central Indonesia Time': 'CIT', // +08
    'China Standard Time': 'CST', // +08
    'China Time': 'CT', // +08
    'Choibalsan Standard Time': 'CHOT', // +08
    'Hong Kong Time': 'HKT', // +08
    'Hovd Summer Time': 'HOVST', // +08
    'Irkutsk Time': 'IRKT', // +08
    'Malaysia Standard Time': 'MST', // +08
    'Malaysia Time': 'MYT', // +08
    'North Asia East Standard Time': 'IKRT', // +08
    'Philippine Standard Time': 'PST', // +08
    'Philippine Time': 'PHT', // +08
    'Singapore Standard Time': 'SST', // +08
    'Singapore Time': 'SGT', // +08
    'Taipei Standard Time': 'TIST', // +08
    'Ulaanbaatar Standard Time': 'ULAT', // +08
    'W. Australia Standard Time': 'AWST', // +08
    'Western Standard Time': 'WST', // +08
    'Australian Central Western Standard Time': 'ACWST', // +08:45
    'Aus Central W. Standard Time': 'ACWST', // +08:45
    'Central Western Standard Time': 'CWST', // +08:45
    'Central Western Standard Time (Australia)': 'CWST', // +08:45
    'Choibalsan Summer Time': 'CHOST', // +09
    'Eastern Indonesian Time': 'EIT', // +09
    'Japan Standard Time': 'JST', // +09
    'Korea Standard Time': 'KST', // +09
    'North Korea Standard Time': 'KST', // +09
    'Timor Leste Time': 'TLT', // +09
    'Tokyo Standard Time': 'TST', // +09
    'Transbaikal Standard Time': 'YAKT', // +09
    'Ulaanbaatar Summer Time': 'ULAST', // +09
    'Yakutsk Standard Time': 'YAKT', // +09
    'Yakutsk Time': 'YAKT', // +09
    'Australian Central Standard Time': 'ACST', // +09:30
    'AUS Central Standard Time': 'ACST', // +09:30
    'A.U.S. Central Standard Time': 'ACST', // +09:30
    'Cen. Australia Standard Time': 'ACST', // +09:30
    'Australian Eastern Standard Time': 'AEST', // +10
    'AUS Eastern Standard Time': 'AEST', // +10
    'A.U.S. Eastern Standard Time': 'AEST', // +10
    'Australian Eastern Time': 'AET', // +10/+11
    'Chamorro Standard Time': 'CHST', // +10
    'Chuuk Time': 'CHUT', // +10
    'Dumont d\'Urville Time': 'DDUT', // +10
    'E. Australia Standard Time': 'AEST', // +10
    'Papua New Guinea Time': 'PGT', // +10
    'Tasmania Standard Time': 'TAST', // +10
    'Vladivostok Standard Time': 'VLAT', // +10
    'Vladivostok Time': 'VLAT', // +10
    'West Pacific Standard Time': 'WPST', // +10
    'Australian Central Daylight Savings Time': 'ACDT', // +10:30
    'Lord Howe Standard Time': 'LHST', // +10:30
    'Australian Eastern Daylight Savings Time': 'AEDT', // +11
    'Bougainville Standard Time': 'BST', // +11
    'Central Pacific Standard Time': 'SBT', // +11
    'Kosrae Time': 'KOST', // +11
    'Lord Howe Summer Time': 'LHST', // +11
    'Macquarie Island Station Time': 'MIST', // +11
    'Magadan Standard Time': 'MAGT', // +11
    'New Caledonia Time': 'NCT', // +11
    'Norfolk Island Time': 'NFT', // +11
    'Norfolk Standard Time': 'NFT', // +11
    'Pohnpei Standard Time': 'PONT', // +11
    'Russia Time Zone 10': 'MAGT', // +11
    'Sakhalin Island Time': 'SAKT', // +11
    'Sakhalin Standard Time': 'SAKT', // +11
    'Solomon Islands Time': 'SBT', // +11
    'Srednekolymsk Time': 'SRET', // +11
    'Vanuatu Time': 'VUT', // +11
    'Anadyr Time': 'ANAT', // +12
    'Fiji Islands Standard Time': 'FJT', // +12
    'Fiji Standard Time': 'FJT', // +12
    'Fiji Time': 'FJT', // +12
    'Gilbert Island Time': 'GILT', // +12
    'Kamchatka Standard Time': 'PETT', // +12
    'Kamchatka Time': 'PETT', // +12
    'Magadan Time': 'MAGT', // +12
    'Marshall Islands Time': 'MHT', // +12
    'New Zealand Standard Time': 'NZST', // +12
    'Russia Time Zone 11': 'PETT', // +12
    'Tuvalu Time': 'TVT', // +12
    'Wake Island Time': 'WAKT', // +12
    'Chatham Islands Standard Time': 'CHAST', // +12:45
    'Chatham Standard Time': 'CHAST', // +12:45
    'New Zealand Daylight Time': 'NZDT', // +13
    'Phoenix Island Time': 'PHOT', // +13
    'Tokelau Time': 'TKT', // +13
    'Tonga Standard Time': 'TOT', // +13
    'Tonga Time': 'TOT', // +13
    'Chatham Daylight Time': 'CHADT', // +13:45
    'Line Islands Standard Time': 'LINT', // +14
    'Line Islands Time': 'LINT', // +14
  };
}
