ActiveAdmin.register_page "Alert Words" do

  menu priority: 12, label: 'Alert words'

  controller do
    def index
      @alert_words = AlertWords.file
    end
  end

  content do
    render "admin/alert_words/index", context: self, locals: {alert_words: @alert_words}
  end
  
end
