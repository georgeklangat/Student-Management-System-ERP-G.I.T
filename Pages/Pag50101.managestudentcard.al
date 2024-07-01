page 50501 "manage student card"
{
    PageType = Card;
    SourceTable = "Student";
    Editable = true;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    // Editable = false;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }
            }
        }

        area(factboxes)
        {
            part(Courses; "CourseListPart")
            {
                ApplicationArea = All;
                // SubPageLink = "Course Code" = FIELD("Course Code");
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Enroll New Course")
            {
                ApplicationArea = All;
                // Caption = 'Enroll New Course';
                Image = New;
                Promoted = true;
                PromotedCategory = New;
                ToolTip = 'Enroll the student in a new course.';
                trigger OnAction()
                begin
                    page.RunModal(50509);
                end;
            }
        }
    }
}
