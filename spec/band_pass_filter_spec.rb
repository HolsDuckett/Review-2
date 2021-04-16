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

  it "should change all frequencies in the sound wave when mix and max are the same" do
    expect(band_pass_filter([40, 40, 110, 1000], 50, 50)).to eq([50, 50, 50, 50])
  end

  it "should be able to test up to 44,100 frequencies in under 100 ms" do
    freq = 40
    sound_wave = Array.new(44100, freq)
    expect(band_pass_filter(sound_wave, 40, 40)).to eq(sound_wave)
  end


end
