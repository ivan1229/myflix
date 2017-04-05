require 'spec_helper'
=begin
describe Video do
  it "saves itself" do
    video = Video.new(title: "monk", description: "a great video!")
    video.save
    expect(Video.first).to eq(video)

    # alternative syntax
    # Video.first.should eq(video)
    # Video.first.should == video
  end

  it "belongs to category" do
    dramas = Category.create(name: "dramas")
    monk = Video.create(title: "monk", description: "a greate video!", category: dramas)
    expect(monk.category).to eq(dramas)
  end

  it "does not save a video without a title" do
    video = Video.create(description: "a greate video!")
    expect(Video.count).to eq(0)
  end
  it "does not save a video without a description" do
    video = Video.create(title: "monk")
    expect(Video.count).to eq(0)
  end
end
=end

describe Video do
  it { should belong_to(:category)}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}

  describe "search_by_title" do
    it "returns an empty array if there is no match" do
      futurama = Video.create(title: "Futurama", description: "space travel")
      back_to_future = Video.create(title: "Back to Future", description: "time travel")
      expect(Video.search_by_title("hello")).to eq([])
    end
    it "returns an array of one video for an exact match" do
      futurama = Video.create(title: "Futurama", description: "space travel")
      back_to_future = Video.create(title: "Back to Future", description: "time travel")
      expect(Video.search_by_title("Futurama")).to eq([futurama])
    end
    it "returns an array of one video for a partial match" do
      futurama = Video.create(title: "Futurama", description: "space travel")
      back_to_future = Video.create(title: "Back to Future", description: "time travel")
      expect(Video.search_by_title("urama")).to eq([futurama])
    end
    it "returns an array of all matches ordered by created_at" do
      futurama = Video.create(title: "Futurama", description: "space travel", created_at: 1.day.ago)
      back_to_future = Video.create(title: "Back to Future", description: "time travel")
      expect(Video.search_by_title("Futur")).to eq([back_to_future, futurama])
    end
    it "returns an empty array for a search with an empty string" do
      futurama = Video.create(title: "Futurama", description: "space travel", created_at: 1.day.ago)
      back_to_future = Video.create(title: "Back to Future", description: "time travel")
      expect(Video.search_by_title("")).to eq([])
    end
  end
end
