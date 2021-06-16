
import Tkinter as tk
import ln2sqlmodule 
from Tkinter import *
import tkMessageBox

#from Tkinter import scrolledtext
window = tk.Tk()
window.geometry("1367x768")

frame1 = Frame(window,width=700,height = 700,bg="WHITE",bd=5,relief="ridge")
frame1.pack(side = LEFT,fill=BOTH,expand=YES)

frame2 = Frame(window,width=100,height = 500,bg="WHITE",bd=5,relief="ridge")
frame2.pack(side = LEFT,fill=BOTH,expand=YES)


value = StringVar() #taking input
"""
def click():
    query= str(value.get())
     #val1= int(val,10)
    #try:
    # while True:
    if query=='':
        tkMessageBox.showerror("Error","Please Enter a Valid Question")
    else:
        opt = ln2sqlmodule.getSql(query,"./emp.sql")
        displayLabel.insert(END,opt)
        displayLabel.insert(END,"\n")
        print(opt)
        value.set("")
"""       
def click():
    query= str(value.get())
     #val1= int(val,10)
    try:
        opt = ln2sqlmodule.getSql(query,"./emp.sql")
        displayLabel.insert(END,opt)
        displayLabel.insert(END,"\n")
        print(opt)
        value.set("")
        


    except:
        tkMessageBox.showerror("Error","No Such data found in Database")  

#making label
enter = Label(text="Enter Question",font = "Calibri 15 bold",bg="white",padx=1,pady=1).place(x=250,y=150)

displayLabel = Text(frame2)
displayLabel.pack()

#making entry box
ent = Entry(frame1,textvariable=value,font = "Calibri 15",bd=2,width="100").place(x=10,y=200)



#making button
but = Button(frame1,text="Get Query",height=2,width=15,font="Aharoni",activebackground="red",relief=RAISED,command=click).place(x=250,y=250)

window.title("NLP")
window.mainloop()
