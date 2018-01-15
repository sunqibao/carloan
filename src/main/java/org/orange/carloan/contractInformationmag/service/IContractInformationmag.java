package org.orange.carloan.contractInformationmag.service;

/**
 * 合同类的业务方法
 * @author Administrator
 *
 */
public interface IContractInformationmag {

	/**
	 * 每个页面的撤销方法
	 * 
	 * 根据id查询出合同，修改状态为0，
	 * 然后执行update方法。
	 * @param contractInformationId 合同id
	 */
	public void deleteContractInformation(int contractInformationId);
	
}
