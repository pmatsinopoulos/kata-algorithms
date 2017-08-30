require 'spec_helper'

describe Kata::DataStructures::Nodes::Graphs::Person do
  describe '#display_network_breadth_first' do
    context 'when graph with one node' do
      subject(:person) do
        described_class.new('Alice')
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice')
      end
    end

    context 'when graph with two nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        alice.add_friend(bob)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob')
      end
    end

    context 'when graph with three nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        candy = described_class.new('Candy')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy')
      end
    end

    context 'when graph with four nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek')
      end
    end

    context 'when graph with five nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        elaine = described_class.new('Elaine')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice.add_friend(elaine)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine')
      end
    end

    context 'when graph with six nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        fred = described_class.new('Fred')
        bob.add_friend(fred)
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        elaine = described_class.new('Elaine')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice.add_friend(elaine)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine,Fred')
      end
    end

    context 'when graph with seven nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        fred = described_class.new('Fred')
        bob.add_friend(fred)
        helen = described_class.new('Helen')
        fred.add_friend(helen)
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        elaine = described_class.new('Elaine')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice.add_friend(elaine)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine,Fred,Helen')
      end
    end

    context 'when graph with eight nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        fred = described_class.new('Fred')
        bob.add_friend(fred)
        helen = described_class.new('Helen')
        fred.add_friend(helen)
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        gina = described_class.new('Gina')
        derek.add_friend(gina)
        elaine = described_class.new('Elaine')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice.add_friend(elaine)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine,Fred,Gina,Helen')
      end
    end

    context 'when graph with nine nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        fred = described_class.new('Fred')
        bob.add_friend(fred)
        helen = described_class.new('Helen')
        fred.add_friend(helen)
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        gina = described_class.new('Gina')
        irena = described_class.new('Irena')
        gina.add_friend(irena)
        derek.add_friend(gina)
        elaine = described_class.new('Elaine')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice.add_friend(elaine)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine,Fred,Gina,Helen,Irena')
      end
    end

    context 'when graph with nine nodes' do
      subject(:person) do
        alice = described_class.new('Alice')
        bob = described_class.new('Bob')
        fred = described_class.new('Fred')
        bob.add_friend(fred)
        helen = described_class.new('Helen')
        fred.add_friend(helen)
        candy = described_class.new('Candy')
        derek = described_class.new('Derek')
        gina = described_class.new('Gina')
        irena = described_class.new('Irena')
        gina.add_friend(irena)
        derek.add_friend(gina)
        fred.add_friend(derek)
        elaine = described_class.new('Elaine')
        alice.add_friend(bob)
        alice.add_friend(candy)
        alice.add_friend(derek)
        alice.add_friend(elaine)
        alice
      end

      it 'displays the network' do
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine,Fred,Gina,Helen,Irena')
        # Visit a second time to test that visited flag is reset
        expect(person.display_network_breadth_first).to eq('Alice,Bob,Candy,Derek,Elaine,Fred,Gina,Helen,Irena')
      end
    end
  end
end
