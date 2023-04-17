class GrammarStats
  def initialize
    @successful_check = []
  end

  def check(sentence)
    if sentence == ''
      @successful_check << false
      false
    elsif sentence[0] == sentence[0].upcase && sentence[-1] == '.'
      @successful_check << true
      true
    elsif sentence[0] == sentence[0].upcase && sentence[-1] == '?'
      @successful_check << true
      true
    elsif sentence[0] == sentence[0].upcase && sentence[-1] == '!'
      @successful_check << true
      true
    else 
      @successful_check << false
      false
    end
  end

  def percentage_good
    total = 0
    true_sentence  = 0

    @successful_check.each do |item| 
      if item == true
        total += 1
        true_sentence += 1
      else 
        total += 1
      end
    end

    percentage = (true_sentence / total.to_f) * 100
    percentage.to_i
  end
end