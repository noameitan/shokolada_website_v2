<!-- MODULE st banner column -->
{if isset($group)}
    {foreach $group as $banner}
        {if isset($banner['banner'])}
            {assign var=banner_count value=count($layout[$banner['layout']])}
            <div id="banner_{$banner.id_st_banner_group}" class="banner_block mar_b2 {if $banner['hide_on_mobile']} hidden-phone {/if}">
                {for $foo=0 to $banner_count-1}
                    <div class="{if $foo<$banner_count-1} mar_b1 {/if} text-center">
                        {if isset($banner['banner'][$foo])}
                            {if $banner['banner'][$foo]['url']}
                                <a href="{$banner['banner'][$foo]['url']|escape:'html'}" target="{if $banner['banner'][$foo]['new_window']}_blank{else}_self{/if}" title="{$banner['banner'][$foo]['title']|escape:'htmlall':'UTF-8'}">
                            {/if}
                            <img class="{if $banner['hover_effect']} hover_effect {/if}" src="{if (isset($banner['banner'][$foo]['image_multi_lang']) && $banner['banner'][$foo]['image_multi_lang'])}{$banner['banner'][$foo]['image_multi_lang']}{else}{$banner['banner'][$foo]['image']}{/if}" alt="{$banner['banner'][$foo]['title']|escape:'htmlall':'UTF-8'}" />
                            {if $banner['banner'][$foo]['url']}
                                </a>
                            {/if}
                        {/if}
                    </div>
                {/for}
            </div>
        {/if}
    {/foreach}
{/if}
<!--/ MODULE st banner column-->