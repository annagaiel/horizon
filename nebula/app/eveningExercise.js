exports = (typeof window === 'undefined') ? global : window;

/**
 * This file defines an object with some methods. Some of these methods are
 * populated incorrectly; your job is to fix them. Other methods are not
 * populated at all; your job is to fill them out.
 */

exports.eveningExerciseAnswers = {
  indexOf : function(arr, item) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] === item){
          return i;
        }
    }
    return -1;
  },

  sum : function(arr) {
    var sum = 0;
    for (var i = 0; i < arr.length; i++) {
      sum += arr[i];
    }
    return sum;
  },

  remove : function(arr, item) {
    var result = [];
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] !== item){
        result.push(arr[i]);
      }
    }
    return result;
  },

  reverseString : function(str) {
    var reverse = '';
    for (var i = 0; i < str.length; i++) {
      reverse += str[str.length - 1 - i];
    }
    return reverse;
  },

  longestSubString : function(str) {
    var longestSubString = '';
    for (var i = 0; i < str.split(' ').length; i++) {
      if (str.split(' ')[i].length > longestSubString.length){
        longestSubString = str.split(' ')[i];
      }
    }
    return longestSubString;
  },

  letterMoveForward : function(str) {
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var result = '';
    for (var i = 0; i < str.length; i++) {
      letter_index = alphabet.indexOf(str[i]);
      if(letter_index < 0){
        result += str[i];
      }else if(letter_index < alphabet.length - 1){
        result += alphabet[letter_index + 1];
      }else{
        result += alphabet[0];
      }
    }
    return result;
  },

  capitalizeWords : function(str) {
    var result = '';
    for (var i = 0; i < str.split(' ').length; i++) {
      character_index = str.indexOf(str.split(' ')[i].charAt(0));
      result += str[character_index].toUpperCase() + str.split(' ')[i].slice(1);
      if (i < str.split(' ').length - 1){
        result += ' ';
      }
    }
    return result;
  }
};
