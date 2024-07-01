table 50502 Unit
{
    Caption = 'Units';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;

        }
        field(2; "course code"; code[10])
        {
            Caption = 'course code';
        }
        field(3; "Unit Name"; Text[50])
        {
            Caption = 'Unit Name';
        }
        field(4; "Unit Code"; Code[10])
        {
            Caption = 'Unit Code';
        }
        field(5; "Assign"; Boolean)
        {
            Caption = 'Unit Code';
        }
    }
    keys
    {
        key(PK; "Entry No.", "Unit Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "course code", "Unit Code", "Unit Name")
        {

        }
    }
}
