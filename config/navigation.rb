SimpleNavigation::Configuration.run do |navigation|
 navigation.items do |primary|
    primary.item :music, 'Music', '../tests#index'
    primary.item :dvds, 'Dvds', '../tests#index', :split => true do |dvds|
      dvds.item :action, 'Action', '../tests#index'
      dvds.item :drama, 'Drama', '../tests#index'
    end
    primary.item :books, 'Books', :icon => ['icon-book', 'icon-white'] do |books|
      books.item :fiction, 'Fiction', '../tests#index'
      books.item :history, 'History', '../tests#index'
    end
    primary.dom_class = 'nav navbar-nav'
  end
end