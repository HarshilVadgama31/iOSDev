//var course: (String, Int, Bool) = ("Swift", 10, true)

var course: (CourseName: String, CourseNumber: Int, IsOpen: Bool) = ("Swift", 10, true)

print(course.CourseName)
course.0

var (courseName, courseNumber, isOpen) = course

courseName
courseNumber
isOpen
