class FlipBook
  def initialize(content)
    @content = content
    @separated = [""]
  end

  def reorganize
    @content.each_char do |c|
      if c == " "
        @separated.push("")
      else
        @separated.last << c
      end
    end
    @content = @separated.reverse!.join(" ")
  end
end
