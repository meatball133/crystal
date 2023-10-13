module ColossalCoaster
  def self.add_to_queue(express_queue, normal_queue, express, person_name)
    if express
      express_queue << person_name
      express_queue
    else
      normal_queue << person_name
      normal_queue
    end
  end

  def self.find_my_friend(queue, friend_name)
    queue.index(friend_name)
  end

  def self.add_with_friends(queue, person_name, friend_name)
    friend_index = ColossalCoaster.find_my_friend(queue, friend_name)
    queue.insert(friend_index, person_name)
    queue
  end

  def self.remove_from_queue(queue, person_name)
    queue.delete(person_name)
    queue
  end
    
  def self.sorted_queue(queue)
    queue.sort
  end
end