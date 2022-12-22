require "binary_tree/binary_tree"

RSpec.describe BinaryTree do
  describe "#BinaryTree" do
    context "BinaryTree is created" do
      it "returns a created binary tree" do
        expect(described_class.new.is_a?(BinaryTree)).to be true
      end
    end
  end
end
