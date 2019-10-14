# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
  $('#shops').infiniteScroll
    path: "nav.pagination a[rel=next]"
    append: ".shop"
    history: false
    prefill: true
    status: '.page-load-status'