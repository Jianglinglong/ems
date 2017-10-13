package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

/**
 * 权限管理实体类
 * @author qingge
 * @data 2017年10月9日
 *
 */
@Table(name="t_right")
public class Right {
	private Integer rightId;// 权限id
	private Integer parentId;// 父权限id
	private String rightName;// 权限名称
	private String rightUrl;// 资源路径
	
	public Right() {
	
	}
	
	public Right(Integer rightId) {
		this.rightId = rightId;
	}

	public Right(Integer rightId, Integer parentId, String rightName, String rightUrl) {
		this.rightId = rightId;
		this.parentId = parentId;
		this.rightName = rightName;
		this.rightUrl = rightUrl;
	}
	
	@PK(auto=true)
	@Column(value="right_id")
	public Integer getRightId() {
		return rightId;
	}
	public void setRightId(Integer rightId) {
		this.rightId = rightId;
	}
	@Column(value="parent_id")
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	@Column(value="right_name")
	public String getRightName() {
		return rightName;
	}
	public void setRightName(String rightName) {
		this.rightName = rightName;
	}
	@Column(value="right_url")
	public String getRightUrl() {
		return rightUrl;
	}
	public void setRightUrl(String rightUrl) {
		this.rightUrl = rightUrl;
	}
	
}
