page 50507 "Course card"
{
    Caption = 'Course card';
    PageType = Card;
    SourceTable = Courses;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Code field.', Comment = '%';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Name field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Assign Units")
            {
                Promoted = true;
                PromotedCategory = Process;
                Image = Action;
                trigger OnAction()
                begin
                    Page.RunModal(50513)
                end;

            }


        }
    }

}

