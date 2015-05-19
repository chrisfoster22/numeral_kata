require_relative 'numeral_converter'

describe NumeralConverter do

  let(:numeral_converter) {NumeralConverter.new}

  it 'returns "I" when passed 1' do
    expect(numeral_converter.convert(1)).to eql("I")
  end

  it 'returns "II" when passed 2' do
    expect(numeral_converter.convert(2)).to eql("II")
  end

  it 'returns "V" when passed 5' do
    expect(numeral_converter.convert(5)).to eql("V")
  end

  it 'returns "IV" when passed 4' do
    expect(numeral_converter.convert(4)).to eql("IV")
  end

  it 'returns "VI" when passed 6' do
    expect(numeral_converter.convert(6)).to eql("VI")
  end

  it 'returns "X" when passed 10' do
    expect(numeral_converter.convert(10)).to eql("X")
  end

  it 'returns "XI" when passed 11' do
    expect(numeral_converter.convert(11)).to eql("XI")
  end

  it 'returns "MLXVI" when passed 1066' do
    expect(numeral_converter.convert(1066)).to eql("MLXVI")
  end

    it 'returns "MCMLXXXIX" when passed 1989' do
    expect(numeral_converter.convert(1989)).to eql("MCMLXXXIX")
  end
end

