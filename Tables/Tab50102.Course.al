table 50507 Courses
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[20])
        {

            Caption = 'Course Code';
            NotBlank = true;
        }
        field(2; "Course Name"; Text[100])
        {

            Caption = 'Course Name';
            NotBlank = true;
        }

    }

    keys
    {
        key(PK; "Course Code", "Course Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Course Name", "Course Code")
        {

        }
    }
}
