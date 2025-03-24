module ProfilesHelper

  def rank_class_for(index)
    case index
      when 0 then 'first-place'
      when 1 then 'second-place'
      when 2 then 'third-place'
      else ''
      end
  end

  def badge_count_for(user)
    user.reviews
          .joins(task: :world)
          .group("worlds.id")
          .count
          .values
          .count(5)
  end
end
