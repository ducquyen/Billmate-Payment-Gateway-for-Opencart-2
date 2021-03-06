<?php
// Heading
$_['heading_title']         = 'Billmate Faktura';
$_['text_billmate_invoice'] = '<img src="'.(defined('HTTP_IMAGE')?dirname(HTTP_IMAGE) : HTTP_CATALOG).'/billmate/images/bm_faktura_l.png" alt="Billmate" title="Billmate" height="35px" />';
$_['tab_log']          = 'Logs';

// Text
$_['text_payment']          = 'Betalning';
$_['text_billmate_fee']     = 'Fakturaavgift';
$_['text_success']          = 'Sparat: Du har modifierat Billmate Faktura betalningsmodul!';
$_['text_live']             = 'Nej';
$_['text_beta']             = 'Ja';
$_['text_sweden']           = 'Sverige';
$_['text_norway']           = 'Norge';
$_['text_finland']          = 'Finland';
$_['text_denmark']          = 'Danmark';
$_['entry_description']     = 'Beskrivning:';
$_['latest_release']     = 'Det finns en nyare version av denna plugin';


// Entry

$_['entry_logo']         = 'Logotype som visas på fakturan';
$_['entry_logo_help']         = 'Ange namnet på logotypen (finns i Billmate Online). Lämna tom om ni endast har en logotype.';

$_['entry_merchant']        = 'Billmate ID:';
$_['entry_merchant_help']   = 'Billmate-Id för att använda Billmates tjänster';
$_['entry_secret']          = 'Billmate Nyckel:';
$_['entry_secret_help']     = 'Billmatenyckel (Secret) för att använda Billmates tjänster';
$_['entry_server']          = 'Testläge:';
$_['entry_mintotal']           = 'Minimum Totalbelopp:';
$_['entry_mintotal_help']   = 'Kundvagnens totalbelopp måste vara minst detta belopp för att aktivera betalningsmetoden.';
$_['entry_maxtotal']           = 'Maximum Totalbelopp:';
$_['entry_maxtotal_help']   = 'Kundvagnens totalbelopp måste vara max detta belopp för att aktivera betalningsmetoden.';
$_['entry_pending_status']  = 'Pending Status:';
$_['entry_accepted_status'] = 'Godkänd Status:';
$_['entry_geo_zone']        = 'Geo Zone:';
$_['entry_status']          = 'Aktiverad:';
$_['entry_sort_order']      = 'Sorteringsordning:';
$_['entry_invoice_fee']      = 'Fakturaavgift:';
$_['entry_invoice_fee_tax']      = 'Fakturaavgift Momsklass:';
$_['entry_available_countries'] = 'Tillgängliga länder (autocomplete)';

// Error
$_['error_permission']      = 'Varning: Du har inte access till att ändra Billmate inställningar!';
$_['error_merchant_id']     = 'Billmate ID saknas';
$_['error_secret']     = 'Billmate nyckel saknas';
$_['error_credentials'] = 'Vänligen kontrollera BillmateID och Billmate nyckel';
?>
