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
end