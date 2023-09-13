public class AccountCountHandler {
    public static void countNoMethod(list<account> AccountCount){
        list<contact>conlist = new list<contact>();
        list<opportunity>opplist = new list<opportunity>();
               for(Account acc : AccountCount){
                for (Integer i = 0; i < acc.Count__c; i++) {     
                   Contact con = new contact();
                   con.AccountId = acc.Id;
                   con.Title = 'IT';
                   con.Department = 'Technical';
                   con.LastName = 'mahesh';
                   conList.add(con);

              } 
                   
                   for(Integer i = 0; i < acc.OpportunityCount__c; i++) { 
                   opportunity opp = new opportunity();                 
                   opp.AccountId = Acc.Id;
                   opp.Name = Acc.Name;
                   opp.StageName = 'Prospecting';
                   opp.CloseDate = system.today();
                   oppList.add(opp); 
                   
              }      
               
                   if(!conList.isEmpty()){
                    insert conList;
              }
       }
   } 
}
