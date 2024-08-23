# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # CursorPagingSimplifiedArtistObject Model.
  class CursorPagingSimplifiedArtistObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A link to the Web API endpoint returning the full result of the request.
    # @return [String]
    attr_accessor :href

    # The maximum number of items in the response (as set in the query or by
    # default).
    # @return [Integer]
    attr_accessor :limit

    # URL to the next page of items. ( `null` if none)
    # @return [String]
    attr_accessor :mnext

    # The cursors used to find the next set of items.
    # @return [CursorObject]
    attr_accessor :cursors

    # The total number of items available to return.
    # @return [Integer]
    attr_accessor :total

    # The total number of items available to return.
    # @return [Array[ArtistObject]]
    attr_accessor :items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['href'] = 'href'
      @_hash['limit'] = 'limit'
      @_hash['mnext'] = 'next'
      @_hash['cursors'] = 'cursors'
      @_hash['total'] = 'total'
      @_hash['items'] = 'items'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        href
        limit
        mnext
        cursors
        total
        items
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(href = SKIP, limit = SKIP, mnext = SKIP, cursors = SKIP,
                   total = SKIP, items = SKIP)
      @href = href unless href == SKIP
      @limit = limit unless limit == SKIP
      @mnext = mnext unless mnext == SKIP
      @cursors = cursors unless cursors == SKIP
      @total = total unless total == SKIP
      @items = items unless items == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      href = hash.key?('href') ? hash['href'] : SKIP
      limit = hash.key?('limit') ? hash['limit'] : SKIP
      mnext = hash.key?('next') ? hash['next'] : SKIP
      cursors = CursorObject.from_hash(hash['cursors']) if hash['cursors']
      total = hash.key?('total') ? hash['total'] : SKIP
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (ArtistObject.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')

      # Create object from extracted values.
      CursorPagingSimplifiedArtistObject.new(href,
                                             limit,
                                             mnext,
                                             cursors,
                                             total,
                                             items)
    end
  end
end
