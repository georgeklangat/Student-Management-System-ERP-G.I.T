page 50506 "Generate Reports"
{
    PageType = Card;
    SourceTable = "Reports";
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Generate Reports';

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Report ID"; Rec."Report ID")
                {
                    ApplicationArea = All;
                }
                field("Report Name"; Rec."Report Name")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Generate Report")
            {
                Caption = 'Generate Report';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Download;

                trigger OnAction()
                var
                    ReportData: Record "Reports";
                begin
                    // Logic to generate the report based on criteria
                    ReportData.Get();
                    MESSAGE('Report generated: %1', ReportData."Report Name");
                end;
            }
        }
    }
}
