
def band_pass_filter(sound_wave, min_frequency, max_frequency)

modified_sound_wave = []
  sound_wave.each do | freq |
    if freq < min_frequency
      modified_sound_wave << min_frequency
    elsif freq > max_frequency
      modified_sound_wave << max_frequency
    else
      modified_sound_wave << freq
    end
  end
  return modified_sound_wave
end

# [10, 40, 110, 1100], 40, 1000    =>    [40, 40, 110, 1000] - 1 change up to min frequency & 1 change down to max frequency
