$(function() {
//	$("#wnav").accordion({
//		animate: false
//	});
	addNav(_menus.basic); //首次加载basic 左侧菜单
	InitLeftMenu();
	$('.emsmenu').tree({
		onClick: function(node){
			debugger
			if( $(node.text).attr("rel")){
				var url =  $(node.text).attr("rel");
				var title = $(node.text).children('.nav').text();
				var menuid = $(node.text).attr('ref');
				addTab(title,url);
			}
		}
	});
	$('.emsmenu a').click(function() {
		var tabTitle = $(this).children('.nav').text();
		var url = $(this).attr("rel");
		var menuid = $(this).attr("ref");
		var icon = getIcon(menuid, icon);
		addTab(tabTitle, url, icon);
		$('.emsmenu li div').removeClass("selected");
		$(this).parent().addClass("selected");
	});
	
});
function GetMenuList(data, menulist) {
	if(data.menus == null)
		return menulist;
	else {
		menulist += '<ul>';
		$.each(data.menus, function(i, sm) {
			if(sm.url != null) {
				menulist += '<li ><a class="emenu" ref="' + sm.menuid + '"  rel="' +
					sm.url + '" ><span class="nav">' + sm.menuname +
					'</span></a>'
			} else {
				menulist += '<li state="closed"><span class="nav">' + sm.menuname + '</span>'
			}
			menulist = GetMenuList(sm, menulist);
		})
		menulist += '</ul>';
	}
	return menulist;
}
//左侧导航加载
function addNav(data) {

	$.each(data, function(i, sm) {
		var menulist1 = "";
		//sm 常用菜单  邮件 列表
		menulist1 = GetMenuList(sm, menulist1);
		menulist1 = "<ul class='easyui-tree emsmenu' animate='true' dnd='true'>" + menulist1.substring(4);
		$('#wnav').accordion('add', {
			title: sm.menuname,
			content: menulist1,
			iconCls: 'icon ' + sm.icon
		});

	});

	var pp = $('#wnav').accordion('panels');
	var t = pp[0].panel('options').title;
	$('#wnav').accordion('select', t);

}
// 初始化左侧
function InitLeftMenu() {
	hoverMenuItem();
}
/**
 * 菜单项鼠标Hover
 */
function hoverMenuItem() {
	$(".easyui-accordion").find('a').hover(function() {
		$(this).parent().addClass("hover");
	}, function() {
		$(this).parent().removeClass("hover");
	});
}

// 获取左侧导航的图标Tab
function getIcon(menuid) {
	var icon = 'icon ';
	$.each(_menus, function(i, n) {
		$.each(n, function(j, o) {
			$.each(o.menus, function(k, m) {
				if(m.menuid == menuid) {
					icon += m.icon;
					return false;
				}
			});
		});
	});
	return icon;
}
function createFrame(url) {
	var s = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
	return s;
}

function tabClose() {
	/* 双击关闭TAB选项卡 */
	$(".tabs-inner").dblclick(function() {
		var subtitle = $(this).children(".tabs-closable").text();
		$('#tabs').tabs('close', subtitle);
	});
	/* 为选项卡绑定右键 */
	$(".tabs-inner").bind('contextmenu', function(e) {
		$('#mm').menu('show', {
			left: e.pageX,
			top: e.pageY
		});

		var subtitle = $(this).children(".tabs-closable").text();

		$('#mm').data("currtab", subtitle);
		$('#tabs').tabs('select', subtitle);
		return false;
	});
}
// 绑定右键菜单事件
/************************************************************************Index页面********************************************************/
var _menus = {
	basic: [{
		"menuid": "10",
		"icon": "icon-sys",
		"menuname": "常用菜单",
		"menus": [{
				"menuid": "111",
				"menuname": "基础数据1",
				"icon": "icon-nav",
				"url": "#"
			}, {
				"menuid": "113",
				"menuname": "基础数据12",
				"icon": "icon-nav",
				"url": "#"
			},
			{
				"menuid": "119",
				"menuname": "这个是有子菜单的",
				"icon": "icon-nav",
				"menus": [{
					"menuid": "120",
					"menuname": "子菜单1",
					"icon": "icon-nav",
					"menus": [{
						"menuid": "120",
						"menuname": "子子菜单11111",
						"icon": "icon-nav",
						"url": "#"
					}]
				}]

			},
			{
				"menuid": "115",
				"menuname": "基础数据13",
				"icon": "icon-nav",
				"url": "#"
			}, {
				"menuid": "117",
				"menuname": "基础数据14",
				"icon": "icon-nav",
				"url": "#"
			}, {
				"menuid": "119",
				"menuname": "基础数据15",
				"icon": "icon-nav",
				"url": "em/enterpriseChannelObtend.action"
			}
		]
	}, {
		"menuid": "20",
		"icon": "icon-sys",
		"menuname": "测试一",
		"menus": [{
			"menuid": "211",
			"menuname": "测试一11",
			"icon": "icon-nav",
			"url": "#"
		}, {
			"menuid": "213",
			"menuname": "测试一22",
			"icon": "icon-nav",
			"url": "#"
		}]
	}]
};
/*************************************************************************************************************************************/
/**
* Name 选项卡初始化
*/
$('#wu-tabs').tabs({
	tools:[{
		iconCls:'icon-reload',
		border:false,
		handler:function(){
			$('#wu-datagrid').datagrid('reload');
		}
	}]
});
	
/**
* Name 添加菜单选项
* Param title 名称
* Param href 链接
* Param iconCls 图标样式
* Param iframe 链接跳转方式（true为iframe，false为href）
*/	
function addTab(title, href, iconCls, iframe){
	var tabPanel = $('#wu-tabs');
	if(!tabPanel.tabs('exists',title)){
		var content = '<iframe scrolling="auto" frameborder="0"  src="'+ href +'" style="width:100%;height:100%;"></iframe>';
		if(iframe){
			tabPanel.tabs('add',{
				title:title,
				content:content,
				iconCls:iconCls,
				fit:true,
				cls:'pd3',
				closable:true
			});
		}
		else{
			tabPanel.tabs('add',{
				title:title,
				href:href,
				iconCls:iconCls,
				fit:true,
				cls:'pd3',
				closable:true
			});
		}
	}
	else
	{
		tabPanel.tabs('select',title);
	}
}
/**
* Name 移除菜单选项
*/
function removeTab(){
	var tabPanel = $('#wu-tabs');
	var tab = tabPanel.tabs('getSelected');
	if (tab){
		var index = tabPanel.tabs('getTabIndex', tab);
		tabPanel.tabs('close', index);
	}
}