require 'spec_helper'
require 'document'

describe Document do

  before do
    @text = 'A bunch of words'
    @doc = Document.new('test', 'nobody', @text)
  end

  it "holds on to the contents" do
    @doc.content.must_equal @text
  end

  it "should return all of the words in the document" do
    @doc.words.must_equal @text.split(' ')

  end

  it "should know how may words it contains" do
    @doc.word_count.must_equal 4
  end

end
