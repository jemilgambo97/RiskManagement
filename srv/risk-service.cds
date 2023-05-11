using {riskmanagement as rm} from '/home/user/projects/risk-management/db/data/schema.cds';

 /**
   * For serving end users
   */
 service RiskService @(path : 'service/risk') {
 //### BEGIN OF INSERT
   entity Risks @(restrict : [
       {
          grant : [ 'READ' ],
          to : [ 'RiskViewer' ]
       },
       {
           grant : [ '*' ],
           to : [ 'RiskManager' ]
       }
   ]) as projection on rm.Risks;
 //### END OF INSERT
   annotate Risks with @odata.draft.enabled;

 //### BEGIN OF INSERT
   entity Mitigations @(restrict : [
       {
         grant : [ 'READ' ],
         to : [ 'RiskViewer' ]
       },
       {
         grant : [ '*' ],
         to : [ 'RiskManager' ]
       }
   ]) as projection on rm.Mitigations;
 //### END OF INSERT
     annotate Mitigations with @odata.draft.enabled;
   @readonly entity BusinessPartners as projection on rm.BusinessPartners;
 }