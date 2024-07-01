table 50508 Reports
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Report ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Report ID';
            NotBlank = true;
        }
        field(2; "Report Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Report Name';
        }
        field(3; "Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(4; "Date Created"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Created';
        }
    }

    keys
    {
        key(PK; "Report ID")
        {
            Clustered = true;
        }
    }
}
