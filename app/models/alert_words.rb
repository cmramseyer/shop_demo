module AlertWords

  def self.file
    File.read(Rails.root.join("alert_words.txt"))
  end

end