require 'httparty'
require 'json'
require 'pry'

class Client
  include HTTParty
  base_uri 'https://pokeapi.co'

  def self.api_key
    ''
  end

  def self.base_path
    '/api/v2/'
  end

  def self.get_pokemon(pokemon_name, options = {})
    url = "#{base_path}/pokemon/#{pokemon_name}"
    get(url, options)
  end
end
