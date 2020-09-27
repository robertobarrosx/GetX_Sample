import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'GetX Sample': 'GetX Sample',
          'Description': 'Template to get started my projects.',
          'isPalidrome': 'It\'s a palindrome phrase',
          'notPalindrome': 'It\'s not a palindrome phrase',
          'homeTextField': 'Type a phrase here',
        },
        'ca_ES': {
          'GetX Sample': 'Ejemplo de GetX',
          'Description': 'Plantilla para empezar mis proyectos.',
          'isPalidrome': 'Es una frase de palíndromo',
          'notPalindrome': 'No es una frase de palíndromo',
          'homeTextField': 'Escriba una frase aquí',
        },
        'de_DE': {
          'GetX Sample': 'GetX-Beispiel',
          'Description': 'Vorlage, um meine Projekte zu starten.',
          'isPalidrome': 'Es ist eine Palindrom-Phrase',
          'notPalindrome': 'Es ist keine Palindrom-Phrase',
          'homeTextField': 'Geben Sie hier eine Phrase ein',
        },
        'pt_BR': {
          'GetX Sample': 'Exemplo com GetX',
          'Description': 'Modelo para iniciar meus projetos.',
          'isPalidrome': 'É uma frase palíndromo',
          'notPalindrome': 'Não é uma frase palíndromo',
          'homeTextField': 'Digite uma frase aqui',
        }
      };
}
