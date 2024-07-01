report 50502 "Courses Registered"
{
    Caption = 'Courses Registered';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;
    DefaultLayout = RDLC;
    RDLCLayout = 'CoursesRegistered.RDL';
    dataset
    {
        dataitem(Courses; Courses)
        {
            column(CourseCode; "Course Code")
            {
            }
            column(CourseName; "Course Name")
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
