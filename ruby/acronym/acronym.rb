class Acronym
  def self.abbreviate(string)
    words = string.split(/\s|-/).delete_if { |word| word.to_s.empty? }
    words.map! { |w| w[0] }.join.upcase
  end
end
