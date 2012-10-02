module Magemto
  module REST
    class OAuth
      attr_accessor :name, :key, :secret, :url
      attr_writer :oauth

      def initialize(name, key, secret, url)
        @name, @key, @secret, @url = name, key, secret, url
        @oauth = OAuth::Consumer.new(@key, @secret, @url)
      end
    end
  end
end
