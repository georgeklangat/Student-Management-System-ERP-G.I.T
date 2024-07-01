page 50504 "Manage Course"
{
    PageType = Card;
    SourceTable = "Courses";
    Editable = true;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                    Editable = false; // Primary keys are typically not editable
                }
                field("Course Name"; Rec."Course Name")
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
            action("Create New Course")
            {
                ApplicationArea = All;
                // Caption = 'Create New Course';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Create a new course.';
                trigger OnAction()
                begin
                    PAGE.RunModal(50507);
                end;
            }
        }
    }


}
