

export class demo  {

public id:number;
 public p_name:String;
	public p_position_descrition:String;
	public p_request_time:String;

	//approved by variables
	public  a_name:String;
	public  a_position_descrition:String;
	public a_request_time:String;

	//re-invoice variables
	public  re_id:number;
	public re_invoice_no:String;
	public re_invoice_date:String;

	// invoice details variables
	public in_status:String;
	public in_invoice_type:String;
	public in_customer_order_no:String;
	public in_service_request_by:String;
	public in_service_rendered_from:String;
	public in_service_rendered_to:String;
	public in_vessel_code:String;
	public in_vessel_name:String;
	public in_in_voyage:String;
	public in_out_voyage:String;
	public in_service_id:number;
	public in_line_code:String;
	public in_callno_sign:String;
	public in_LOA:String;
	public in_LOA_UOM:String;
	public in_GT:String;
	public in_location:String;
	public in_ATA:String;
	public in_ATD:String;
	public in_po_no:String;
	public in_customer_code:String;
	public in_special_price:String;
	public in_customer_name:String;
	public in_remark:String;

	//list of items variables
	public item_code:String;

	// AOP variables
	public created_by:String;
	public created_on:String;
	public updated_by:String;
	public updated_on:String;
}
