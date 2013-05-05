require 'spec_helper'

describe Product do
  let(:free) { Product.new('free') }
  let(:bronze) { Product.new('bronze')}
  let(:silver) { Product.new('silver')}
  let(:gold) { Product.new('gold')}
  let(:platinum) { Product.new('platinum')}

  context "for free products" do
    it "price is 0" do
      free.price.should eq 0
    end
  end

end