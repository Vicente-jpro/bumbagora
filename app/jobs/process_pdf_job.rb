class ProcessPdfJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "#### Resque is working ####"
  end
end
