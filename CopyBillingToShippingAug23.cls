//Write a method to CopyBilling To Shipping when CopyBillingToShipping is checked on Account.
    public static void CopyBillingToShipping(List<Account> accList){
        for(Account acc : accList){
            if(acc.ShippingAddress == NULL && acc.CopyBillingToShipping__c == True){
                acc.ShippingStreet = acc.BillingStreet;
                acc.ShippingCity = acc.BillingCity;
                acc.ShippingState = acc.BillingState;
                acc.ShippingCountry = acc.BillingCountry;
                acc.BillingPostalCode = acc.BillingPostalCode;
            }
        }
    }
