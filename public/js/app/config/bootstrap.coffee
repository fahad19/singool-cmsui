# Header
Navbar = require 'singool/views/navbar'
window.navbarView = new Navbar
  el: $ 'header'
  brand: 'Croogo'
  links: []
window.navbarView.render()


# Footer
Footer = require 'singool/views/footer'
window.footerView = new Footer
  el: $ 'footer'
window.footerView.render()


# Router
AppRouter = require 'config/router'
window.appRouter = new AppRouter