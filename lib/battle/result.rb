require './lib/array.rb'

module Battle
  SCORING = { victory: 3, draw: 0, defeat: 0 }
  ATTRIBUTES = [ :points, :kills, :killed ]
  class Result
    attr_accessor :data

    def initialize(params)
      @data = params.to_result
    end

    def self.generate(params)
      new(params)
    end

    def calculate!
      data.keys.combination(2).map do |teams|
        # team1 scores
        score1 = rand(0..5)
        data[teams[0]][:kills] += score1
        data[teams[1]][:killed] += score1

        # team2 scores
        score2 = rand(0..5)
        data[teams[1]][:kills] += score2
        data[teams[0]][:killed] += score2

        # calculate points
        data[teams[0]][:points] += SCORING[:victory] if score1 > score2
        data[teams[1]][:points] += SCORING[:victory] if score2 > score1
        if score1 == score2
          data[teams[0]][:points] += SCORING[:draw]
          data[teams[1]][:points] += SCORING[:draw]
        end
      end
    end
  end
end
