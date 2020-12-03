require './lib/password_checker'

describe PasswordChecker do
  it "loads the .txt file to an array of strings for each line" do
    report = PasswordChecker.new("./lib/input.txt")
    expect(report.data_file).to include("2-5 z: zzztvz")
  end
end
 
  
