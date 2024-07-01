page 50516 "student results card"
{
    Caption = 'student results card';
    PageType = Card;
    SourceTable = "Student Results";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Result ID"; Rec."Result ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Result ID field.', Comment = '%';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.', Comment = '%';
                    TableRelation = Student."Student ID";
                    LookupPageId = "Student card";
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                    TableRelation = Courses."Course Code";
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }
                field("Unit ID"; Rec."Unit ID")
                {
                    ApplicationArea = All;
                    TableRelation = Unit."Unit Code";
                    LookupPageId = "Units list";
                    ToolTip = 'Specifies the value of the Unit ID field.', Comment = '%';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Student List";

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
