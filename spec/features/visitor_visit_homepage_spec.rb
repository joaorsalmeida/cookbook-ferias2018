require 'rails_helper'

feature 'Visitor visit homepage' do
  scenario 'successfully' do
    #  criacao de dados

    #  navegacao
    visit root_path

    # expectativas
    expect(page).to have_css('h1', text: 'CookBook')
    expect(page).to have_css('p', text: 'Bem-vindo ao maior livro de receitas online')
  end
end
