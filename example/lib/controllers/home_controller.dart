import 'package:get/get.dart';

class HomeController extends GetxController {
  var _isPalindromo = false.obs;
  var _word = "".obs;
  bool get isPalindromo => _isPalindromo.value;
  set isPalindromo(v) => _isPalindromo.value = v;
  get word => _word.value;
  set word(v) => word.value = v;

  String cleanText(String texto) {
    String comAcentos = "ÄÅÁÂÀÃäáâàãÉÊËÈéêëèÍÎÏÌíîïìÖÓÔÒÕöóôòõÜÚÛüúûùÇç";
    String semAcentos = "AAAAAAaaaaaEEEEeeeeIIIIiiiiOOOOOoooooUUUuuuuCc";
    String letters = "abcdefghijklmnopqrstuvwxyz0123456789";
    String newText = "";
    for (int x = 0; x < texto.length; x++) {
      if (letters.contains(texto[x])) newText += texto[x];
    }
    for (int i = 0; i < comAcentos.length; i++) {
      newText = newText.replaceAll(
          comAcentos[i], i >= semAcentos.length ? "" : semAcentos[i]);
    }
    print(newText);
    return newText;
  }

  void verifyPalindromo(String word) {
    this._word.value = word;
    String newWord = '';
    if (word.length < 1) {
      isPalindromo = false;
      return;
    }
    String withoutSpace = cleanText(word.removeAllWhitespace.toLowerCase());

    for (int i = withoutSpace.length - 1; i >= 0; i--) {
      newWord += withoutSpace[i];
    }
    isPalindromo =
        newWord.toLowerCase().compareTo(withoutSpace.toLowerCase()) == 0;
  }
}
