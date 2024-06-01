pageextension 50100 UserSetupPageExt extends "User Setup"
{
    layout
    {
        addlast(Content)
        {
            field("Allow Credit Limit Change"; "Allow Credit Limit Change")
            {
                ApplicationArea = All;
            }
        }
    }
}
