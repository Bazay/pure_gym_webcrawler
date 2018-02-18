require 'rails_helper'

RSpec.describe "lessons/edit", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :gym => nil,
      :duration => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input#lesson_gym_id[name=?]", "lesson[gym_id]"

      assert_select "input#lesson_duration[name=?]", "lesson[duration]"

      assert_select "input#lesson_status[name=?]", "lesson[status]"
    end
  end
end
