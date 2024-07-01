page 50513 "Units list"
{
    Caption = 'Units list';
    PageType = List;
    SourceTable = Unit;
    CardPageId = unitcard;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Unit Name"; Rec."Unit Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Name field.', Comment = '%';
                }
                field("Unit Code"; Rec."Unit Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Assign")
            {
                ApplicationArea = All;
                Caption = 'Assign';
                Image = Process;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    UnitRec: Record "Unit";
                    CourseUnitsRec: Record "Course Unit";
                begin
                    UnitRec.RESET;
                    IF UnitRec.FINDFIRST THEN
                        REPEAT
                            IF UnitRec.Assign THEN BEGIN
                                // Check if the course-unit relationship already exists
                                CourseUnitsRec.RESET;
                                CourseUnitsRec.SETRANGE("Unit name", UnitRec."Unit Code");
                                IF NOT CourseUnitsRec.FINDFIRST THEN BEGIN
                                    CourseUnitsRec.INIT;
                                    CourseUnitsRec."Unit name" := UnitRec."Unit name";
                                    CourseUnitsRec.INSERT(TRUE);
                                END;
                            END;
                        UNTIL UnitRec.NEXT = 0;
                    MESSAGE('Units assigned successfully.');
                end;
            }
        }
    }
}
