page 50503 CourseListpart
{
    PageType = ListPart;
    SourceTable = "Courses";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
