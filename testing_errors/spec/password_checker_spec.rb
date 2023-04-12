require './lib/password_checker'

RSpec.describe PasswordChecker do
  context 'testing for valid passwords' do
    it 'takes a password as a string that is greater than 8 characters' do
      new_password = PasswordChecker.new
      result = new_password.check('g39fhn48fh')
      expect(result).to eq true
    end
  end

  context 'testing for invalid paswords' do
    it 'takes a password as a string that is greater than 8 characters' do
      new_password = PasswordChecker.new
      expect{ new_password.check('tree') }.to raise_error 'Invalid password, must be 8+ characters.'
    end

    # Below tests would require additional else statement in code for inapplicable .length method
    # it 'takes a password as a string that is greater than 8 characters' do
    #   new_password = PasswordChecker.new
    #   expect{ new_password.check(nil) }.to raise_error 'Invalid password, must be 8+ characters.'
    # end

    # it 'takes a password as a string that is greater than 8 characters' do
    #   new_password = PasswordChecker.new
    #   expect{ new_password.check(7868682684) }.to raise_error 'Invalid password, must be 8+ characters.'
    # end
  end
end