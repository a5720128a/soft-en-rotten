var MovieListFilter = {
  filterg: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.g').show();
    } else {
      $('tr.g').hide();
    }
  },
  filterpg: function () {
    if ($(this).is(':checked')) {
      $('tr.pg').show();
    } else {
      $('tr.pg').hide();
    }
  },
  filterpg13: function () {
    if ($(filterpg13).is(':checked')) {
      $('tr.pg13').show();
    } else {
      $('tr.pg13').hide();
    }
  },
  filterr: function () {
    if ($(filterr).is(':checked')) {
      $('tr.r').show();
    } else {
      $('tr.r').hide();
    }
  },
  filternc17: function () {
    if ($(filternc17).is(':checked')) {
      $('tr.nc17').show();
    } else {
      $('tr.nc17').hide();
    }
  },
  setup: function() {
    // construct checkbox with label
    var labelAndCheckbox =
      $('<label for="filter">G</label>' +
        '<input type="checkbox" id="filterg" checked/>'+
        '<label for="filter">PG</label>' +
        '<input type="checkbox" id="filterpg" checked/>'+
        '<label for="filter">PG-13</label>' +
        '<input type="checkbox" id="filterpg13" checked/>'+
        '<label for="filter">R</label>' +
        '<input type="checkbox" id="filterr" checked/>'+
        '<label for="filter">NC-17</label>' +
        '<input type="checkbox" id="filternc17" checked/>');
    labelAndCheckbox.insertBefore('#movies');
    $('#filterg').change(MovieListFilter.filterg);
    $('#filterpg').change(MovieListFilter.filterpg);
    $('#filterpg13').change(MovieListFilter.filterpg13);
    $('#filterr').change(MovieListFilter.filterr);
    $('#filternc17').change(MovieListFilter.filternc17);
  }
}
$(MovieListFilter.setup); // run setup function when document ready