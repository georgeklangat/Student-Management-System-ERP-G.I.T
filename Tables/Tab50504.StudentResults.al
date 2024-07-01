table 50504 "Student Results"
{
    Caption = 'Student Results';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Result ID"; Integer)
        {
            Caption = 'Result ID';
        }
        field(2; "Student ID"; Code[20])
        {
            Caption = 'Student ID';

        }
        field(8; "Student Name"; Text[50])
        {
            Caption = 'Student name';
            TableRelation = Student."First Name";

        }

        field(6; "Course Code"; Code[20])
        {
            Caption = 'course code';

        }
        field(3; "Unit ID"; Code[20])
        {
            Caption = 'Unit ID';
            TableRelation = Unit."Unit Code";
        }
        field(4; Score; Integer)
        {
            Caption = 'Score';
            MinValue = 0;
            MaxValue = 99;
        }
        field(5; Grade; Code[1])
        {
            Caption = 'Grade';

        }
    }
    keys
    {
        key(PK; "Result ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        // if StudentIsEnrolled("Student ID", "Course Code") then
        //     Error('Student is not enrolled to this course');
        if (Score >= 70) then
            Grade := 'A'
        else if (Score > 60) then
            Grade := 'B'
        else if (Score > 50) then
            Grade := 'C'
        else if (Score > 40) then
            Grade := 'D'
        else if (rec.Score > 1) then
            Grade := 'E'
        else
            Grade := 'F';
    end;


    local procedure StudentIsEnrolled(StudentID: Code[20]; CourseID: code[20]): Boolean
    var
        Enrollment: Record "Enroll Course";
    begin
        Enrollment.SetRange("Student ID", StudentID);
        Enrollment.SetRange("Course Code", CourseID);
        if Enrollment.FindFirst then
            exit(true)
        else
            exit(false)
    end;

}
