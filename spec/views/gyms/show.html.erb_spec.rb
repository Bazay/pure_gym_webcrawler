require 'rails_helper'

RSpec.describe "gyms/show", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
