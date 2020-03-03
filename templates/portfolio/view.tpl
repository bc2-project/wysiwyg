<div class="container">
    {if $options.heading || $options.heading_secondary}
    <h1 class="my-4">{if $options.heading}{$options.heading}{/if}
        {if $options.heading_secondary}<small>{$options.heading_secondary}</small>{/if}
    </h1>
    {/if}
    {if $options.columns}{$cols = $options.columns}{else}{$cols = count($content)}{/if}
    <div class="row">
    {for i 1 $cols}
        <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <div class="card-header">
                <a href="#"><img class="card-img-top" src="{$columns.$i.card_image}" alt=""></a>
            </div>
            <div class="card-body">
              <h4 class="card-title">
                {$columns.$i.card_title}
              </h4>
              <p class="card-text">
                  {$columns.$i.content}
              </p>
            </div>
          </div>
        </div>
    {/for}
    </div>
</div>
