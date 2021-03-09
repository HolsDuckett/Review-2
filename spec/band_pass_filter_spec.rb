require 'band_pass_filter'

describe 'band pass filter' do

  it "should take in a sound wave and return the same sound wave" do
    expect(band_pass_filter([40, 40, 110, 1000], 40, 1000)).to eq([40, 40, 110, 1000])
  end

  it "should change any frequency below the minimum frequency and return the modified sound wave" do
    expect(band_pass_filter([10, 40, 110, 1000], 40, 1000)).to eq([40, 40, 110, 1000])
  end

  it "should change any frequency above the maximum frequency and return the modified sound wave" do
    expect(band_pass_filter([40, 40, 110, 1100], 40, 1000)).to eq([40, 40, 110, 1000])
  end

  it "should change any frequencies above the max frequency and below the min frequency and return modified sound wave" do
    expect(band_pass_filter([10, 40, 110, 1100], 40, 1000)).to eq([40, 40, 110, 1000])
  end

  it "should change any frquencies above the max or below the min musicians customised freq" do
    expect(band_pass_filter([40, 40, 110, 1000], 50, 600)).to eq([50, 50, 110, 600])
  end

end

# [40, 40, 110, 1000], 50, 600    =>     [50, 50, 110, 600] - frequencies changed to musicians customised frequencies
