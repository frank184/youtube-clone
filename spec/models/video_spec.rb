require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'db' do
    context 'columns' do
      it { is_expected.to have_db_column(:title).of_type(:string) }
      it { is_expected.to have_db_column(:description).of_type(:text) }
      it { is_expected.to have_db_column(:file).of_type(:string) }
    end
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:file) }
  end
end
