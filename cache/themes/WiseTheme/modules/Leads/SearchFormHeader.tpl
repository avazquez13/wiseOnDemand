
<div class="clear"></div>
<div class='listViewBody'>
<script type="text/javascript" src="{sugar_getjspath file='include/javascript/popup_parent_helper.js'}"></script>
{$TABS}
<br />
<b>Warning</b>:  Use of undefined constant saved_views - assumed 'saved_views' (this will throw an Error in a future version of PHP) in <b>C:\xampp\htdocs\wiseOnDemand\cache\smarty\templates_c\%%EE^EE4^EE47D4F0%%header.tpl.php</b> on line <b>47</b><br />
{literal}
<script>
function submitOnEnter(e)
{
    var characterCode = (e && e.which) ? e.which : event.keyCode;
    if (characterCode == 13 && event.target.type !== "textarea") {
        document.getElementById('search_form').submit();
        return false;
    } else {
        return true;
    }
}
</script>
{/literal}

{if $searchFormInPopup}
    {include file='include/SearchForm/tpls/headerPopup.tpl'}
{/if}

<form name='search_form' id='search_form' class='search_form{if !$searchFormInPopup} non-popup{/if}' method='post' action='index.php?module={$module}&action={$action}' onkeydown='submitOnEnter(event);'>
<input type='hidden' name='searchFormTab' value='{$displayView}'/>
<input type='hidden' name='module' value='{$module}'/>
<input type='hidden' name='action' value='{$action}'/> 
<input type='hidden' name='query' value='true'/>
{foreach name=tabIteration from=$TAB_ARRAY key=tabkey item=tabData}
<div id='{$module}{$tabData.name}_searchSearchForm' style='{$tabData.displayDiv}' class="edit view search {$tabData.name}">{if $tabData.displayDiv}{else}{$return_txt}{/if}</div>
{/foreach}
<div id='{$module}saved_viewsSearchForm' style='display: none;'>{$saved_views_txt}</div>