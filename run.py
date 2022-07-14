#!/usr/bin/python3

import subprocess
import os

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
    ENDC = '\033[0m'


def print_summary():
    print("\n\n================================================")
    print("Summary Report")
    print("================================================")
    print("Success: ", c_file_end - c_file_begin + 1 - failure_cnt)
    print("Failure: ", failure_cnt)
    print("================================================")

if __name__ == "__main__":
    # must test:
    #       00189.c 
    #           ~/Documents/GitHub/strongbox-llvm13-macOS/llvm/build/bin/clang -S ./tests/single-exec/00189.c -o ./tests/single-exec/00189.S 
    #           clang ./tests/single-exec/00189.S -o ./tests/single-exec/00189.bin
    #           ./tests/single-exec/00189.bin
    
    c_file_begin = 222
    c_file_end = 224
    
    # C preprocessor 
    CPP=""
    # C compiler
    CC="/home/haohua/Documents/StrongBox/strongbox-llvm10/build/bin/clang"
    CFLAGS=" -lm "

    # C++ compiler 
    CXX="/home/haohua/Documents/StrongBox/strongbox-llvm10/build/bin/clang++"
    CPPFLAGS=""
    
    # Linker 
    LD="/home/haohua/Documents/StrongBox/strongbox-llvm10/build/bin/ld.lld"
    LDFLAGS=""
    # for the dynamic linker (after linking phase), for example `-lm, -lpthread, -lrt`
    # (glibc: libc.so, libc.so.6)
    # (math: libm.so)
    # (pthread: )
    # (real-time : librt.so)
    LD_LIBRARY_PATH=""

    #log_file = open("./tests/log.txt", "w+")
    error_log_file = open("./tests/error.txt", "w+")

    failure_cnt = 0

    for i in range(c_file_begin, c_file_end+1):
        c_file_no = str(i)
        # assert len(c_file_no) <= 5
        c_file =  "0" * (5 - len(c_file_no)) + c_file_no + ".c"
        c_file_info = c_file + ".tags"
        c_file_expected = c_file + ".expected"
        c_file_output = c_file + ".output"
        c_file_bin = c_file + ".bin"

        tests_prefix = "./tests/single-exec/" 

        print(bcolors.OKBLUE + c_file + bcolors.ENDC)
        # print(c_file_info)
        # print(c_file_expected)
        # print(c_file_output)
        # print(c_file_bin)

        # error_log_file.write("----------------------\n" + c_file + "    ⬆⬆⬆" + "\n----------------------\n\n")
        # log_file.write("----------------------\n" + c_file + "    ⬆⬆⬆" + "\n----------------------\n\n")

        failed = False

        # compiling
        if not failed:
            p = subprocess.Popen([CC + " " + CFLAGS + " -o " + tests_prefix + c_file_bin + " " + tests_prefix + c_file], shell=True)
            sg = p.wait()
            if sg != 0:
                print(bcolors.FAIL + "[Clang] Compilation failed." + bcolors.ENDC)
                failed = True

        # binary execution
        if not failed: 
            c_file_output_handle = open(tests_prefix + c_file_output, "w+")
            p = subprocess.Popen([tests_prefix + c_file_bin], shell=True, stdout=c_file_output_handle)
            sg = p.wait()
            if sg != 0:
                print(bcolors.FAIL + "[Binay] Binary file execution failded." + bcolors.ENDC)
                failed = True
            c_file_output_handle.close()

        # compare stdout (using diff commands)
        if not failed:
            p = subprocess.Popen(['[ -z "$(diff ' + tests_prefix + c_file_expected + " " + tests_prefix + c_file_output + ')" ] && exit 0'], shell=True)
            sg = p.wait()
            if sg != 0:
                print(bcolors.FAIL + "[Binay] Program outputs are different." + bcolors.ENDC)
                failed = True

        if failed:
            failure_cnt += 1 
        print("-------------------------------------")


    print_summary()
    #log_file.close()
    error_log_file.close()
    exit(0)