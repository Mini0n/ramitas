# frozen_string_literal: true

require "binary_tree/binary_tree"

RSpec.describe BinaryTree do
  it "creates a BinaryTree" do
    expect(described_class.new.is_a?(BinaryTree)).to be true
  end
end
