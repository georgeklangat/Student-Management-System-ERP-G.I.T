page 50505 "Course List"
{
    PageType = List;
    SourceTable = "Courses";
    CardPageId = "Course card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
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
            action("Manage Course")
            {
                ApplicationArea = All;
                Caption = 'Manage Course';
                Promoted = true;
                PromotedCategory = Process;
                Image = Edit;

                trigger OnAction()
                var
                    CourseRec: Record "Courses";
                begin
                    CourseRec.RESET;
                    CourseRec.SETRANGE("Course Code", Rec."Course Code");
                    IF CourseRec.FINDFIRST THEN BEGIN
                        PAGE.RUNMODAL(50504); // Replace with your Manage Courses page ID
                    END
                    ELSE
                        ERROR('Course not found.');
                end;
            }

            action("Create New Course")
            {
                ApplicationArea = All;
                Caption = 'Create New Course';
                Promoted = true;
                PromotedCategory = New;
                Image = New;

                trigger OnAction()
                begin
                    PAGE.RUNMODAL(50507);
                end;
            }


        }
    }
}
