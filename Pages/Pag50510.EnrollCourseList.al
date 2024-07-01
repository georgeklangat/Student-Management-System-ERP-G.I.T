page 50510 "Enroll Course List"
{
    Caption = 'Enroll Course List';
    PageType = List;
    SourceTable = "Enroll Course";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }

                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the course code.';
                }

                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies student ID.';
                }
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
                    ExistingEnrollmentFound: Boolean;
                    ConfirmResult: Boolean;
                begin

                    // Check if the enrollment already exists
                    if EnrollmentRec.Get(Rec."Student ID", Rec."Course Code") then begin
                        Message('This enrollment already exists.');
                    end else begin
                        // Assign values to the Enrollment record
                        EnrollmentRec.Init();
                        EnrollmentRec."Student ID" := Rec."Student ID";
                        EnrollmentRec."Course Code" := Rec."Course Code";
                        EnrollmentRec.Insert(); // Insert the new enrollment record
                        rec.Reset();


                        Message('The student has been enrolled in the course.');
                    end;

                end;
            }
        }
    }
}
