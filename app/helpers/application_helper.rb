module ApplicationHelper
  $A="actions."
  $AR="activerecord."
  $ARA=$AR + "attributes."
  $ARM= $AR + "models."
  $F="formtastic."
  $FL= $F+"labels."
  $FH=$F+"hints."
  $L="links."
  $LU="lookups."
  $M="menus."
  $MS="messages."
  $MSE=$MS+"errors."
  $REDIS_PW='123456'

=begin
  This code will facilitate i18n in will_paginate
  just substitute twill_paginate for will_paginate
=end
  def twill_paginate(collection = nil, options = {})
      will_paginate collection, {:previous_label => t('commons.previous'), :next_label => t('commons.next')}.merge(options)
  end
end
