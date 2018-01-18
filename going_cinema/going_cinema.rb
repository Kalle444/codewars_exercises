require 'pry-byebug'


class MovieDeal

  def initialize(card, ticket, perc)
    @card = card
    @ticket_org = ticket
    @perc = perc
  end

  def movie
    times = 0
    deal_cost = @card
    ind_cost = 0
    ticket_deal = @ticket_org
    until deal_cost.ceil < ind_cost
      times += 1
      deal_cost += ticket_deal * @perc
      ind_cost += @ticket_org
      ticket_deal = ticket_deal * @perc
    end
    times
  end
end



