@network = {
  'Min'     => ['William', 'Jayden', 'Omar'],
  'William' => ['Min', 'Noam'],
  'Jayden'  => ['Min', 'Amelia', 'Ren', 'Noam'],
  'Ren'     => ['Jayden', 'Omar'],
  'Amelia'  => ['Jayden', 'Adam', 'Miguel'],
  'Adam'    => ['Amelia', 'Miguel', 'Sofia', 'Lucas'],
  'Miguel'  => ['Amelia', 'Adam', 'Liam', 'Nathan'],
  'Noam'    => ['Nathan', 'Jayden', 'William'],
  'Omar'    => ['Ren', 'Min', 'Scott']
}

def deep_copy(x)
  Marshal.load(Marshal.dump(x))
end

def network_path(path_start, path_end)
  possible_paths = [[path_start]]
  while true
    new_possible_paths = []
    possible_paths.each do |possible_path|
      @network[possible_path[-1]].each do |next_step|
        if next_step == path_end
          return possible_path + [next_step]
        end
        if @network[next_step]
          new_possible_paths << (deep_copy(possible_path) + [next_step])
        end
      end
    end
    possible_paths = deep_copy(new_possible_paths)
    # p possible_paths
  end
end

p network_path('Jayden', 'Adam')  # => ["Jayden", "Amelia", "Adam"]
p network_path('Noam', 'Sofia')  # => ["Noam", "Jayden", "Amelia", "Adam", "Sofia"]