module ApplicationHelper
  include TvshowHelper

  def surrounding_interval(min, current, max)
    if !(min.is_a? Integer)    ||
      !(current.is_a? Integer) ||
      !(max.is_a? Integer)     ||
      !(min <= current)        ||
      !(max >= current)

      return nil
    end

    if max-min > 9
      set_length = 10
    else
      set_length = max - min + 1
    end

    set = [current]
    place = 'left'

    while(set.length < set_length)
      if place == 'right' && set.last < max
        set << set.last + 1
      elsif place == 'left' && set.first > min
        set.unshift(set.first - 1)
      end

      if place == 'right'
        place = 'left'
      else
        place = 'right'
      end
    end

    set
  end
end
