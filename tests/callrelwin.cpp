#include <Windows.h>
#include <iostream>
#include <cstdint>

struct vec2 {
    uint32_t x;
};

void putadr(const char* name, void* adr) {
    std::cout
        << __func__ << ": "
        << name
        << " 0x"
        << std::hex
        << reinterpret_cast<uintptr_t>(adr)
        << std::dec
        << std::endl;
}

using printvec2 = void(*)(vec2);

int main() {
    HMODULE dll = LoadLibraryA("abi.dll");

    FARPROC sym = GetProcAddress(dll, "printvec2");

    HMODULE base;
    GetModuleHandleExA(
        GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS |
        GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
        reinterpret_cast<LPCSTR>(sym),
        &base
    );

    auto rel = 0x1490ULL;

    auto adr = reinterpret_cast<uintptr_t>(base) + rel;
    auto fun = reinterpret_cast<printvec2>(adr);

    putadr("sym", (void*)sym);
    putadr("fun", (void*)fun);

    vec2 vec = { .x = 12 };
    if (! sym) {
        std::cout << "warning: (! sym) evals to true! (sym is null)" << std::endl;
    } else {
        std::cout << "calling sym!" << std::endl;
        ((printvec2)sym)(vec);
    }
    
    std::cout << "calling fun!" << std::endl;
    fun(vec);

    FreeLibrary(dll);

    return 0;
}