page 50514 "course Unit list"
{
    ApplicationArea = All;
    Caption = 'course Unit list';
    PageType = List;
    SourceTable = "course unit";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Course name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course code field.', Comment = '%';
                }
                field("unit name"; Rec."unit name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the unit code field.', Comment = '%';
                }
            }
        }
    }
}
