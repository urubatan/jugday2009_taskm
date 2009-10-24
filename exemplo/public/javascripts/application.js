// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
		$("#status0").sortable({
			stop: function(event,ui){
				$.ajax({
				url:'/home/change_status',
				data:{task_id:ui.item.attr('id'),status:0},
				dataType:'script',
				type:'post'
				});
				
			}
		});
		$("#status1").sortable({
			stop: function(event,ui){
				$.ajax({
				url:'/home/change_status',
				data:{task_id:ui.item.attr('id'),status:1},
				dataType:'script',
				type:'post'
				});
				
			}
		});
		$("#status2").sortable({
			stop: function(event,ui){
				$.ajax({
				url:'/home/change_status',
				data:{task_id:ui.item.attr('id'),status:2},
				dataType:'script',
				type:'post'
				});
				
			}
		});
		$("#status3").sortable({
			stop: function(event,ui){
				$.ajax({
				url:'/home/change_status',
				data:{task_id:ui.item.attr('id'),status:3},
				dataType:'script',
				type:'post'
				});
				
			}
		});
		$(".draggable").draggable(
		{
			connectToSortable:'.target'
		}
		)
	});
