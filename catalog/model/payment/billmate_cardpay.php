<?php 
class ModelPaymentBillmateCardpay extends Model {
  	public function getMethod($address, $total) {
		$this->load->language('payment/billmate_cardpay');
		
		$status = true;

		if ($this->config->get('billmate_cardpay_total') > $total) {
			$status = false;
		} elseif (!$this->config->get('billmate_cardpay_status')) {
			$status = false;
		}
		
		if( $status){
            $available_countries = array_keys($this->config->get('billmatecard-country'));

            if(in_array($address['country_id'],$available_countries)){
                $status = true;
            } else {
                $status = false;
            }
            if(in_array(0,$available_countries)){
                $status = true;
            }

		}
		
		$method_data = array();
	
		if ($status) {  
			$description = $this->config->get('billmate_cardpay_description');
			$description = strlen( $description) ? $description : 'Billmate Kort - Betala med Visa & Mastercard';
      		$method_data = array( 
        		'code'       => 'billmate_cardpay',
        		'title'      => sprintf($this->language->get('text_title'),$description),
				'sort_order' => $this->config->get('billmate_cardpay_sort_order')
      		);
    	}
   
    	return $method_data;
  	}
}
?>