table 50506 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Student ID';
            Editable = false;
        }

        field(33; "No.Series"; Code[10])
        {
            Caption = 'course Code';
            TableRelation = "No. Series";

        }

        field(2; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Last Name';
        }
        field(4; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birth';
        }

        field(6; "Email"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
        }
        field(7; "Phone Number"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone Number';
        }
    }

    keys
    {
        key(PK; "Student ID", "First Name", "Last Name")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Student ID", "First Name", "Last Name")
        {

        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()

    begin

        if rec."Student ID" = '' then begin
            noseries.InitSeries('STUDID', xRec."Student ID", 0D, "Student ID", "No.Series");

        end;
    end;


}
