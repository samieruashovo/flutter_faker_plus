import 'dart:math';

import 'utils/lorem_words.dart';

/// A utility class to generate random Lorem Ipsum text.
class LoremIpsum {
  final Random _random = Random();

  /// Generates Lorem Ipsum text based on the provided configuration.
  ///
  /// This method allows you to generate a specific number of paragraphs
  /// or words of Lorem Ipsum text. Optionally, you can include the words
  /// "Lorem" and "Ipsum" in the text by setting [showLoremIpsum] to true.
  ///
  /// Parameters:
  /// - [paragraphs]: The number of paragraphs to generate (default is 1).
  /// - [words]: The total number of words to generate (default is 100).
  /// - [showLoremIpsum]: If set to true, the first two words of the text
  ///   will be replaced with "Lorem" and "Ipsum" (default is false).
  ///
  /// Returns:
  /// A string containing the generated Lorem Ipsum text.
  ///
  /// Throws:
  /// - [ArgumentError] if either [paragraphs] or [words] is less than 0.
  String generate({
    int paragraphs = 1,
    int words = 100,
    bool showLoremIpsum = false,
  }) {
    if (paragraphs < 0) {
      throw ArgumentError.value(paragraphs, "paragraphs");
    }
    if (words < 0) {
      throw ArgumentError.value(words, "words");
    }

    if (paragraphs == 0 || words == 0) {
      return "";
    }

    if (paragraphs > words) {
      paragraphs = words;
    }

    String lorem = _makeParagraphs(paragraphs, words);
    if (words > 3 && showLoremIpsum) {
      lorem = lorem.replaceAll(lorem.split(" ")[0], "Lorem");
      lorem = lorem.replaceAll(lorem.split(" ")[1], "ipsum,");
      return lorem;
    }
    return lorem;
  }

  /// Creates a string containing multiple paragraphs of Lorem Ipsum text.
  ///
  /// This method divides the total number of words into the specified
  /// number of paragraphs and generates the content for each paragraph.
  ///
  /// Parameters:
  /// - [paragraphs]: The number of paragraphs to generate.
  /// - [words]: The total number of words to generate.
  ///
  /// Returns:
  /// A string containing the generated Lorem Ipsum paragraphs.
  String _makeParagraphs(int paragraphs, int words) {
    int wordLength = words ~/ paragraphs;
    List<String> result = [];

    for (int i = 0; i < paragraphs - 1; i++) {
      result.add(_makeParagraph(wordLength));
    }
    result.add(_makeParagraph(wordLength + (words % paragraphs)));
    return result.join("\n\n");
  }

  /// Creates a single paragraph of Lorem Ipsum text.
  ///
  /// This method generates a random number of sentences, each with a random
  /// number of words, until the total word count is reached.
  ///
  /// Parameters:
  /// - [words]: The number of words to generate in the paragraph.
  ///
  /// Returns:
  /// A string containing the generated paragraph.
  String _makeParagraph(int words) {
    int remain = words;
    List<String> result = [];
    if (words == 1) {
      return _makeSentence(1);
    }

    while (remain > 0) {
      int length = _randomInt(2, min(10, remain));
      if (remain - length < 2) {
        length = remain;
      }

      result.add(_makeSentence(length));
      remain -= length;
    }
    return result.join(" ");
  }

  /// Creates a random word from a predefined list.
  ///
  /// The method chooses a random word from the `wordList`, with a preference
  /// for shorter words when appropriate.
  ///
  /// Returns:
  /// A randomly chosen word.
  String _makeWord() {
    int n = _random.nextInt(2);
    String chosen;
    do {
      chosen = wordList[_random.nextInt(wordList.length)];
    } while (n > 0 && chosen.length > 5);
    return chosen;
  }

  /// Creates a sentence with a specified number of words.
  ///
  /// This method generates a random number of words, optionally adding commas
  /// at random positions, to form a sentence.
  ///
  /// Parameters:
  /// - [words]: The number of words in the sentence.
  ///
  /// Returns:
  /// A string containing the generated sentence.
  String _makeSentence(int words) {
    List<String> result = [];
    int commas = 0;
    bool lastWasComma = false;
    for (int i = 0; i < words; i++) {
      String nextWord = _makeWord();
      if (lastWasComma) {
        lastWasComma = false;
      } else if (i != (words - 1) && commas < 2) {
        int n = _randomInt(1, 7);
        if (n == 1) {
          nextWord += ",";
          commas++;
          lastWasComma = true;
        }
      }
      result.add(nextWord);
    }
    result[0] = result[0][0].toUpperCase() + result[0].substring(1);
    return "${result.join(" ")}.";
  }

  /// Generates a random integer between the specified [min] and [max] values.
  ///
  /// Parameters:
  /// - [min]: The minimum value (inclusive).
  /// - [max]: The maximum value (inclusive).
  ///
  /// Returns:
  /// A randomly generated integer between [min] and [max].
  int _randomInt(int min, int max) {
    return _random.nextInt((max - min) + 1) + min;
  }
}
