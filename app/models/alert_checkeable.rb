# models should implement text_for_alert_check method

module AlertCheckeable

  # new line character
  NEW_LINE="\n"

  def splitted_words
    AlertWords.file.split(NEW_LINE)
  end

  def include_alert_word?
    splitted_words.each do |word|
      return true if text_for_alert_check.index(word)
    end
    false
  end

end