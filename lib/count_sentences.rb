require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sent_array = self.split(/!|\.|\.'|\?/)
    sent_array.reject{ |str| str.empty?}
    sent_array.length
  end
end