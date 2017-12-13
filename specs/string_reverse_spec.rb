require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/string_reverse'

describe "basic test 1 - string reverse" do
  it "reverse a string with odd number of characters" do
    test_string = "Hello"
    string_reverse(test_string)
    test_string.must_equal "olleH"
  end
end

describe "basic test 2 - string reverse" do
  it "reverse a string with even number of characters" do
    test_string = "Software"
    string_reverse(test_string)
    test_string.must_equal "erawtfoS"
  end
end

# if it's a string parameter, check for empty
describe "empty string - string reverse" do
  it "reverse an empty string" do
    test_string = ""
    string_reverse(test_string)
    test_string.must_be_empty
  end
end

# if the parameter is an object, check for nil
describe "nil - string reverse" do
  it "nil object passed to reverse" do
    test_string = nil
    string_reverse(test_string)
    test_string.must_be_nil
  end
end

# check for edge cases
describe "edge case 1 - string reverse" do
  it "string with one character passed to reverse" do
    test_string = "?"
    string_reverse(test_string)
    test_string.must_equal "?"
  end
end

describe "edge case 2 - string reverse" do
  it "a really long string passed to reverse" do
    test_string = "Oh, Supercalifragelisticexpialidocious! Even though the sound of it is something quite atrocious. If you say it loud enough, you'll always sound precocious. Supercalifragelisticexpialidocious!"
    string_reverse(test_string)
    test_string.must_equal "!suoicodilaipxecitsilegarfilacrepuS .suoicocerp dnuos syawla ll'uoy ,hguone duol ti yas uoy fI .suoicorta etiuq gnihtemos si ti fo dnuos eht hguoht nevE !suoicodilaipxecitsilegarfilacrepuS ,hO"
  end
end
