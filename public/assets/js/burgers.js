// Make sure we wait to attach our handlers until the DOM is fully loaded.
$(function() {
  $(".change-ordered").on("click", function(event) {
    var id = $(this).data("id");
    var newOrdered = $(this).data("newordered");

    var newOrderedState = {
      ordered: newOrdered
    };

    // Send the PUT request.
    $.ajax("/api/burgers/" + id, {
      type: "PUT",
      data: newOrderedState
    }).then(
      function() {
        console.log("changed eaten to", newOrdered);
        // Reload the page to get the updated list
        location.reload();
      }
    );
  });

  $(".create-form").on("submit", function(event) {
    // Make sure to preventDefault on a submit event.
    event.preventDefault();

    var newBurger = {
      burger_name: $("#burger_name").val().trim(),
      ordered: $("[name=ordered]:checked").val().trim()
    };

    // Send the POST request.
    $.ajax("/api/burgers", {
      type: "POST",
      data: newBurger
    }).then(
      function() {
        console.log("created new burger: ", newBurger);
        // Reload the page to get the updated list
        location.reload();
      }
    );
  });
});


      // order_list: false,
      // gorgonzola: $("[name=gorgonzola]:checked").val(),
      // bacon: $("[name=bacon]:checked").val(),
      // pear: $("[name=pear]:checked").val(),
      // pineapples: $("[name=bacon]:checked").val(),
      // spinach: $("[name=spinach]:checked").val(),
      // egg: $("[name=egg]:checked").val()
    