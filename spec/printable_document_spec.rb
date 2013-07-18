require 'spec_helper'
require 'printable_document'
require 'ostruct'
require 'rr'

describe PrintableDocument do

  before do
    @text = 'A bunch of words'
    @doc = PrintableDocument.new('test', 'nobody', @text)
  end

  it "knows how to print itself" do
    mock_printer = mock!
    mock(mock_printer).available? { true }
    @doc.print(mock_printer).must_equal 'Done'
  end

  it "returns the proper string if printer is offline" do
    stub_printer = OpenStruct.new(:available? => false)
    @doc.print(stub_printer).must_equal 'Printer unavailable'
  end
  
end
