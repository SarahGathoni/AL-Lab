pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {
        //  new field to the Customer List page to shows the balance
        addlast(Control1)
        {
            field(BalanceColor; "Balance")
            {
                ApplicationArea = All;

                trigger OnAfterGetRecord()
                begin
                    if ("Balance" > 1) then
                        CurrPage.BackgroundColor := Red;
                    else
                        CurrPage.BackgroundColor := Green;
                end;
            }
        }
    }
}
