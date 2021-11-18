import tkinter
import random
from tkinter import messagebox


def load_info():
    messagebox.showinfo(
        "info", "This project is created by Divya, Hrishit and Ishita for the DBMS course.")


def exit_app():
    confex = messagebox.askquestion(
        'Quit Confirmation', 'Are you sure you want to quit?')
    if confex.upper() == "YES":
        root.destroy()
    else:
        pass

def take_tbname():
    tbn = tbname.get(1.0, "end-1c")
    print(type(tbn))
    label_ins.config(text = "Table name: "+ tbn)
    #TODO: print the structure of the required table
    

root = tkinter.Tk()
# change root background col and ect
root.configure(bg="pink")
root.title("COD")
root.geometry("800x800")


# GUI (graphical user interface)
# main root app


label_title = tkinter.Label(root, text="Welcome to our Chess Openings Database!", bg="white")
label_title.grid(row=0, column=0)


exit_bttn = tkinter.Button(root, text="exit app",
                           bg="white", width=15, command=exit_app)
# exit_bttn.grid(row=8, column=0)
exit_bttn.place(x=0, y=770)


info_button = tkinter.Button(root, text="info", bg="white", command=load_info)
# info_button.grid(row=11, column=0, columnspan=2)
info_button.place(x=750, y=770)


tbname = tkinter.Text(root,height = 3, width = 10)
tbname.grid(row=7, column=0)



  
# Button Creation
tbeButton = tkinter.Button(root,
                        text = "Enter", command= take_tbname)
tbeButton.grid(row=7, column=1)


label_ins = tkinter.Label(root, text=" ", bg="white")
label_ins.grid(row=8, column=0)

label_wtd = tkinter.Label(root, text="Enter the table name", bg="white")
label_wtd.grid(row=6, column=0)

# label_upd = tkinter.Label(root, text="Update a record:", bg="white")
# label_upd.grid(row=5, column=0)

# main loop
root.mainloop()