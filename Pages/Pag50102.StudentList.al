page 50502 "Student List"
{
    PageType = List;
    SourceTable = "Student";
    CardPageId = "manage student card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }

                field("Date of birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                }

                field("phoneNo"; Rec."Phone Number")
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
            action("Add new student")
            {
                ApplicationArea = All;
                Caption = 'Add new student';
                Image = New;
                Promoted = true;
                PromotedCategory = new;
                trigger OnAction()
                begin
                    PAGE.RunModal(50508);
                end;
            }
            action("Manage Student")
            {
                ApplicationArea = All;
                Caption = 'Manage Student';
                Promoted = true;
                PromotedCategory = Process;
                Image = Edit;
                trigger OnAction()
                begin
                    // Open Manage Students page with filter
                    PAGE.RUNMODAL(50501);
                end;
            }
        }
    }
}
