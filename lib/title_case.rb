class String
  def title_case()
    split_title = self.split()
    split_title.each do |word|
      word.downcase!()
      word.capitalize!()
    end
    split_title.join(" ")
  end
end
