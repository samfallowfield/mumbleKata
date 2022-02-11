class MumblePhrase

    def make_mumble(input)
    # 'ab'
    mumbled_array = input.split('').map.with_index{|element, index| element * index+=1 }
    # ['a', 'bb']
    
    with_uppercase = mumbled_array.map{|element| element.capitalize}
    # ['A', 'Bb']

    with_uppercase.join('-')
    # 'A-Bb'

    end

end