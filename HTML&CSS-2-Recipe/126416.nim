Елис Джелял Рафет, ФН: 126416, 35 група

Задача 1.

#include <iostream>
#include <string>
using namespace std;

int main()
{
    setlocale(LC_ALL, "Bulgarian");

    string mail;
    string name; 
    string server;
    bool isBg = false;

    cout << "Въведете имейл адрес: " << endl;
    getline(cin, mail);

    int index = mail.find("@");
    name = mail.substr(0, index);
    server = mail.substr(index + 1);
    if (name.find("bg") != string::npos)
    {
        isBg = true;
    }

    cout << "Потребител: " << name << endl;
    cout << "Сървър: " << server << endl;

    if (isBg)
    {
        cout << "Потребител: български";
    }
    else
    { 
        cout << "Потребител: ? "; 
    }

}

Задача 2.

#include <iostream>
#include <string>
using namespace std;

int main()
{
    setlocale(LC_ALL, "Bulgarian");

    string url;
    string protocol;
    string host; 
    string way;
    string fileName;

    cout << "Въведете имейл адрес: " << endl;
    getline(cin, url);

    int index1 = url.find("://");
    protocol = url.substr(0, index1);
    url = url.erase(0, index1 + 3);

    int index2 = url.find("/");
    host = url.substr(0, index2);
    url = url.erase(0, index2 + 1);

    int index3 = url.rfind("/");
    fileName = url.substr(index3 + 1);
    url = url.erase(index3);
    way = url;
   
    cout << "Протокол: " << protocol << endl;
    cout << "Хост: " << host << endl;
    cout << "Път: " << way << endl;
    cout << "Файл: " << fileName << endl;

}
