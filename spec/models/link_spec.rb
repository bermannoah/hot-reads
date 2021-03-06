require 'rails_helper'

describe Link, type: :model do
  it { should validate_presence_of(:url) }

  it "rejects bad links" do
    link = Link.new(url: "wfwe")
    expect(link).to be_invalid
  end

  it "rejects more subtly bad links" do
    link = Link.new(url: "http://lol")
    expect(link).to be_invalid
  end

  it "rejects even more subtly bad links" do
    link = Link.new(url: "heehee.com")
    expect(link).to be_invalid
  end

  it "accepts properly formatted links" do
    link = Link.new(url: "http://heehee.com")
    expect(link).to be_valid
  end

  it "accepts properly formatted and specific links" do
    link = Link.new(url: "http://heehee.com/cool_image.jpg")
    expect(link).to be_valid
  end

  it "accepts properly formatted and specific links with subdomains" do
    link = Link.new(url: "http://whoa.heehee.com/cool_image.jpg")
    expect(link).to be_valid
  end
end