require './lib/password_checker'

describe PasswordChecker do
  let(:report) { PasswordChecker.new("./lib/input.txt") }

  it "loads the .txt file to an array of strings for each line" do
    expect(report.data_file).to include("2-5 z: zzztvz")
  end

  describe "#formatter" do
    it "returns a nice clean array" do
    passwords = ["2-5 z: zzztvz"]
    expect(report.formatter(passwords)).to eq([["2","5","z","zzztvz"]])
    end

    it "returns a nice clean array for 2 passwords too" do
      passwords = ["2-5 z: zzztvz", "2-8 d: pddzddkdvqgxndd"]
      expect(report.formatter(passwords)).to eq([["2","5","z","zzztvz"],["2", "8", "d", "pddzddkdvqgxndd"]])
      end
  end

  describe "#check" do
    it 'returns an array from the string input' do
      passwords = ["2-5 z: zzztvz"]
      expect(report.check(passwords)).to eq 1
    end

    it 'returns an array from the string input' do
      passwords = ["2-5 z: zzztvz"]
      expect(report.check(passwords)).to eq 1
    end
  end
end
 
  
