class Persianiser {
  static final Map persianDigitsMap = {
    '0': '۰',
    '1': '۱',
    '2': '۲',
    '3': '۳',
    '4': '۴',
    '5': '۵',
    '6': '۶',
    '7': '۷',
    '8': '۸',
    '9': '۹'
  };
  static String persianise(String value) {
    String res = '';
    for(int i=0; i<value.length; i++) {
      if (persianDigitsMap.containsKey(value[i])) {
        res += persianDigitsMap[value[i]];
      } else {
        res += value[i];
      }
    }
    return res;
  }
}