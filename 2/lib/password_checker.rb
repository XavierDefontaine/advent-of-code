class PasswordChecker

  attr_reader :data_file

  def initialize(file_path)
    @file = File.open(file_path)
    @data_file = @file.readlines.map(&:chomp)
  end

  def formatter(data_file)
    data_file.map { |array|
     array.split(/\W/).reject { |c| c.empty? }
    }
  end

  def check(data_file)
    formatted_passwords = formatter(data_file)
    p formatted_passwords.map { |password|
    password = password[3].match?(/#{password[2]}{#{password[0]},#{password[1]}}/)
    }.count(true)
  end
 

end