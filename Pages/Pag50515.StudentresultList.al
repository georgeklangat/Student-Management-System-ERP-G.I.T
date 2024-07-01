page 50515 "Student result List"
{
    Caption = 'Student result List';
    PageType = List;
    SourceTable = "Student Results";
    CardPageId = "student results card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Result ID"; Rec."Result ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Result ID field.', Comment = '%';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Student name';

                }


                field("Unit ID"; Rec."Unit ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit ID field.', Comment = '%';
                    TableRelation = Unit."Unit code";
                    LookupPageId = "Units list";
                }
                field(Score; Rec.Score)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Score field.', Comment = '%';
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Grade field.', Comment = '%';
                }
            }
        }
    }
}

