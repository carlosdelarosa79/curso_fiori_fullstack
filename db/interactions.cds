//namespace app.interactions;

using { Country } from '@sap/cds/common';

context app.interactions {
  type BusinessKey : String(10);
  type SDate : DateTime;
  type LText : String(1024);


  entity Interactions_Header {
  key ID : Integer;
  ITEMS  : Composition of many Interactions_Items on ITEMS.INTHeader = $self;
  PARTNER  : BusinessKey;
  LOG_DATE  : SDate;
  BPCOUNTRY : Country;

  };
  entity Interactions_Items {

    key INTHeader : association to Interactions_Header;
    key TEXT_ID : BusinessKey;
        LANGU   : String(2);
        LOGTEXT : LText;
  };

}

@cds.persistence.exists 
@cds.persistence.calcview 
Entity V_INTERACTION {
key     ID: Integer  @title: 'ID: ID' ; 
        PARTNER: String(10)  @title: 'PARTNER: PARTNER' ; 
        LOG_DATE: String  @title: 'LOG_DATE: LOG_DATE' ; 
        BPCOUNTRY_CODE: String(3)  @title: 'BPCOUNTRY_CODE: BPCOUNTRY_CODE' ; 
        TEXT_ID: String(10)  @title: 'TEXT_ID: TEXT_ID' ; 
        LANGU: String(2)  @title: 'LANGU: LANGU' ; 
        LOGTEXT: String(1024)  @title: 'LOGTEXT: LOGTEXT' ; 
        ID_1: Integer  @title: 'ID_1: ID_1' ; 
        PARTNER_1: String(10)  @title: 'PARTNER_1: PARTNER_1' ; 
        LOG_DATE_1: String  @title: 'LOG_DATE_1: LOG_DATE_1' ; 
        BPCOUNTRY_CODE_1: String(3)  @title: 'BPCOUNTRY_CODE_1: BPCOUNTRY_CODE_1' ; 
        INTHEADER_ID: Integer  @title: 'INTHEADER_ID: INTHEADER_ID' ; 
        TEXT_ID_1: String(10)  @title: 'TEXT_ID_1: TEXT_ID_1' ; 
        LANGU_1: String(2)  @title: 'LANGU_1: LANGU_1' ; 
        LOGTEXT_1: String(1024)  @title: 'LOGTEXT_1: LOGTEXT_1' ; 
        ID_2: Integer  @title: 'ID_2: ID_2' ; 
        PARTNER_2: String(10)  @title: 'PARTNER_2: PARTNER_2' ; 
        LOG_DATE_2: String  @title: 'LOG_DATE_2: LOG_DATE_2' ; 
        BPCOUNTRY_CODE_2: String(3)  @title: 'BPCOUNTRY_CODE_2: BPCOUNTRY_CODE_2' ; 
        INTHEADER_ID_1: Integer  @title: 'INTHEADER_ID_1: INTHEADER_ID_1' ; 
        TEXT_ID_2: String(10)  @title: 'TEXT_ID_2: TEXT_ID_2' ; 
        LANGU_2: String(2)  @title: 'LANGU_2: LANGU_2' ; 
        LOGTEXT_2: String(1024)  @title: 'LOGTEXT_2: LOGTEXT_2' ; 
}



