public static void copyShippingToBilling(List <Account> accList){
        for(Account acc : accList){
            if(acc.BillingAddress == NULL && acc.ShippingAddress != NULL && acc.CopyBillingToShipping__c == True){
                acc.BillingStreet = acc.ShippingStreet;
                acc.BillingCity = acc.ShippingCity;
                acc.BillingCountry = acc.ShippingCountry;
                acc.BillingPostalCode = acc.ShippingPostalCode;
            }
        }
    }
