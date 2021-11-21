require '../client'

puts "Which pokemon do you want to see?"
pokemon_to_get = gets.chomp
response = Client.get_pokemon(pokemon_to_get)

class Pokemon
  def self.can_learn_move?(move, game)

  end

  def self.get_stats(pokemon_json)
    response_stats = pokemon_json["stats"]
    formatted_stats = {"bst" => 0}
    response_stats.each do |stat_hash|
      stat_type = stat_hash["stat"]["name"]
      stat_value = stat_hash["base_stat"]
      formatted_stats[stat_type] = stat_value
      formatted_stats["bst"] += stat_value
    end
    formatted_stats
  end
end

puts "#{pokemon_to_get} has the following stats: #{Pokemon.get_stats(response)}"
