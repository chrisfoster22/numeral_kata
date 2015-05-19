require_relative 'arabic_converter'

describe ArabicConverter do

  let (:arabic_converter) { ArabicConverter.new }

  it 'returns 1 when passed "I"' do
    expect(arabic_converter.convert("I")).to eql(1)
  end

  it 'returns 3 when passed "III"' do
    expect(arabic_converter.convert("III")).to eql(3)
  end

  it 'returns 9 when passed "IX"' do
    expect(arabic_converter.convert("IX")).to eql(9)
  end

  it 'returns 1066 when passed "MLXVI"' do
    expect(arabic_converter.convert("MLXVI")).to eql(1066)
  end

    it 'returns 1989 when passed "MCMLXXXIX"' do
    expect(arabic_converter.convert("MCMLXXXIX")).to eql(1989)
  end


end
