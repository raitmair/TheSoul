# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#/   Mayor.create(name: 'Emanuel', city: cities.first)

#create categories for articles
Category.find_or_create_by!(:name => 'index')
Category.find_or_create_by!(:name => 'masaze')
Category.find_or_create_by!(:name => 'pohyb')
Category.find_or_create_by!(:name => 'vzyiva')
Category.find_or_create_by!(:name => 'kontakt')
Category.find_or_create_by!(:name => 'podminky')
Category.find_or_create_by!(:name => 'certifikaty')
Category.find_or_create_by!(:name => 'partneri')

#create categories for pricelist
PriceCategory.find_or_create_by!(:name => 'Masaze')
PriceCategory.find_or_create_by!(:name => 'Trening')
PriceCategory.find_or_create_by!(:name => 'Vyziva')

#create articles
Article.destroy_all
Article.find_or_create_by!(:title => 'The Soul', :text => 'Každé tělo vypráví svůj příběh. Zrcadlí naše koníčky, zvyky, práci, vztahy, štěstí i bolest, stres nebo smutek. Make-up ani větší velikost oblečení nás před námi samotnými neschová. Zázrak se nekoná.
Chcete-li se opět cítit skvěle, být fit a zdravě, aktivně a funkčně žít, hýčkat a být hýčkáni …<br>
…vítejte v TheSoul.<br>
TheSoul je spojením <strong>relaxace</strong>, aktivního pohybu a vyváženého stravování.<br>
TheSoul je Vaším osobním masérem terapeutem, trenérem i výživovým poradcem.', :is_published => 't', :category_id => 1)
