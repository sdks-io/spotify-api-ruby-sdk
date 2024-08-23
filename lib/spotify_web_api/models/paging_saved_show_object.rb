# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # PagingSavedShowObject Model.
  class PagingSavedShowObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A link to the Web API endpoint returning the full result of the request
    # @return [String]
    attr_accessor :href

    # The maximum number of items in the response (as set in the query or by
    # default).
    # @return [Integer]
    attr_accessor :limit

    # URL to the next page of items. ( `null` if none)
    # @return [String]
    attr_accessor :mnext

    # The offset of the items returned (as set in the query or by default)
    # @return [Integer]
    attr_accessor :offset

    # URL to the previous page of items. ( `null` if none)
    # @return [String]
    attr_accessor :previous

    # The total number of items available to return.
    # @return [Integer]
    attr_accessor :total

    # The total number of items available to return.
    # @return [Array[SavedShowObject]]
    attr_accessor :items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['href'] = 'href'
      @_hash['limit'] = 'limit'
      @_hash['mnext'] = 'next'
      @_hash['offset'] = 'offset'
      @_hash['previous'] = 'previous'
      @_hash['total'] = 'total'
      @_hash['items'] = 'items'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        mnext
        previous
      ]
    end

    def initialize(href = nil, limit = nil, mnext = nil, offset = nil,
                   previous = nil, total = nil, items = nil)
      @href = href
      @limit = limit
      @mnext = mnext
      @offset = offset
      @previous = previous
      @total = total
      @items = items
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      href = hash.key?('href') ? hash['href'] : nil
      limit = hash.key?('limit') ? hash['limit'] : nil
      mnext = hash.key?('next') ? hash['next'] : nil
      offset = hash.key?('offset') ? hash['offset'] : nil
      previous = hash.key?('previous') ? hash['previous'] : nil
      total = hash.key?('total') ? hash['total'] : nil
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (SavedShowObject.from_hash(structure) if structure)
        end
      end

      items = nil unless hash.key?('items')

      # Create object from extracted values.
      PagingSavedShowObject.new(href,
                                limit,
                                mnext,
                                offset,
                                previous,
                                total,
                                items)
    end
  end
end
