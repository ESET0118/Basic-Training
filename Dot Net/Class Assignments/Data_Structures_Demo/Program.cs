namespace Data_Structures_Demo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Student> studentList = new List<Student>(); //List of Objects
            List<Dictionary<int, string>> list = new List<Dictionary<int, string>>(); //List of Dictionaries

            Student s1=new Student();
            Student s2=new Student(1,"Prakritish");
            Student s3 = new Student(2, "Sowmya");
            studentList.Add(s1);
            studentList.Add(s2);
            studentList.Add(s3);
            Console.WriteLine("Student List");1, "Prakritish"
            foreach (Student student in studentList)
            {
                Console.WriteLine(student.id +" "+student.name);
            }
        }
    }
    public class Student
    {
        public int id;
        public string name;
        public Student(){
            id=0;
            name="";
        }
        public Student(int id, string name)
        {
            this.id = id;
            this.name = name;

        }
    }
}
