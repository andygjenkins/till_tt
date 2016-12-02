require 'spec_helper'

describe Till do
  subject(:till) { described_class.new('hipster.json') }
  let(:order) { Order.new }


  describe "#add_item" do
    it "adds menu items and quantity to the order" do
      till.add_item("Caffe Latte", 5)
      expect(order.list).to eq [["Cafe Latte", 5]]
    end

    it "will not add an item if it's not in the menu" do
      expect{ till.add_item("Hand Grenade", 5) }.to raise_error "Not on the Menu!"  
    end
  end
end
