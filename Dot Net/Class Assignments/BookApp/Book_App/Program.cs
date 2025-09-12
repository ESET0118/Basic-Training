namespace Book_App
{
    internal class Program
    {

        static List<string> title=new List<string>();
        static List<string> author = new List<string>();
        static List<double> price = new List<double>();
        static List<int> quantity = new List<int>();
        static List<string> customer = new List<string>();
        static List<double> cPrice = new List<double>();
        static List<string> sTitle=new List<string>();
        static List<int> sQuantity=new List<int>();


        static void Main(string[] args)
        {
            Console.WriteLine("====== BOOK SHOP MENU ======");
            Console.WriteLine("1. Add Book");
            Console.WriteLine("2. Sell Book");
            Console.WriteLine("3. View Books");
            Console.WriteLine("4. View Sales Report");
            Console.WriteLine("5. Exit");
            Console.WriteLine("============================");
            Console.Write("Choice: ");
            String choice = Console.ReadLine();

            switch (choice)
            {
                case "1":
                    addBook();
                    break;
                case "2":
                    sellBook();
                    break;
                case "3":
                    viewBook();
                    break;
                case "4":
                    viewSalesReport();
                    break;
                case "5":
                    break;
                default:
                    Console.WriteLine("Invalid Choice");
                    break;

            }


        }
        static void addBook()
        {
            Console.Write("Enter book title: ");
            String t = Console.ReadLine();
            title.Add(t);
            Console.Write("Enter author: ");
            String a = Console.ReadLine();
            author.Add(a);
            Console.Write("Enter price: ");
            double p = Convert.ToDouble(Console.ReadLine());
            price.Add(p);
            Console.Write("Enter  quantity: ");
            int q = Convert.ToInt32(Console.ReadLine());
            quantity.Add(q);
            Console.WriteLine("Book added successfully.");

        }
        static void sellBook()
        {
            Console.Write("Enter book title to sell: ");
            String t = Console.ReadLine();
            Console.Write("Enter quantity to sell: ");
            int q = Convert.ToInt32(Console.ReadLine());
            quantity[title.IndexOf(t)] = q> quantity[title.IndexOf(t)] ? 0:quantity[title.IndexOf(t)]-q;
            Console.Write("Enter price: ");
            double p = Convert.ToDouble(Console.ReadLine());
            cPrice.Add(p);
            Console.Write("Enter Customer Name: ");
            String c = Console.ReadLine();
            customer.Add(c);
            Console.WriteLine("Sold "+q+" copies of "+t+" to "+c);
        }
        static void viewBook()
        {
            Console.WriteLine("--- Book Inventory ---");
            Console.WriteLine("Title    Author  Price   Quantity");
            for (int i = 0; i < title.Count; i++)
            {
                Console.WriteLine(title[i]+"    " + author[i]+"    "+price[i]+"    " + quantity[i]);
            }
        }
        static void viewSalesReport()
        {
            Console.WriteLine("--- Sales Report ---");
            Console.WriteLine("Customer    Book    Quantity    Amount");
            double totalSales = 0;

            for (int i = 0; i < customer.Count; i++)
            {
                Console.WriteLine(customer[i]+"    "+sTitle[i]+"    "+sQuantity[i]+"    "+cPrice[i]);
                totalSales += cPrice[i];
            }

            Console.WriteLine($"\nTotal Sales Amount: "+totalSales);

        }
    }
}
