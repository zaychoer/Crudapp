require 'rails_helper'

RSpec.describe "home/index.html.slim", type: :view do
  it "render the word home" do
    render :template => "home/index.html.slim"
    expect(rendered).to match /home/
  end
end
