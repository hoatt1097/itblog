
require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Jquery
import jquery from 'jquery';
window.$ = window.jquery = jquery;
window.jQuery = window.jquery = jquery;

// Common Lib
import 'bootstrap';
import "@fortawesome/fontawesome-free/js/all";


//Theme
require('admin-lte');
require.context('admin-lte/dist/img', true);


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

