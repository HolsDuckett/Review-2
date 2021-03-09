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


end

# [10, 40, 110, 1100], 40, 1000    =>    [40, 40, 110, 1000] - 1 change up to min frequency & 1 change down to max frequency
