using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class_Demo
{
    public class Student
    {
        public int student_id;
        public string name;
        public int age;
        public string contact_no;
        public  string email_id;

        public void initialize()
        {
            student_id = 10;
            name = "abcd";
        }
        public void showDisplay()
        {
            Console.WriteLine("Displaying Object");
            Console.WriteLine(name);
        }
        public Student()
        {

        }

        public Student( int id, string name,int age,string contact_no,string email_id)
        {
            student_id = id;
            this.name = name;


        }

    }
}
