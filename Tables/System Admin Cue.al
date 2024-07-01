table 50621 "System Admin Cues"
{
    Caption = 'System Admin Cue';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Primary Key"; Code[100])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }

        field(2; "No Of Users Logged On"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));

        }
        field(3; "Total No Of Minutes logged On"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("User Time Register".Minutes);
        }
        field(4; "Total No Of Minutes This Month"; Decimal)
        {

        }
        field(5; "Students Registered"; Integer)
        {
            Caption = 'Students Registered';
            DataClassification = ToBeClassified;

        }

        field(6; "No Courses Registered"; integer)
        {
            caption = 'Courses Registered';
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = count("Courses");

        }

        field(7; "No. Of Enrolled Students"; Integer)
        {
            caption = 'Enrolled Students';
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = count("Enroll Course");

        }


    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }


    // Procedure to calculate the total Number of Minutes Logge in this Month
    procedure GetLoggedOnMinuteThisMonth() MonthlytMinutes: Decimal;
    var
        UserTimeReg: Record "User Time Register";
    begin
        UserTimeReg.Reset();
        UserTimeReg.SetRange(Date, CalcDate('-CM', Today), CalcDate('cm', Today));
        if UserTimeReg.FindFirst() then begin
            UserTimeReg.CalcSums(Minutes);
            MonthlytMinutes := UserTimeReg.Minutes;
        end;
    end;



    // Procedure to find the total Number of the Registered Students


}
