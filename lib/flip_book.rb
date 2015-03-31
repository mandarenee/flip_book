class FlipBook
  def initialize(content)
    @content = content
    @separated = [""]
  end

  def reorganize
    @content.each_char { |c| c == (" ") ? @separated.push("") : @separated.last << c }
    @content = @separated.reverse!.join(" ")
  end
end
