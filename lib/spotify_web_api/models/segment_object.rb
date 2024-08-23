# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # SegmentObject Model.
  class SegmentObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The starting point (in seconds) of the segment.
    # @return [Float]
    attr_accessor :start

    # The duration (in seconds) of the segment.
    # @return [Float]
    attr_accessor :duration

    # The confidence, from 0.0 to 1.0, of the reliability of the segmentation.
    # Segments of the song which are difficult to logically segment (e.g: noise)
    # may correspond to low values in this field.
    # @return [Float]
    attr_accessor :confidence

    # The onset loudness of the segment in decibels (dB). Combined with
    # `loudness_max` and `loudness_max_time`, these components can be used to
    # describe the "attack" of the segment.
    # @return [Float]
    attr_accessor :loudness_start

    # The peak loudness of the segment in decibels (dB). Combined with
    # `loudness_start` and `loudness_max_time`, these components can be used to
    # describe the "attack" of the segment.
    # @return [Float]
    attr_accessor :loudness_max

    # The segment-relative offset of the segment peak loudness in seconds.
    # Combined with `loudness_start` and `loudness_max`, these components can be
    # used to desctibe the "attack" of the segment.
    # @return [Float]
    attr_accessor :loudness_max_time

    # The offset loudness of the segment in decibels (dB). This value should be
    # equivalent to the loudness_start of the following segment.
    # @return [Float]
    attr_accessor :loudness_end

    # Pitch content is given by a “chroma” vector, corresponding to the 12 pitch
    # classes C, C#, D to B, with values ranging from 0 to 1 that describe the
    # relative dominance of every pitch in the chromatic scale. For example a C
    # Major chord would likely be represented by large values of C, E and G
    # (i.e. classes 0, 4, and 7).
    # Vectors are normalized to 1 by their strongest dimension, therefore noisy
    # sounds are likely represented by values that are all close to 1, while
    # pure tones are described by one value at 1 (the pitch) and others near 0.
    # As can be seen below, the 12 vector indices are a combination of low-power
    # spectrum values at their respective pitch frequencies.
    # ![pitch
    # vector](https://developer.spotify.com/assets/audio/Pitch_vector.png)
    # @return [Array[Float]]
    attr_accessor :pitches

    # Timbre is the quality of a musical note or sound that distinguishes
    # different types of musical instruments, or voices. It is a complex notion
    # also referred to as sound color, texture, or tone quality, and is derived
    # from the shape of a segment’s spectro-temporal surface, independently of
    # pitch and loudness. The timbre feature is a vector that includes 12
    # unbounded values roughly centered around 0. Those values are high level
    # abstractions of the spectral surface, ordered by degree of importance.
    # For completeness however, the first dimension represents the average
    # loudness of the segment; second emphasizes brightness; third is more
    # closely correlated to the flatness of a sound; fourth to sounds with a
    # stronger attack; etc. See an image below representing the 12 basis
    # functions (i.e. template segments).
    # ![timbre basis
    # functions](https://developer.spotify.com/assets/audio/Timbre_basis_functio
    # ns.png)
    # The actual timbre of the segment is best described as a linear combination
    # of these 12 basis functions weighted by the coefficient values: timbre =
    # c1 x b1 + c2 x b2 + ... + c12 x b12, where c1 to c12 represent the 12
    # coefficients and b1 to b12 the 12 basis functions as displayed below.
    # Timbre vectors are best used in comparison with each other.
    # @return [Array[Float]]
    attr_accessor :timbre

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start'] = 'start'
      @_hash['duration'] = 'duration'
      @_hash['confidence'] = 'confidence'
      @_hash['loudness_start'] = 'loudness_start'
      @_hash['loudness_max'] = 'loudness_max'
      @_hash['loudness_max_time'] = 'loudness_max_time'
      @_hash['loudness_end'] = 'loudness_end'
      @_hash['pitches'] = 'pitches'
      @_hash['timbre'] = 'timbre'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        start
        duration
        confidence
        loudness_start
        loudness_max
        loudness_max_time
        loudness_end
        pitches
        timbre
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(start = SKIP, duration = SKIP, confidence = SKIP,
                   loudness_start = SKIP, loudness_max = SKIP,
                   loudness_max_time = SKIP, loudness_end = SKIP,
                   pitches = SKIP, timbre = SKIP)
      @start = start unless start == SKIP
      @duration = duration unless duration == SKIP
      @confidence = confidence unless confidence == SKIP
      @loudness_start = loudness_start unless loudness_start == SKIP
      @loudness_max = loudness_max unless loudness_max == SKIP
      @loudness_max_time = loudness_max_time unless loudness_max_time == SKIP
      @loudness_end = loudness_end unless loudness_end == SKIP
      @pitches = pitches unless pitches == SKIP
      @timbre = timbre unless timbre == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start = hash.key?('start') ? hash['start'] : SKIP
      duration = hash.key?('duration') ? hash['duration'] : SKIP
      confidence = hash.key?('confidence') ? hash['confidence'] : SKIP
      loudness_start =
        hash.key?('loudness_start') ? hash['loudness_start'] : SKIP
      loudness_max = hash.key?('loudness_max') ? hash['loudness_max'] : SKIP
      loudness_max_time =
        hash.key?('loudness_max_time') ? hash['loudness_max_time'] : SKIP
      loudness_end = hash.key?('loudness_end') ? hash['loudness_end'] : SKIP
      pitches = hash.key?('pitches') ? hash['pitches'] : SKIP
      timbre = hash.key?('timbre') ? hash['timbre'] : SKIP

      # Create object from extracted values.
      SegmentObject.new(start,
                        duration,
                        confidence,
                        loudness_start,
                        loudness_max,
                        loudness_max_time,
                        loudness_end,
                        pitches,
                        timbre)
    end
  end
end
