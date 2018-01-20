require 'pry-byebug'


class FindChildren

  def initialize(participants)
    @participants = participants
  end

  def finding_children
    found_participants = []
    participants = @participants.downcase.split(/\W/).join.chars.sort
    participants.each do |participant|
      found_participants << ((found_participants.include? participant.upcase) ? participant : participant.upcase)
    end
    found_participants.join
  end

end

