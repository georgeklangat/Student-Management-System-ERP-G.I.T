report 50501 "Student Registered"
{
    Caption = 'Student Registered';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;
    DefaultLayout = RDLC;
    RDLCLayout = 'StudentRegistered.RDL';
    dataset
    {
        dataitem(Student; Student)
        {
            column(StudentID; "Student ID")
            {
            }
            column(FirstName; "First Name")
            {
            }
            column(LastName; "Last Name")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
