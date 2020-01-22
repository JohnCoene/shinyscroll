function scroll_to(id) {
  document.querySelector('#' + id).scrollIntoView({behavior: 'smooth'});
}

Shiny.addCustomMessageHandler('scrolly-scroll', function(opts) {
  scroll_to(opts.id);
});