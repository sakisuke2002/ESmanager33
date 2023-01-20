// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require('jquery')

$(function(){
    $("#input-text_1").on("keyup", function() {
      let countNum1 = String($(this).val().length);
      $("#counter").text(countNum1 + "文字");
    });
   });

$(function(){
    $("#input-text_2").on("keyup", function() {
      let countNum2= String($(this).val().length);
      $("#counter").text(countNum2 + "文字");
    });
   });

$(function(){
    $("#input-text_3").on("keyup", function() {
      let countNum = String($(this).val().length);
      $("#counter").text(countNum + "文字");
    });
   });

$(function(){
    $("#input-text_4").on("keyup", function() {
      let countNum = String($(this).val().length);
      $("#counter").text(countNum + "文字");
    });
   });

$(function(){
    $("#input-text_5").on("keyup", function() {
      let countNum = String($(this).val().length);
      $("#counter").text(countNum + "文字");
    });
   });
