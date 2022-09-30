require 'password_checker'

RSpec.describe PasswordChecker do
    it "returns true if longer than 8 characters" do
        password = PasswordChecker.new
        expect(password.check("password1234")).to eq true
    end

    it "returns an error if less than 8 characters" do
        password = PasswordChecker.new
        expect{password.check("pass")}.to raise_error "Invalid password, must be 8+ characters."
    end
end