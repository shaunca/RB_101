
def staggered_case(str)
  result = str.chars

  result.map!.with_index do |character, index|
    index.odd? ? character.downcase : character.upcase
  end.join
end

a = 'I Love Launch School!'
p staggered_case(a)
p a
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case(str, first_letter = true)
  result = str.chars
  letters_arr = (('a'..'z').to_a + ('A'..'Z').to_a).flatten
  counter = 0
  counter = 1 if first_letter == true

  result.map! do |char|
    if letters_arr.include?(char)
      counter.odd? ? char.upcase! : char.downcase!
      counter += 1
    else
      next char
    end
    char
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'