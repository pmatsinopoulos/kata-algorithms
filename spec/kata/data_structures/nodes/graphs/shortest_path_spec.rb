require 'spec_helper'

describe Kata::DataStructures::Nodes::Graphs::ShortestPath do
  let(:atlanta) { Kata::DataStructures::Nodes::Graphs::City.new('Atlanta') }
  let(:denver)  { Kata::DataStructures::Nodes::Graphs::City.new('Denver') }
  let(:chicago) { Kata::DataStructures::Nodes::Graphs::City.new('Chicago') }
  let(:el_paso) { Kata::DataStructures::Nodes::Graphs::City.new('El Paso') }
  let(:boston)  { Kata::DataStructures::Nodes::Graphs::City.new('Boston') }
  let(:all_vertices) { [atlanta, denver, chicago, el_paso, boston] }

  before do
    denver.add_route(chicago, 40)
    denver.add_route(el_paso, 140)
    el_paso.add_route(boston, 100)
    chicago.add_route(el_paso, 80)
    boston.add_route(chicago, 120)
    boston.add_route(denver, 180)
    atlanta.add_route(boston, 100)
    atlanta.add_route(denver, 160)
  end

  context 'when city from is Atlanta and city to is El Paso' do
    it 'prints the correct shortest path' do
      subject = described_class.new(atlanta, el_paso, all_vertices)
      expect(subject.path).to eq('Atlanta,Denver,Chicago,El Paso')
    end
  end

  context 'when city from is Boston and city to is Denver' do
    it 'prints the correct shortest path' do
      subject = described_class.new(boston, denver, all_vertices)
      expect(subject.path).to eq('Boston,Denver')
    end
  end

  context 'when city from is Boston and city to is El Paso' do
    it 'prints the correct shortest path' do
      subject = described_class.new(boston, el_paso, all_vertices)
      expect(subject.path).to eq('Boston,Chicago,El Paso')
    end
  end
end
