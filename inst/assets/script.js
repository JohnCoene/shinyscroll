function scroll_to(id, block) {
  document.querySelector('#' + id).scrollIntoView({behavior: 'smooth', block: block});
}

Shiny.addCustomMessageHandler('scrolly-scroll', function(opts) {
  scroll_to(opts.id, opts.block);
});