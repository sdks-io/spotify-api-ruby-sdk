# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # DisallowsObject Model.
  class DisallowsObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Interrupting playback. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :interrupting_playback

    # Pausing. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :pausing

    # Resuming. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :resuming

    # Seeking playback location. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :seeking

    # Skipping to the next context. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :skipping_next

    # Skipping to the previous context. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :skipping_prev

    # Toggling repeat context flag. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :toggling_repeat_context

    # Toggling shuffle flag. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :toggling_shuffle

    # Toggling repeat track flag. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :toggling_repeat_track

    # Transfering playback between devices. Optional field.
    # @return [TrueClass | FalseClass]
    attr_accessor :transferring_playback

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['interrupting_playback'] = 'interrupting_playback'
      @_hash['pausing'] = 'pausing'
      @_hash['resuming'] = 'resuming'
      @_hash['seeking'] = 'seeking'
      @_hash['skipping_next'] = 'skipping_next'
      @_hash['skipping_prev'] = 'skipping_prev'
      @_hash['toggling_repeat_context'] = 'toggling_repeat_context'
      @_hash['toggling_shuffle'] = 'toggling_shuffle'
      @_hash['toggling_repeat_track'] = 'toggling_repeat_track'
      @_hash['transferring_playback'] = 'transferring_playback'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        interrupting_playback
        pausing
        resuming
        seeking
        skipping_next
        skipping_prev
        toggling_repeat_context
        toggling_shuffle
        toggling_repeat_track
        transferring_playback
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(interrupting_playback = SKIP, pausing = SKIP,
                   resuming = SKIP, seeking = SKIP, skipping_next = SKIP,
                   skipping_prev = SKIP, toggling_repeat_context = SKIP,
                   toggling_shuffle = SKIP, toggling_repeat_track = SKIP,
                   transferring_playback = SKIP)
      @interrupting_playback = interrupting_playback unless interrupting_playback == SKIP
      @pausing = pausing unless pausing == SKIP
      @resuming = resuming unless resuming == SKIP
      @seeking = seeking unless seeking == SKIP
      @skipping_next = skipping_next unless skipping_next == SKIP
      @skipping_prev = skipping_prev unless skipping_prev == SKIP
      @toggling_repeat_context = toggling_repeat_context unless toggling_repeat_context == SKIP
      @toggling_shuffle = toggling_shuffle unless toggling_shuffle == SKIP
      @toggling_repeat_track = toggling_repeat_track unless toggling_repeat_track == SKIP
      @transferring_playback = transferring_playback unless transferring_playback == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      interrupting_playback =
        hash.key?('interrupting_playback') ? hash['interrupting_playback'] : SKIP
      pausing = hash.key?('pausing') ? hash['pausing'] : SKIP
      resuming = hash.key?('resuming') ? hash['resuming'] : SKIP
      seeking = hash.key?('seeking') ? hash['seeking'] : SKIP
      skipping_next = hash.key?('skipping_next') ? hash['skipping_next'] : SKIP
      skipping_prev = hash.key?('skipping_prev') ? hash['skipping_prev'] : SKIP
      toggling_repeat_context =
        hash.key?('toggling_repeat_context') ? hash['toggling_repeat_context'] : SKIP
      toggling_shuffle =
        hash.key?('toggling_shuffle') ? hash['toggling_shuffle'] : SKIP
      toggling_repeat_track =
        hash.key?('toggling_repeat_track') ? hash['toggling_repeat_track'] : SKIP
      transferring_playback =
        hash.key?('transferring_playback') ? hash['transferring_playback'] : SKIP

      # Create object from extracted values.
      DisallowsObject.new(interrupting_playback,
                          pausing,
                          resuming,
                          seeking,
                          skipping_next,
                          skipping_prev,
                          toggling_repeat_context,
                          toggling_shuffle,
                          toggling_repeat_track,
                          transferring_playback)
    end
  end
end
