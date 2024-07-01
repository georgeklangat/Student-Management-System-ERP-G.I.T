table 50503 "course unit"
{
    Caption = 'course unit';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Name"; Text[50])
        {
            Caption = 'Course name';
        }
        field(2; "unit name"; Text[50])
        {
            Caption = 'unit code';
        }
    }
    keys
    {
        key(PK; "Course Name", "unit name")
        {
            Clustered = true;
        }
    }
}
