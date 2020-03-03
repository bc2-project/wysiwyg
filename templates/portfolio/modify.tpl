<?php
    \CAT\Helper\Assets::addJS('modules/lib_javascript/plugins/imagepicker/image-picker.min.js','header');
    \CAT\Helper\Assets::addCSS('modules/lib_javascript/plugins/imagepicker/image-picker.css');
    $files  = \CAT\Helper\Directory::findFiles(
        \CAT\Base::user()->getHomeFolder(),
        array(
            'extensions' => \CAT\Helper\Media::getAllowedFileSuffixes('image/*'),
            'recurse'    => true,
        )
    );
    $images = array();
    $options = array();
    foreach($files as $f) {
        $images[] = \CAT\Helper\Validate::path2uri($f);
    }
    if(count($images)>0) {
        foreach($images as $img) {
            $options[] = '<option data-img-src="'.$img.'" data-img-alt="'.$img.'" value="'.$img.'">'.$img.'</option>';
        }
    }
?>

{if $options.columns}{$cols=$options.columns}{else}{$cols=count($columns)}{/if}
<section class="mod-wysiwyg-columns">
{for i 1 $cols}
    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
            <div class="card-header">
                <a href="#modWYSIWYGModalWindow_{$section_id}" class="modWYSIWYGimage">
                {if ! $columns.$i.card_image}
                    <i class="fa fa-fw fa-image" title="{translate('Click here to add an image')}"></i>
                {else}
                    <img class="card-img-top" src="{$columns.$i.card_image}" alt="">
                {/if}
                </a>
            </div>
            <div class="card-body">
                <h4 class="card-title" data-option="card_title" data-col="{$i}" data-section="{$section_id}" contenteditable="true">
                    {if ! $columns.$i.card_title}<small class="text-muted font-italic">{translate('Click to enter a title')}</small>{else}{$columns.$i.card_title}{/if}
                </h4>
                <p class="card-text" contenteditable="true" data-col="{$i+1}" data-content="true">
                    {if ! $columns.$i.content}<small class="text-muted font-italic">{translate('Click to enter content')}</small>{else}{$columns.$i.content}{/if}
                </p>
            </div>
        </div>
    </div>
    <div id="modWYSIWYGModalWindow_{$section_id}" class="modWYSIWYGModalWindow">
        <div>
            <div class="modalHeader">
                <h3>{translate('Please choose an image')}</h3>
                <a href="#close" title="Close" class="close">X</a>
            </div>
            <div class="modalContent">
                <select class="imagepicker form-control">
                    <?php echo implode("\n",$options); ?>
                </select>
                <label>{translate('Link image to')}:</label>
                <input type="text" />
            </div>
            <div class="modalFooter">
                <a href="#cancel" title="Cancel" class="cancel">{translate('Cancel')}</a>
                <a href="#ok" title="Ok" class="ok">{translate('Save')}</a>
                <div class="clear"></div>
            </div>
        </div>
    </div>
{/for}
</section>

