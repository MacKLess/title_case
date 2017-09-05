class String
  def title_case()
    no_change = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor"]
    split_title = self.split()
    split_title.each do |word|
      word.downcase!()
      if !no_change.include? word
        word.capitalize!()
      end
    end
    split_title[0].capitalize!
    split_title.join(" ")
  end
end
puts "One flew over THE cuckoos NEST".title_case()
