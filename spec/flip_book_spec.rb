require "test_helper"
require "flip_book"

describe "FlipBook reorders words" do
  it "returns the beginning of the story in detail" do
    beginning = FlipBook.new("time a upon Once")
    beginning = beginning.reorganize
    beginning.must_include "Once upon a time"
  end

  it "returns the beginning of the story in detail" do
    the_end = FlipBook.new("after. ever happily lived they And")
    the_end = the_end.reorganize
    the_end.must_include "And they lived happily ever after."
  end
end
