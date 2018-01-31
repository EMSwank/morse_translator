require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'

class TranslatorTest < Minitest::Test

  def test_it_exits
    translator = Translate.new

    assert_instance_of Translate, translator
  end

 def test_eng_to_morse_translate_to_morse
   translator = Translate.new

   assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
 end 

 def test_it_isnt_case_sensitive
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
 end 

 def test_it_takes_numerals
    translator = Translate.new

    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
 end 
 
end
