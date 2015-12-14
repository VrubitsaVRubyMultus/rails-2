require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :head => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_head[name=?]", "question[head]"

      assert_select "textarea#question_body[name=?]", "question[body]"
    end
  end
end
