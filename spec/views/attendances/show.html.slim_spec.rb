require 'rails_helper'

RSpec.describe "attendances/show", :type => :view do
  before(:each) do
    @attendance = assign(:attendance, Attendance.create!(
      :children_number => "",
      :adults_number => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
