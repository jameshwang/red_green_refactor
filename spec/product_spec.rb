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

  context "The maximum allowed connections for a" do
    it "free account is 100" do
      Product.new('free').max_connections_allowed.should eq 100
    end

    it "bronze account is 100" do
      Product.new('bronze').max_connections_allowed.should eq 500
    end

    it "silver account is 100" do
      Product.new('silver').max_connections_allowed.should eq 1500
    end

    it "gold account is 100" do
      Product.new('gold').max_connections_allowed.should eq 5000
    end

    it "platinum account is 100" do
      Product.new('platinum').max_connections_allowed.should eq 999_999_999
    end
  end
end