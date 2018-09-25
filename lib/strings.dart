/* This is free and unencumbered software released into the public domain. */

import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

////////////////////////////////////////////////////////////////////////////////

const supportedLocales = [
  // Default language:
  Locale('en'), // English
  // Other languages:
  Locale('cs'), // Czech
  Locale('de'), // German
  Locale('es'), // Spanish
  Locale('fi'), // Finnish
  Locale('fr'), // French
  Locale('pl'), // Polish
  Locale('pt'), // Portuguese
  Locale('ru'), // Russian
  Locale('sk'), // Slovak
  Locale('sv'), // Swedish
  Locale('uk'), // Ukrainian
  Locale('zh'), // Chinese
];

////////////////////////////////////////////////////////////////////////////////

class StringsDelegate extends LocalizationsDelegate<Strings> {
  final Set<String> supportedLanguageCodes;

  StringsDelegate() :
    supportedLanguageCodes = supportedLocales.map((locale) => locale.languageCode).toSet();

  @override
  bool isSupported(final Locale locale) => supportedLanguageCodes.contains(locale.languageCode);

  @override
  Future<Strings> load(final Locale locale) {
    return SynchronousFuture<Strings>(Strings(locale));
  }

  @override
  bool shouldReload(final StringsDelegate _) => false;
}

////////////////////////////////////////////////////////////////////////////////

class Strings {
  final Locale locale;

  Strings(this.locale);

  String get(final String id) => _data[id][locale.languageCode] ?? _data[id]['en'];

  static Strings of(final BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static Map<String, Map<String, String>> _data =
  { // BEGIN STRINGS
    'appTitle': {
      'en': "Conreality Player",
    },
    'appVersion': {
      'cs': "Září 2018",
      'en': "September 2018",
      'es': "Septiembre de 2018",
      'fi': "Syyskuu 2018",
      'fr': "Septembre 2018",
      'pl': "Wrzesień 2018",
      'pt': "Setembro de 2018",
      'ru': "Сентябрь 2018 года",
      'uk': "Вересень 2018 р",
      'zh': "2018年9月",
    },
    'cancel': {
      'en': "Cancel",
      'fi': "Peruuta",
    },
    'chat': {
      'en': "Chat",
      'fi': "Juttelu",
    },
    'compass': {
      'en': "Compass",
      'fi': "Kompassi",
    },
    'connect': {
      'en': "Connect",
      'fi': "Yhdistä",
    },
    'connectToGame': {
      'en': "Connect to a game...",
      'fi': "Yhdistä peliin",
    },
    'connectToWiFiToJoin': {
      'en': "Connect to a Wi-Fi network to join a game.",
      'fi': "Liity Wi-Fi -verkkoon yhdistääksesi peliin.",
    },
    'connecting': {
      'en': "Connecting...",
      'fi': "Yhdistetään...",
    },
    'enterGameURL': {
      'en': "Enter the game URL:",
      'fi': "Anna pelin URL-osoite:",
    },
    'exit': {
      'en': "Exit",
      'fi': "Poistu",
    },
    'exitGame': {
      'en': "Exit this game",
      'fi': "Poistu tästä pelistä",
    },
    'feedbackURL': {
      'en': "https://github.com/conreality/conreality-player/issues/new",
    },
    'home': {
      'en': "Home",
      'fi': "Koti",
    },
    'legalese': {
      'en': "This is free and unencumbered software released into the public domain.",
      'fi': "Tämä on tekijänoikeudeton julkisohjelma, käytettäväksi vapaasti ja rajoituksetta.",
    },
    'loading': {
      'en': "Loading...",
      'fi': "Ladataan...",
    },
    'map': {
      'en': "Map",
      'fi': "Kartta",
    },
    'player': {
      'en': "Player",
      'fi': "Pelaaja",
    },
    'retry': {
      'en': "Retry",
      'fi': "Uudestaan",
    },
    'scanThisWithAnotherDevice': {
      'en': "Scan this with another device to connect it to this game.",
      'fi': "Skannaa tämä toisella laitteella liittääksesi se tähän peliin.",
    },
    'sendFeedback': {
      'en': "Send feedback",
      'fi': "Lähetä palautetta",
    },
    'sendMessage': {
      'en': "Send a message",
      'fi': "Lähetä viesti",
    },
    'settings': {
      'en': "Settings",
      'fi': "Asetukset",
    },
    'share': {
      'en': "Share",
      'fi': "Jaa",
    },
    'team': {
      'en': "Team",
      'fi': "Joukkue",
    },
  }; // END STRINGS

  // BEGIN GETTERS
  String get appTitle => get('appTitle');
  String get appVersion => get('appVersion');
  String get cancel => get('cancel');
  String get chat => get('chat');
  String get compass => get('compass');
  String get connect => get('connect');
  String get connectToGame => get('connectToGame');
  String get connectToWiFiToJoin => get('connectToWiFiToJoin');
  String get connecting => get('connecting');
  String get enterGameURL => get('enterGameURL');
  String get exit => get('exit');
  String get exitGame => get('exitGame');
  String get feedbackURL => get('feedbackURL');
  String get home => get('home');
  String get legalese => get('legalese');
  String get loading => get('loading');
  String get map => get('map');
  String get player => get('player');
  String get retry => get('retry');
  String get scanThisWithAnotherDevice => get('scanThisWithAnotherDevice');
  String get sendFeedback => get('sendFeedback');
  String get sendMessage => get('sendMessage');
  String get settings => get('settings');
  String get share => get('share');
  String get team => get('team');
  // END GETTERS
}
