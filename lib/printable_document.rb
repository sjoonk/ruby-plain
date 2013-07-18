require 'document'

class PrintableDocument < Document
  
  def print(printer)
    return 'Printer unavailable' unless printer.available?
    'Done'
  end

end
