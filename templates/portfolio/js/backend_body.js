(function($) {
    var _this;
    var _src;

    $('.modWYSIWYGimage').on('click', function() {
        _this = $(this);
    });
    $("select.imagepicker").on('change',function() {
        _src = $(this).find("option:selected").val();
    });
    $('.modWYSIWYGModalWindow .ok').on('click', function() {
        if(typeof _src == "undefined") {
            _src = $("select.imagepicker").find("option:selected").val();
        }
        if(typeof _src != "undefined" && _src.length) {
            _this.html('<img class="card-img-top" src="'+_src+'" alt="">');
        }
    });

    if(typeof window.imagepicker == "undefined") {
        $.getScript(CAT_URL+"/modules/lib_javascript/plugins/imagepicker/image-picker.min.js", function(data,textStatus,jqxhr) {
            $("select.imagepicker").imagepicker({
                clicked: function(select, option, event) {
                    console.log("imagepicker clicked event");
                    _src = $(option.target).attr('src');
                }
            });
        });
    }
})(jQuery);