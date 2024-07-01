table 50501 "Enroll Course"
{
    Caption = 'Enroll Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = SystemMetadata;
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Student ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Student ID';
            NotBlank = true;
            TableRelation = Student."Student ID";
        }
        field(3; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            NotBlank = true;
            TableRelation = Courses."Course Code";
        }
    }

    keys
    {
        key(PK; "Student ID", "Course Code")
        {
            Clustered = true;
        }
    }
}
