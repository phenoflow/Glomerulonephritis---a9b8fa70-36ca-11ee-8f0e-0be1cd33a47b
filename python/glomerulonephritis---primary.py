# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"K013.11","system":"readv2"},{"code":"K032300","system":"readv2"},{"code":"100558.0","system":"med"},{"code":"101358.0","system":"med"},{"code":"101572.0","system":"med"},{"code":"105723.0","system":"med"},{"code":"105859.0","system":"med"},{"code":"107045.0","system":"med"},{"code":"107564.0","system":"med"},{"code":"107814.0","system":"med"},{"code":"10809.0","system":"med"},{"code":"108711.0","system":"med"},{"code":"108816.0","system":"med"},{"code":"109945.0","system":"med"},{"code":"12465.0","system":"med"},{"code":"15097.0","system":"med"},{"code":"16008.0","system":"med"},{"code":"17060.0","system":"med"},{"code":"17365.0","system":"med"},{"code":"1803.0","system":"med"},{"code":"19316.0","system":"med"},{"code":"20027.0","system":"med"},{"code":"20074.0","system":"med"},{"code":"20129.0","system":"med"},{"code":"2088.0","system":"med"},{"code":"21297.0","system":"med"},{"code":"21423.0","system":"med"},{"code":"21947.0","system":"med"},{"code":"21989.0","system":"med"},{"code":"22205.0","system":"med"},{"code":"22852.0","system":"med"},{"code":"22897.0","system":"med"},{"code":"23913.0","system":"med"},{"code":"27427.0","system":"med"},{"code":"29384.0","system":"med"},{"code":"29634.0","system":"med"},{"code":"2999.0","system":"med"},{"code":"30301.0","system":"med"},{"code":"31581.0","system":"med"},{"code":"34998.0","system":"med"},{"code":"36125.0","system":"med"},{"code":"36342.0","system":"med"},{"code":"40349.0","system":"med"},{"code":"40413.0","system":"med"},{"code":"41285.0","system":"med"},{"code":"41881.0","system":"med"},{"code":"43611.0","system":"med"},{"code":"44541.0","system":"med"},{"code":"44804.0","system":"med"},{"code":"4669.0","system":"med"},{"code":"47672.0","system":"med"},{"code":"47838.0","system":"med"},{"code":"47922.0","system":"med"},{"code":"49642.0","system":"med"},{"code":"50200.0","system":"med"},{"code":"50305.0","system":"med"},{"code":"50472.0","system":"med"},{"code":"5182.0","system":"med"},{"code":"5291.0","system":"med"},{"code":"54312.0","system":"med"},{"code":"55389.0","system":"med"},{"code":"55548.0","system":"med"},{"code":"56893.0","system":"med"},{"code":"56987.0","system":"med"},{"code":"57168.0","system":"med"},{"code":"57926.0","system":"med"},{"code":"58060.0","system":"med"},{"code":"58164.0","system":"med"},{"code":"58750.0","system":"med"},{"code":"59992.0","system":"med"},{"code":"60128.0","system":"med"},{"code":"60198.0","system":"med"},{"code":"60484.0","system":"med"},{"code":"60856.0","system":"med"},{"code":"60857.0","system":"med"},{"code":"60960.0","system":"med"},{"code":"61317.0","system":"med"},{"code":"61494.0","system":"med"},{"code":"61811.0","system":"med"},{"code":"61814.0","system":"med"},{"code":"62320.0","system":"med"},{"code":"62520.0","system":"med"},{"code":"62868.0","system":"med"},{"code":"63599.0","system":"med"},{"code":"63615.0","system":"med"},{"code":"65064.0","system":"med"},{"code":"65400.0","system":"med"},{"code":"66136.0","system":"med"},{"code":"66503.0","system":"med"},{"code":"66505.0","system":"med"},{"code":"66613.0","system":"med"},{"code":"67193.0","system":"med"},{"code":"67460.0","system":"med"},{"code":"67995.0","system":"med"},{"code":"68364.0","system":"med"},{"code":"71174.0","system":"med"},{"code":"7164.0","system":"med"},{"code":"71709.0","system":"med"},{"code":"7190.0","system":"med"},{"code":"71964.0","system":"med"},{"code":"73026.0","system":"med"},{"code":"7804.0","system":"med"},{"code":"85659.0","system":"med"},{"code":"8668.0","system":"med"},{"code":"94350.0","system":"med"},{"code":"94373.0","system":"med"},{"code":"95546.0","system":"med"},{"code":"97388.0","system":"med"},{"code":"97734.0","system":"med"},{"code":"97758.0","system":"med"},{"code":"9840.0","system":"med"},{"code":"99201.0","system":"med"},{"code":"99644.0","system":"med"},{"code":"99685.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('glomerulonephritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["glomerulonephritis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["glomerulonephritis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["glomerulonephritis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
