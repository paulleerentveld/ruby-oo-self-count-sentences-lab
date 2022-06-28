require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?

    self.end_with?("?")

  end

  def exclamation?

    self.end_with?("!")

  end

  def count_sentences

    self.split(/\.|\?|\!/).delete_if {|item| item.size < 2}.count
    #if there is more than one !! etc it returns a sentance  as "!" delete_if removes these instances
    

  end
end