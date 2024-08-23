# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # ChapterObject Model.
  class ChapterObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A URL to a 30 second preview (MP3 format) of the chapter. `null` if not
    # available.
    # @return [String]
    attr_accessor :audio_preview_url

    # A list of the countries in which the chapter can be played, identified by
    # their [ISO 3166-1
    # alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
    # @return [Array[String]]
    attr_accessor :available_markets

    # The number of the chapter
    # @return [Integer]
    attr_accessor :chapter_number

    # A description of the chapter. HTML tags are stripped away from this field,
    # use `html_description` field in case HTML tags are needed.
    # @return [String]
    attr_accessor :description

    # A description of the chapter. This field may contain HTML tags.
    # @return [String]
    attr_accessor :html_description

    # The chapter length in milliseconds.
    # @return [Integer]
    attr_accessor :duration_ms

    # Whether or not the chapter has explicit content (true = yes it does; false
    # = no it does not OR unknown).
    # @return [TrueClass | FalseClass]
    attr_accessor :explicit

    # External URLs for this chapter.
    # @return [ExternalUrlObject]
    attr_accessor :external_urls

    # A link to the Web API endpoint providing full details of the chapter.
    # @return [String]
    attr_accessor :href

    # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
    # chapter.
    # @return [String]
    attr_accessor :id

    # The cover art for the chapter in various sizes, widest first.
    # @return [Array[ImageObject]]
    attr_accessor :images

    # True if the chapter is playable in the given market. Otherwise false.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_playable

    # A list of the languages used in the chapter, identified by their [ISO
    # 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
    # @return [Array[String]]
    attr_accessor :languages

    # The name of the chapter.
    # @return [String]
    attr_accessor :name

    # The date the chapter was first released, for example `"1981-12-15"`.
    # Depending on the precision, it might be shown as `"1981"` or `"1981-12"`.
    # @return [String]
    attr_accessor :release_date

    # The precision with which `release_date` value is known.
    # @return [ReleaseDatePrecisionEnum]
    attr_accessor :release_date_precision

    # The user's most recent position in the chapter. Set if the supplied access
    # token is a user token and has the scope 'user-read-playback-position'.
    # @return [ResumePointObject]
    attr_accessor :resume_point

    # The object type.
    # @return [Type8Enum]
    attr_accessor :type

    # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for
    # the chapter.
    # @return [String]
    attr_accessor :uri

    # Included in the response when a content restriction is applied.
    # @return [ChapterRestrictionObject]
    attr_accessor :restrictions

    # The audiobook for which the chapter belongs.
    # @return [AudiobookBase]
    attr_accessor :audiobook

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['audio_preview_url'] = 'audio_preview_url'
      @_hash['available_markets'] = 'available_markets'
      @_hash['chapter_number'] = 'chapter_number'
      @_hash['description'] = 'description'
      @_hash['html_description'] = 'html_description'
      @_hash['duration_ms'] = 'duration_ms'
      @_hash['explicit'] = 'explicit'
      @_hash['external_urls'] = 'external_urls'
      @_hash['href'] = 'href'
      @_hash['id'] = 'id'
      @_hash['images'] = 'images'
      @_hash['is_playable'] = 'is_playable'
      @_hash['languages'] = 'languages'
      @_hash['name'] = 'name'
      @_hash['release_date'] = 'release_date'
      @_hash['release_date_precision'] = 'release_date_precision'
      @_hash['resume_point'] = 'resume_point'
      @_hash['type'] = 'type'
      @_hash['uri'] = 'uri'
      @_hash['restrictions'] = 'restrictions'
      @_hash['audiobook'] = 'audiobook'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        available_markets
        resume_point
        restrictions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        audio_preview_url
      ]
    end

    def initialize(audio_preview_url = nil, chapter_number = nil,
                   description = nil, html_description = nil, duration_ms = nil,
                   explicit = nil, external_urls = nil, href = nil, id = nil,
                   images = nil, is_playable = nil, languages = nil, name = nil,
                   release_date = nil, release_date_precision = nil, type = nil,
                   uri = nil, audiobook = nil, available_markets = SKIP,
                   resume_point = SKIP, restrictions = SKIP)
      @audio_preview_url = audio_preview_url
      @available_markets = available_markets unless available_markets == SKIP
      @chapter_number = chapter_number
      @description = description
      @html_description = html_description
      @duration_ms = duration_ms
      @explicit = explicit
      @external_urls = external_urls
      @href = href
      @id = id
      @images = images
      @is_playable = is_playable
      @languages = languages
      @name = name
      @release_date = release_date
      @release_date_precision = release_date_precision
      @resume_point = resume_point unless resume_point == SKIP
      @type = type
      @uri = uri
      @restrictions = restrictions unless restrictions == SKIP
      @audiobook = audiobook
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      audio_preview_url =
        hash.key?('audio_preview_url') ? hash['audio_preview_url'] : nil
      chapter_number =
        hash.key?('chapter_number') ? hash['chapter_number'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      html_description =
        hash.key?('html_description') ? hash['html_description'] : nil
      duration_ms = hash.key?('duration_ms') ? hash['duration_ms'] : nil
      explicit = hash.key?('explicit') ? hash['explicit'] : nil
      external_urls = ExternalUrlObject.from_hash(hash['external_urls']) if hash['external_urls']
      href = hash.key?('href') ? hash['href'] : nil
      id = hash.key?('id') ? hash['id'] : nil
      # Parameter is an array, so we need to iterate through it
      images = nil
      unless hash['images'].nil?
        images = []
        hash['images'].each do |structure|
          images << (ImageObject.from_hash(structure) if structure)
        end
      end

      images = nil unless hash.key?('images')
      is_playable = hash.key?('is_playable') ? hash['is_playable'] : nil
      languages = hash.key?('languages') ? hash['languages'] : nil
      name = hash.key?('name') ? hash['name'] : nil
      release_date = hash.key?('release_date') ? hash['release_date'] : nil
      release_date_precision =
        hash.key?('release_date_precision') ? hash['release_date_precision'] : nil
      type = hash.key?('type') ? hash['type'] : nil
      uri = hash.key?('uri') ? hash['uri'] : nil
      audiobook = AudiobookBase.from_hash(hash['audiobook']) if hash['audiobook']
      available_markets =
        hash.key?('available_markets') ? hash['available_markets'] : SKIP
      resume_point = ResumePointObject.from_hash(hash['resume_point']) if hash['resume_point']
      restrictions = ChapterRestrictionObject.from_hash(hash['restrictions']) if
        hash['restrictions']

      # Create object from extracted values.
      ChapterObject.new(audio_preview_url,
                        chapter_number,
                        description,
                        html_description,
                        duration_ms,
                        explicit,
                        external_urls,
                        href,
                        id,
                        images,
                        is_playable,
                        languages,
                        name,
                        release_date,
                        release_date_precision,
                        type,
                        uri,
                        audiobook,
                        available_markets,
                        resume_point,
                        restrictions)
    end
  end
end
