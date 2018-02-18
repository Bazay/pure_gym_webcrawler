require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :gym => nil,
      :duration => 1,
      :status => "MyString"
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input#lesson_gym_id[name=?]", "lesson[gym_id]"

      assert_select "input#lesson_duration[name=?]", "lesson[duration]"

      assert_select "input#lesson_status[name=?]", "lesson[status]"
    end
  end
end
