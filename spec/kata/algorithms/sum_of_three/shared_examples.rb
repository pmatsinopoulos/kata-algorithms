shared_examples "method that finds three integers summing up to zero" do
  it { expect(example['possible_results'].map{|a| a.sort}).to include(sum_of_three.find_three.sort)}
end

shared_examples "method that builds the integer positions" do
  it { expect(sum_of_three.send(:build_hash, example['input'])).to eq(example['result']) }
end