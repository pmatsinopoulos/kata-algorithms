require 'spec_helper'

describe Kata::Algorithms do
  describe '.find_gaps' do
    context 'when input is 529' do
      let(:input) { 529 }

      it 'returns 4' do
        expect(described_class.find_gaps(input)).to eq(4)
      end
    end

    context 'when input is 9' do
      let(:input) { 9 }

      it 'returns 2' do
        expect(described_class.find_gaps(input)).to eq(2)
      end
    end

    context 'when input is 20' do
      let(:input) { 20 }

      it 'returns 1' do
        expect(described_class.find_gaps(input)).to eq(1)
      end
    end

    context 'when input is 1041' do
      let(:input) { 1041 }

      it 'returns 5' do
        expect(described_class.find_gaps(input)).to eq(5)
      end
    end

    context 'when input is 92039201293410029300294310923400191234091234' do
      let(:input) { 92039201293410029300294310923400191234091234 }
      # 100001000001000111011100111001001101101100010100101101100110110001111011111000110010100111100110010010011000110101010110010111000010010100011100010
      it 'returns 5' do
        expect(described_class.find_gaps(input)).to eq(5)
      end
    end

    context 'when input is 0' do
      let(:input) { 0 }
      # 0
      it 'returns 0' do
        expect(described_class.find_gaps(input)).to eq(0)
      end
    end

    context 'when input is 1' do
      let(:input) { 1 }
      it 'returns 0' do
        expect(described_class.find_gaps(input)).to eq(0)
      end
    end

    context 'when input is 2' do
      let(:input) { 2 }
      it 'returns 0' do
        expect(described_class.find_gaps(input)).to eq(0)
      end
    end

    context 'when input is 3' do
      let(:input) { 3 }
      it 'returns 0' do
        expect(described_class.find_gaps(input)).to eq(0)
      end
    end

    context 'when input is 4' do
      let(:input) { 4 }
      it 'returns 0' do
        expect(described_class.find_gaps(input)).to eq(0)
      end
    end

    context 'when input is 5' do
      let(:input) { 5 } # 101
      it 'returns 1' do
        expect(described_class.find_gaps(input)).to eq(1)
      end
    end
  end
end
