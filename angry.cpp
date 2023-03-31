#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>

using namespace std;

// Main function
int main()
{
    // Seed the random number generator
    srand(time(NULL));

    // Welcome message
    cout << "Hey there. What do you want?" << endl;

    // Get user input
    string input;
    getline(cin, input);

    // Transform the input into angry text
    string angry_text;
    for (char c : input) {
        if (rand() % 2) {
            angry_text += "\\u" + to_string(int(c));
        } else {
            angry_text += c;
        }
    }

    // Output the angry text
    cout << "Are you kidding me? You said: " << angry_text << "! Don't you dare talk to me like that again!" << endl;

    return 0;
}
