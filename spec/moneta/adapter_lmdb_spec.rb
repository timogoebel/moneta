# coding: binary
# Generated by generate-specs
require 'helper'

describe_moneta "adapter_lmdb" do
  def features
    [:create, :increment]
  end

  def new_store
    Moneta::Adapters::LMDB.new(:dir => File.join(make_tempdir, "adapter_lmdb"))
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'create'
  it_should_behave_like 'features'
  it_should_behave_like 'increment'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_large'
end
