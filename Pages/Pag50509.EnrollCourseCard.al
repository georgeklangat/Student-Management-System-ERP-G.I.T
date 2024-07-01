page 50509 "Enroll Course Card"
{
    Caption = 'Enroll Course Card';
    PageType = Card;
    SourceTable = "Enroll Course";

    layout
    {
        area(Content)
        {
            field("Entry No."; Rec."Entry No.")
            {
                ApplicationArea = All;
                ToolTip = 'The entry number.';
            }
            field("Course Code"; Rec."Course Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the course code.';
            }
            field("Student ID"; Rec."Student ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the student ID.';
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(EnrollCourse)
            {
                ApplicationArea = All;
                Caption = 'Enroll Course';
                ToolTip = 'Enroll the student in the selected course.';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    EnrollmentRec: Record "Enroll Course";
                begin
                    // Assign values to the Enrollment record
                    EnrollmentRec.Init();
                    EnrollmentRec."Student ID" := Rec."Student ID";
                    EnrollmentRec."Course Code" := Rec."Course Code";

                    // Attempt to insert the record
                    if not EnrollmentRec.Insert() then
                        Message('This enrollment already exists.')
                    else
                        Message('The student has been enrolled in the course.');
                end;
            }
        }
    }
}
