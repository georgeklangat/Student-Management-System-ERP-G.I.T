report 50500 Results
{
    Caption = 'Results';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;
    DefaultLayout = RDLC;
    RDLCLayout = 'Results.RDL';

    dataset
    {
        dataitem(StudentResults; "Student Results")
        {
            column(StudentID; "Student ID")
            {
            }
            column(UnitID; "Unit ID")
            {
            }
            column(Score; Score)
            {
            }
            column(Grade; Grade)
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
