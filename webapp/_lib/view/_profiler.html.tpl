{if $profiler}
<div style="margin:10px">


Profiling enabled:<br />
{$profiler->getTotalTime()} seconds<br />
{$profiler->total_queries} queries

<table style="border-spacing: 5px;">
<tr>
    <th>Time</th>
    <th>Rows</th>
    <th>Action</th>
    <th>Class and method</th>
</tr>

{foreach from=$profiler->getProfileItems() key=tid item=t name=foo}
<tr>
    <td style="vertical-align: top;">{if $t.time > 0.5}<span style="color:red">{/if}{$t.time}s{if $t.time > 0.5}</span>{/if}</td>
    <td style="vertical-align: top;text-align:center;">{if $t.is_query}{$t.num_rows}{/if}</td>
    <td>{$t.action}</td>
    <td style="vertical-align: top;">{$t.dao_method}</td>
</tr>
{/foreach}
</table>
</div>
{/if}