ActiveAdmin.register_page "Exceptions" do

  menu priority: 10, label: 'Exceptions'

  controller do
    def index
      response = SentryIssues.get
      @issues = response.map {|resp| SentryApi::Issue.new(resp)}
    end
  end

  content do
    render "admin/exceptions/index", locals: {issues: @issues}, context: self
  end
  
end
