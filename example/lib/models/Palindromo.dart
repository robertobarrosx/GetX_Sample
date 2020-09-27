class PalindromoModel {
  String phrase;
  bool isPalindrome;

  PalindromoModel({this.phrase, this.isPalindrome});

  PalindromoModel.fromJson(Map<String, dynamic> json) {
    this.phrase = json['phrase'];
    this.isPalindrome = json['isPalindrome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phrase'] = this.phrase;
    data['isPalindrome'] = this.isPalindrome;
    return data;
  }
}
