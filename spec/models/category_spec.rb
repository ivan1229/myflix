require 'spec_helper'
=begin
describe Category do
  it "saves itself" do
    category = Category.new(name: "comedies")
    category.save
    expect(Category.first).to eq(category)
  end

  it "has many videos" do
    comedies = Category.create(name: "comedies")
    south_park = Video.create(title: "south park", description: "funny video", category: comedies)
    futurama = Video.create(title: "Futurama", description: " space travel", category: comedies)
    expect(comedies.videos).to eq([futurama, south_park])
  end
end
=end

describe Category do
  it { should have_many(:videos) }
  
end
