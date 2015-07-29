require_relative 'test_helper'
require_relative '../lib/invoice_repository.rb'

class InvoiceRepositoryTest < Minitest::Test
  def test_it_is_a_repository
    invoice_repo = InvoiceRepository.new "./fixtures/invoices_head.csv"

    assert_kind_of Repository, invoice_repo
  end
end