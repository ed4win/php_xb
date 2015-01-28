<form method="post">
	<table class="dv-table" style="width:100%;background:#fafafa;padding:5px;margin-top:5px;">
		<tr>
			<td>机构名称</td>
			<td><input name="comcode" class="easyui-validatebox"  readonly></input></td>
			<td>使用性质</td>
			<td><input name="carkindcode" class="easyui-validatebox" ></input></td>
			<td>车型</td>
			<td><input name="brandname" class="easyui-validatebox"  readonly></input></td>
		</tr>
		<tr>
			<td>身份证号码</td>
			<td><input name="tbidnumber" class="easyui-validatebox"  readonly></input></td>
			<td>终保日期</td>
			<td><input name="enddate" class="easyui-validatebox"  readonly></input></td>
			<td>有效号码</td>
			<td><select name="phoneflag" class="easyui-validatebox">
  			<option value="0">初始</option>
  			<option value="1">CIF有效</option>
  			<option value="2">理赔</option>
  			<option value="3">匹配电话1</option>
  			<option value="4">全无效</option>
			</select></td>
		</tr>
	</table>
	<div style="padding:5px 0;text-align:right;padding-right:30px">
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="saveItem(<?php echo $_REQUEST['index'];?>)">Save</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" plain="true" onclick="cancelItem(<?php echo $_REQUEST['index'];?>)">Cancel</a>
	</div>
</form>

