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
    c_file_begin = 219
    c_file_end = 219
    CC = "clang"

    log_file = open("./tests/log.txt", "w+")
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

        error_log_file.write("----------------------\n" + c_file + "    ⬆⬆⬆" + "\n----------------------\n\n")
        log_file.write("----------------------\n" + c_file + "    ⬆⬆⬆" + "\n----------------------\n\n")

        failed = False

        # compiling 
        p = subprocess.Popen([CC + " -o " + tests_prefix + c_file_bin + " " + tests_prefix + c_file], shell=True, stdout=log_file, stderr=error_log_file)
        sg = p.wait()
        if sg != 0:
            print(bcolors.FAIL + "[Clang] Compilation failed." + bcolors.ENDC)
            failed = True

        # binary execution 
        c_file_output_handle = open(tests_prefix + c_file_output, "w+")
        p = subprocess.Popen([tests_prefix + c_file_bin], shell=True, stdout=c_file_output_handle)
        sg = p.wait()
        if sg != 0:
            print(bcolors.FAIL + "[Binay] Binary file execution failded." + bcolors.ENDC)
            failed = True
        c_file_output_handle.close()

        # compare stdout (using diff commands)
        

        if failed:
            failure_cnt += 1 
        print("-------------------------------------")


    print_summary()
    log_file.close()
    error_log_file.close()
    exit(0)