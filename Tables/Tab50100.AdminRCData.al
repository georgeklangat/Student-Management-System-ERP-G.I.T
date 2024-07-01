table 50505 "Admin RC Data"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Admin Task"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Admin Task")
        {
            Clustered = true;
        }
    }
}
