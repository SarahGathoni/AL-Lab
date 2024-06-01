codeunit 50000 CreditLimitChangeHandler
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterModifyEvent', '', false, false)]
    local procedure OnCustomerModify(var Rec: Record "Customer")
    var
        UserSetupRec: Record "User Setup";
        CurrentUser: Text[50];
    begin
        CurrentUser := UserSecurityId();
        if UserSetupRec.Get(CurrentUser) then begin
            if not UserSetupRec."Allow Credit Limit Change" then
                Error('You are not authorized to change the Credit Limit.');
        end else begin
            Error('User setup not found for the current user.');
        end;
    end;
}
