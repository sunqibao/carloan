<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷录入</title>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#user").click(function() {
		$("#ifrom").load('branchcompany/userInfo.jsp');
	})
	$("#car").click(function() {
		$("#ifrom").load('branchcompany/carInfo.jsp');
	})
	$("#credit").click(function() {
		$("#ifrom").load('branchcompany/userCreditInfo.jsp');
	})
	$("#apply").click(function(){
		$("#myModal1").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	});
	$("#backout").click(function(){
		$("#myModal2").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	});
	
	//在show.bs.modal事件中调用centerModals函数
	$('#myModal1').on('show.bs.modal', centerModals);
	//在show.bs.modal事件中调用centerModals函数
	$('#myModal2').on('show.bs.modal', centerModals);
	//页面大小变化是仍然保证模态框水平垂直居中
	$(window).on('resize', centerModals);
});

//设置模态框的水平垂直方向的位置
function centerModals() {   
	　　$('#myModal1').each(function(i) {   
	　　　　var $clone = $(this).clone().css('display','block').appendTo('body');
	　　　　var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
	　　　　top = top > 0 ? top : 0;   
	　　　　$clone.remove();   
	　　　　$(this).find('.modal-content').css("margin-top", top);   
	　　});   
	   $('#myModal2').each(function(i) {   
	　　　　var $clone = $(this).clone().css('display','block').appendTo('body');
	　　　　var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
	　　　　top = top > 0 ? top : 0;   
	　　　　$clone.remove();   
	　　　　$(this).find('.modal-content').css("margin-top", top);   
	　　}); 
	}; 

</script>
<style type="text/css">
	.table{
		text-align: center;
	}
	.table th, .table td { 
		text-align: center; 
	}
</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置:车贷录入</font></div>
	<div style="height: 80x;margin-top: 20px;">
		<form class="form-inline">
			<div class="form-group" style="margin-left: 1%">
				<label>合同编号</label> <input type="date"
					class="form-control" id="contract" placeholder="合同编号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>借款人</label> <input type="text"
					class="form-control" id="people" placeholder="借款人">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>分公司</label> 
				<select class="form-control" style="width: 180px">
					 <option value="" style="display: none;">-请选择-</option>
					 <option>分公司1</option>
					 <option>分公司2</option>
					 <option>分公司3</option>
					 <option>分公司4</option>
					 <option>分公司5</option>
				</select>
			</div>
			<button type="submit" class="btn btn-default" style="margin-left: 2%;width: 120px">查询</button>
		</form>
	</div>
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr id="tr1">
					<th style="width: 80px;">序号</th><th>合同编号</th><th>借款人</th>
					<th>业务经理</th><th>分公司</th><th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td>
					<td>
						<button id="apply" type="button" class="btn btn-default btn-sm">申请信息录入</button>&nbsp;&nbsp;
						<button id="backout" type="button" class="btn btn-default btn-sm">撤销</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
<div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					请选择要录入的信息
				</h4>
			</div>
			<div class="modal-body">
			<center>
				<button id="user" class="btn btn-info">客户基本信息录入</button>
				<button id="car" class="btn btn-info">车辆信息录入</button>
				<button id="credit" class="btn btn-info">客户信用信息录入</button>
			</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
			</div>
		</div>
	</div>
</div>
<div class="modal" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
			</div>
			<div class="modal-body">
				<center>
					<h1 class="modal-title" id="myModalLabel" >
						是否撤销该客户？
					</h1>
				</center>
			</div>
			<div class="modal-footer">
				<center>
					<button style="width: 120px;" type="button" class="btn btn-info">确定</button>
					<button style="width: 120px;" type="button" class="btn btn-info" data-dismiss="modal">取消</button>
				</center>
			</div>
		</div>
	</div>
</div>
</body>
</html>