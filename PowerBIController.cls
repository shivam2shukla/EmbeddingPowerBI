public class PowerBIController extends OAuthController {
    private static String APPLICATION_NAME = 'PowerBI';
    public PowerBIController(ApexPages.StandardController controller) {
        system.debug('Application Name from PB is= ' + APPLICATION_NAME);
        this.application_name = APPLICATION_NAME;
        system.debug('Application Name from PB is= ' + this.application_name);
    }
    
    public String getValidateResult()
    {
        return validateResult;
    }

    /**
    * Validates the callback code and generates the access and refresh tokens
    *
    * @return null to refresh the page
    */
    public PageReference redirectOnCallback() {
        return super.redirectOnCallback(null);
    }
    
    public PageReference refreshAccessToken() {
        return super.refreshAccessToken(ApexPages.currentPage());
    }
}