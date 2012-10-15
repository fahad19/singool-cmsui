# Header
Navbar = require 'singool/views/navbar'
window.navbarView = new Navbar
  el: $ 'header'
  links: [
  	{title: 'Dashboard', url: '#!/'}
  	{title: 'Blocks', url: '#!/blocks'}
  	{title: 'Users', url: '#!/users'}
  ]
window.navbarView.render()


# Footer
Footer = require 'singool/views/footer'
window.footerView = new Footer
  el: $ 'footer'
window.footerView.render()


# Router
AppRouter = require 'config/router'
window.appRouter = new AppRouter