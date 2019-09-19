module AlertWords

  NEW_LINE="\n"

  def self.file
    File.read(Rails.root.join("alert_words.txt"))
  end

  def self.splitted_words
    self.file.split(NEW_LINE)
  end

  def self.include_alert_word?(text)
    splitted_words.each do |word|
      return true if text.index(word)
    end
    false
  end

end