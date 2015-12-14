require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :head => "Head",
        :body => "MyText"
      ),
      Question.create!(
        :head => "Head",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Head".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
