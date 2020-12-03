class PasswordChecker

  attr_reader :data_file

  def initialize(file_path)
    @data = File.open(file_path)
    @data_file = @data.readlines.map(&:chomp)
  end

end