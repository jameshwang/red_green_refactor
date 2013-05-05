require 'spec_helper'

describe Product do
  @free     = Product.new('free')
  @bronze   = Product.new('bronze')
  @silver   = Product.new('silver')
  @gold     = Product.new('gold')
  @platinum = Product.new('platinum')

  [
    {:product => @free, :name => 'free', :price => 0},
    {:product => @bronze, :name => 'bronze', :price => 10},
    {:product => @silver, :name => 'silver', :price => 25},
    {:product => @gold, :name => 'gold', :price => 50},
    {:product => @platinum, :name => 'platinum', :price => 100}
  ].each do |tiers|
    context "for #{tiers[:name]} products" do
      it "price is #{tiers[:price]}" do
        tiers[:product].price.should eq tiers[:price]
      end
    end
  end

  [
    {:product => @free, :name => 'free', :connections => 100},
    {:product => @bronze, :name => 'bronze', :connections => 500},
    {:product => @silver, :name => 'silver', :connections => 1500},
    {:product => @gold, :name => 'gold', :connections => 5000},
    {:product => @platinum, :name => 'platinum', :connections => 999_999_999}
  ].each do |tiers|
    context "The maximum allowed connections for a" do
      it "#{tiers[:name]} account is #{tiers[:connections]}" do
        tiers[:product].max_connections_allowed.should eq tiers[:connections]
      end
    end
  end

  context "The features allowed for a" do
    it "free account are Twitter, Facebook, and Github integration" do
      Product.new('free').features.should include 'Twitter', 'Facebook', 'Github'
    end

    it "bronze account are Twitter, Facebook, and Github integration" do
      Product.new('bronze').features.should include 'Twitter', 'Facebook', 'Github'
    end

    it "silver account are Twitter, Facebook, Github, and Linkedin integration" do
      Product.new('silver').features.should include 'Twitter', 'Facebook', 'Github', 'Linkedin'
    end

    it "gold account are Twitter, Facebook, Github, and Linkedin integration" do
      Product.new('gold').features.should include 'Twitter', 'Facebook', 'Github', 'Linkedin'
    end

    it "platinum account are Twitter, Facebook, Github, and Linkedin integration" do
      Product.new('platinum').features.should include 'Twitter', 'Facebook', 'Github', 'Linkedin'
    end
  end
end