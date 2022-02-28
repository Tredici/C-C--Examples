#include <iostream>
#include <string.h>
using namespace std;

struct data
{
    int day, month, year;

    void setDay(int d)
    {
        if (0 < d && d < 32)
            day = d;
    }

    int getDay()
    {
        return day;
    }

    string toString()
    {
        return to_string(year) + '/' +
             to_string(month) + '/' +
              to_string(day);
    }
};

int main(int argc, char const *argv[])
{
    data d;
    cout << "sizeof(data)  =        " << sizeof(d) << endl;
    d.setDay(1);
    d.month = 3;
    d.year = 2022;
    //cout << d.year << '/' << d.month << '/' << d.day << endl;
    cout << "d = " << d.toString() << endl;

    data d2 = d;
    d2.year++;
    cout << "d2 = " << d2.toString() << endl;

    return 0;
}
