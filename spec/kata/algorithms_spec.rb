require 'spec_helper'

describe Kata::Algorithms do
  describe ".addition" do
    context 'when a is 2' do
      let(:a) { '2' }
      context 'when b is 8' do
        let(:b) { '8' }
        it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
      end
      context 'when b is 123' do
        let(:b) { '123' }
        it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
      end
    end
    context 'when a is 32' do
      let(:a) { '32' }
      context 'when b is 8' do
        let(:b) { '8' }
        it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
      end
      context 'when b is 123' do
        let(:b) { '123' }
        it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
      end
      context 'when b is 92' do
        let(:b) { '92' }
        it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
      end
    end
    context 'when a is 0 and b is 0' do
      let(:a) { "0" }
      let(:b) { "0" }
      it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
    end
    context 'when a is 0 and b is 20' do
      let(:a) { "0" }
      let(:b) { "20" }
      it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
    end
    context 'when a is 1 and b is 1' do
      let(:a) { "0" }
      let(:b) { "20" }
      it { expect(subject.addition(a, b)).to eq((a.to_i + b.to_i).to_s) }
    end
  end

  describe ".multiplication" do
    context 'when a is 82 and b is 56' do
      let(:a) { "82" }
      let(:b) { "56" }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 2 and b is 10' do
      let(:a) { "2" }
      let(:b) { "10" }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 583 and b is 267' do
      let(:a) { "583" }
      let(:b) { "267" }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 0 and b is 0' do
      let(:a) { "0" }
      let(:b) { "0" }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context "when a is 20 and b is 0" do
      let(:a) { "20" }
      let(:b) { "0"  }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 1 and b is 1' do
      let(:a) { "1" }
      let(:b) { "1"  }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 1 and b is 0' do
      let(:a) { "1" }
      let(:b) { "0"  }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 1 and b is 1000' do
      let(:a) { "1" }
      let(:b) { "1000"  }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 345 and b is 7890' do
      let(:a) { "345" }
      let(:b) { "7890"  }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
    context 'when a is 123481023412304981230491234 and b is 123094812309481239481239048123401948123' do
      let(:a) { "123481023412304981230491234" }
      let(:b) { "123094812309481239481239048123401948123"  }
      it { expect(subject.multiplication(a, b)).to eq((a.to_i * b.to_i).to_s) }
    end
  end
  describe '.gcd_recursive_modulo' do
    context 'when a is 48 and b is 18' do
      let(:a) { 48 }
      let(:b) { 18 }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(6) }
    end
    context 'when a is 100 and b is 50' do
      let(:a) { 100 }
      let(:b) { 50  }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(50) }
    end
    context 'when a is 10000 and b is 1' do
      let(:a) { 1000 }
      let(:b) { 1    }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(1) }
    end
    context 'when a is 8 and b is 12' do
      let(:a) { 8  }
      let(:b) { 12 }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(4) }
    end
    context 'when a is 54 and b is 24' do
      let(:a) { 54 }
      let(:b) { 24 }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(6) }
    end
    context 'when a is 18 and b is 84' do
      let(:a) { 18 }
      let(:b) { 84 }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(6) }
    end
    context 'when a is 48 and b is 180' do
      let(:a) { 48  }
      let(:b) { 180 }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(12) }
    end
    context 'when a is 1 and b is 1' do
      let(:a) { 1 }
      let(:b) { 1 }
      it { expect(subject.gcd_recursive_modulo(a, b)).to eq(1) }
    end
  end
  describe '.gcd_recursive_subtraction' do
    context 'when a is 48 and b is 18' do
      let(:a) { 48 }
      let(:b) { 18 }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(6) }
    end
    context 'when a is 100 and b is 50' do
      let(:a) { 100 }
      let(:b) { 50  }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(50) }
    end
    context 'when a is 10000 and b is 1' do
      let(:a) { 1000 }
      let(:b) { 1    }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(1) }
    end
    context 'when a is 8 and b is 12' do
      let(:a) { 8  }
      let(:b) { 12 }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(4) }
    end
    context 'when a is 54 and b is 24' do
      let(:a) { 54 }
      let(:b) { 24 }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(6) }
    end
    context 'when a is 18 and b is 84' do
      let(:a) { 18 }
      let(:b) { 84 }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(6) }
    end
    context 'when a is 48 and b is 180' do
      let(:a) { 48  }
      let(:b) { 180 }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(12) }
    end
    context 'when a is 1 and b is 1' do
      let(:a) { 1 }
      let(:b) { 1 }
      it { expect(subject.gcd_recursive_subtraction(a, b)).to eq(1) }
    end
  end
  describe '.gcd_modulo' do
    context 'when a is 48 and b is 18' do
      let(:a) { 48 }
      let(:b) { 18 }
      it { expect(subject.gcd_modulo(a, b)).to eq(6) }
    end
    context 'when a is 100 and b is 50' do
      let(:a) { 100 }
      let(:b) { 50  }
      it { expect(subject.gcd_modulo(a, b)).to eq(50) }
    end
    context 'when a is 10000 and b is 1' do
      let(:a) { 1000 }
      let(:b) { 1    }
      it { expect(subject.gcd_modulo(a, b)).to eq(1) }
    end
    context 'when a is 8 and b is 12' do
      let(:a) { 8  }
      let(:b) { 12 }
      it { expect(subject.gcd_modulo(a, b)).to eq(4) }
    end
    context 'when a is 54 and b is 24' do
      let(:a) { 54 }
      let(:b) { 24 }
      it { expect(subject.gcd_modulo(a, b)).to eq(6) }
    end
    context 'when a is 18 and b is 84' do
      let(:a) { 18 }
      let(:b) { 84 }
      it { expect(subject.gcd_modulo(a, b)).to eq(6) }
    end
    context 'when a is 48 and b is 180' do
      let(:a) { 48  }
      let(:b) { 180 }
      it { expect(subject.gcd_modulo(a, b)).to eq(12) }
    end
    context 'when a is 1 and b is 1' do
      let(:a) { 1 }
      let(:b) { 1 }
      it { expect(subject.gcd_modulo(a, b)).to eq(1) }
    end
  end
end

