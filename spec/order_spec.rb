require 'spec_helper'

describe Order do

  subject(:order) { described_class.new }


  it "stores orders" do
    order.list << ["Cafe Latte", 5]
    expect(order.list).to eq [["Cafe Latte", 5]]
  end

  it "stores customer names" do
    order.customers << "Pugh"
    order.customers << "Barney McGrew"
    expect(order.customers).to eq ["Pugh","Barney McGrew"]
  end

end
