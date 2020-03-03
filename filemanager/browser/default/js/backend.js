$(function() {
    var oListManager = new Object();
    var oConnector = new Object() ;

    oConnector.Init = function() {
        oConnector.CurrentFolder = '/';
    };

    oConnector.LoadFolder = function(sFolder) {
        $.ajax({
            type    : 'GET',
            url     : CAT_SITE_URL+'/modules/wysiwyg/filemanager/browser.php',
            dataType: 'json',
            data    : { folder: sFolder },
            success : function(data, status) {
console.log(data);
            }
        });
    };


    oListManager.Init = function() {
    }

    oListManager.Init();
    oConnector.Init();

	oConnector.LoadFolder('/');

    $('.folder').unbind('click').on('click', function() {
console.log($(this).data('id'));
        var f = $(this).data('id');
        oConnector.LoadFolder(f);
    });
});

