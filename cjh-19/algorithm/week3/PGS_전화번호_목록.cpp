#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

bool solution(vector<string> phone_book) {
    // ���ڿ����� �������� ����
    sort(phone_book.begin(), phone_book.end());

    // �ٷ� ���� �κ� ���ڿ��� ���Ͽ� ���ٸ� false ��ȯ
    for (int i = 0; i < phone_book.size() - 1; i++) {
        if (phone_book[i] == phone_book[i + 1].substr(0, phone_book[i].length())) {
            return false;
        }
    }

    return true;
}