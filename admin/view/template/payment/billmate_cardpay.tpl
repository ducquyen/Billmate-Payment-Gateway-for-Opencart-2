<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">

          <tr>
            <td><span class="required">*</span> <?php echo $entry_merchant_id; ?></td>
            <td><input type="text" name="billmate_cardpay_merchant_id" value="<?php echo $billmate_cardpay_merchant_id; ?>" />
              <?php if ($error_merchant_id) { ?>
              <span class="error"><?php echo $error_merchant_id; ?></span>
              <?php } ?></td>
          </tr>

          <tr>
            <td><span class="required">*</span> <?php echo $entry_secret; ?></td>
            <td><input type="text" name="billmate_cardpay_secret" value="<?php echo $billmate_cardpay_secret; ?>" />
              <?php if ($error_secret) { ?>
              <span class="error"><?php echo $error_secret; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td valign="top"><?php echo $entry_description; ?></td>
            <td><textarea cols="84" rows="10" name="billmate_cardpay_description"><?php echo $billmate_cardpay_description; ?></textarea>
          </tr>

          <tr>
             <td><?php echo $entry_test; ?></td>
            <td><?php if ($billmate_cardpay_test) { ?>
              <input type="radio" name="billmate_cardpay_test" value="1" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="billmate_cardpay_test" value="0" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="billmate_cardpay_test" value="1" />
              <?php echo $text_yes; ?>
              <input type="radio" name="billmate_cardpay_test" value="0" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?></td>
          </tr>

          <tr>
             <td><?php echo $prompt_name_entry; ?></td>
            <td><?php if ($billmate_prompt_name == 'YES') { ?>
              <input type="radio" name="billmate_prompt_name" value="YES" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="billmate_prompt_name" value="NO" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="billmate_prompt_name" value="YES" />
              <?php echo $text_yes; ?>
              <input type="radio" name="billmate_prompt_name" value="NO" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?></td>
          </tr>

          <tr>
             <td><?php echo $enable_3dsecure; ?></td>
            <td><?php if ($billmate_enable_3dsecure == 'NO') { ?>
              <input type="radio" name="billmate_enable_3dsecure" value="YES" />
              <?php echo $text_yes; ?>
              <input type="radio" name="billmate_enable_3dsecure" value="NO" checked="checked" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="billmate_enable_3dsecure" value="YES" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="billmate_enable_3dsecure" value="NO" />
              <?php echo $text_no; ?>
              <?php } ?></td>
          </tr>


          <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="billmate_cardpay_total" value="<?php echo $billmate_cardpay_total; ?>" /></td>
          </tr>        
          <tr>
            <td><?php echo $entry_transaction_method; ?></td>
            <td><select name="billmate_cardpay_transaction_method">
                <option value="authorization" <?php echo $billmate_cardpay_transaction_method == 'authorization'? 'selected="selected"':''?>>
                    <?php echo $entry_billmate_cardpay_authorization; ?>
                </option>
                <option value="sale" <?php echo $billmate_cardpay_transaction_method == 'sale'? 'selected="selected"':''?>><?php echo $entry_billmate_cardpay_sale; ?></option>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="billmate_cardpay_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $billmate_cardpay_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
		  <tr>
            <td><?php echo $entry_order_cancel_status; ?></td>
            <td><select name="billmate_cardpay_order_cancel_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $billmate_cardpay_order_cancel_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
            <tr>
                <td><?php echo $entry_available_countries; ?></td>
                <td><input type="text" name="billmatecard-country" value="" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><div id="billmatecard-country" class="scrollbox">
                        <?php $class = 'odd'; ?>
                        <?php if(isset($billmate_country) && is_array($billmate_country)){ ?>
                        <?php foreach ($billmate_country as $key => $b_country) { ?>
                        <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                        <div id="billmate-country<?php echo $key; ?>" class="<?php echo $class; ?>"><?php echo $b_country['name']; ?><img src="view/image/delete.png" alt="" />
                            <input type="hidden" name="billmatecard-country[<?php echo $key;?>][name];?>" value="<?php echo $b_country['name']; ?>" />

                        </div>
                        <?php } ?>
                        <?php } ?>
                    </div></td>
            </tr>
            <script type="text/javascript">

                $('input[name=\'billmatecard-country\']').autocomplete({
                    delay: 500,
                    source: function(request, response) {
                        $.ajax({
                            url: 'index.php?route=payment/billmate_cardpay/country_autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
                            dataType: 'json',
                            success: function(json) {
                                console.log(json);
                                response($.map(json, function(item) {
                                    return {
                                        label: item.name,
                                        value: item.country_id
                                    }
                                }));
                            }
                        });
                    },
                    select: function(event, ui) {
                        $('#billmatecard-country' + ui.item.value).remove();

                        $('#billmatecard-country').append('<div id="billmatecard-country' + ui.item.value + '">' + ui.item.label + '<img src="view/image/delete.png" alt="" /><input type="hidden" name="billmatecard-country['+ui.item.value+'][name]" value="' + ui.item.label + '" /></div>');

                        $('#billmatecard-country div:odd').attr('class', 'odd');
                        $('#billmatecard-country div:even').attr('class', 'even');

                        return false;
                    },
                    focus: function(event, ui) {
                        return false;
                    }
                }).autocomplete("instance")._renderItem = function(ul, item){
                    return $("<li>").append("<a>"+item.label +"</a>").appendTo(ul);
                };

                $('#billmatecard-country div img').live('click', function() {
                    $(this).parent().remove();

                    $('#billmatecard-country div:odd').attr('class', 'odd');
                    $('#billmatecard-country div:even').attr('class', 'even');
                });
            </script>
            <tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="billmate_cardpay_status">
                <?php if ($billmate_cardpay_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="billmate_cardpay_sort_order" value="<?php echo $billmate_cardpay_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 