import ln2sqlmodule
try:
    while True:
        query = raw_input("Enter Your Query:")
        opt = ln2sqlmodule.getSql(query,"./emp.sql")
        print(opt)

except:
    print("No Such data found in Database")