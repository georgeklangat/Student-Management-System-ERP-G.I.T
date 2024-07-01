page 50600 Headlines
{
    Caption = 'Headlines';
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {
        area(content)
        {
            group(Greeting)
            {
                Visible = IsGreetingTextVisible;
                ShowCaption = false;

                field(GreetingText; headllinepagecommon.GetGreetingText())
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                }
                field(LoggedOnUsers; StrSubstNo(LoggedOnUsers, GetNoOfActiveUsers()))
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        page.Run(page::"Concurrent Session List");
                    end;
                }
                field(SiteLbl; SiteLbl)
                {
                    ApplicationArea = Basic, suite;
                    Editable = false;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        Hyperlink('https://github.com/georgeklangat');
                    end;
                }
            }

        }
    }

    trigger OnOpenPage()

    begin
        headllinepagecommon.HeadlineOnOpenPage(Page::Headlines);
        IsGreetingTextVisible := headllinepagecommon.IsUserGreetingVisible()

    end;

    local procedure GetNoOfActiveUsers(): Integer;
    var
        ActiveSession: Record "Active Session";
    begin
        ActiveSession.Reset();

        // filter the active session records to only include those with "webclient"
        ActiveSession.SetRange("Client Type", ActiveSession."Client Type"::"Web Client");

        // Return the count of the active filtered session records
        exit(ActiveSession.Count());  //


    end;

    var
        headllinepagecommon: Codeunit "RC Headlines Page Common";
        [InDataSet]
        IsGreetingTextVisible: Boolean;

        SiteLbl: Label '<qualifier>welcome</qualifier><payload>Welcome to Student Management System.<emphasize></emphasize></payload>';
        LoggedOnUsers: Label '<qualifier>User.</qualifier><payload>The number of logged on users. <emphasize>%1</emphasize></payload>';

}
