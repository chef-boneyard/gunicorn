require 'spec_helper'

describe 'gunicorn::default' do
  let(:gunicorn_virtualenv) { '/srv/gunicorn/test' }

  cached(:chef_run) do
    ChefSpec::ServerRunner.new do |node|
      node.set['gunicorn']['virtualenv'] = gunicorn_virtualenv
    end.converge(described_recipe)
  end

  it 'should install gunicorn using the proper virtualenv' do
    expect(chef_run).to install_gunicorn('gunicorn')
      .with_virtualenv(gunicorn_virtualenv)
  end
end
