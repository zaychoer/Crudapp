require 'rails_helper'

RSpec.describe "users/index.html.slim", type: :view do
  it "render the word user" do
    render :template => "users/index.html.slim"
    expect(rendered).to match /users/
  end
end
