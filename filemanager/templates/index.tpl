<html lang="DE">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{translate('Filemanager')}</title>
  <?php echo \CAT\Helper\Assets::renderCSS(); echo \CAT\Helper\Assets::renderJS('header'); ?>
</head>
<body>
    <div class="container filemng mt-5">
        <div class="card">
            <div class="card-header">
                <img height="32" alt="" src="templates/images/FolderOpened32.png" width="32">
                <span id="tdName" class="ActualFolder">/</span>
            </div>
            <div class="card-body pb-filemng-panel-body">
                <div class="row">
                    <div class="col-sm-3 col-md-3 FolderArea">
                        <a href="#" onclick="OpenFolder('/{$f}/');return false;">
                            <img alt="" src="templates/images/FolderUp.png" width="20" height="20" border="0">
                        </a><br />
                    {foreach $folders f}
                        <a href="#" onclick="OpenFolder('/{$f}/');return false;">
                            <img alt="" src="templates/images/Folder.png" width="20" height="20" border="0">
                        </a>
                        <a href="#" onclick="OpenFolder('/{$f}/');return false;">{$f}</a><br />
                    {/foreach}
                    </div>
                    <div class="col-sm-9 col-md-9 FileArea">
                    {foreach $folders f}
                        <div class="file" title="{$f}">
                            <div>
                                <a href="#" class="folder" data-id="{$f}">
                                    <img src="templates/images/FolderBig.png" />
                                </a>
                            </div><br />
                            <div class="filename">
                                <a href="#" onclick="OpenFolder('/{$f}/');return false;">{$f}</a>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php echo \CAT\Helper\Assets::renderJS('footer'); ?>
</body>
</html>