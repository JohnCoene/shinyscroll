function scroll_to(id, block) {
  document.querySelector('#' + id).scrollIntoView({block: block, behavior: 'smooth'});
}

Shiny.addCustomMessageHandler('scrolly-scroll', function(opts) {
  scroll_to(opts.id, opts.block);
});
