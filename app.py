import tkinter
import random
from tkinter import messagebox
from connection import *
from tkinter_helper import *

cursor = get_conn()


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

def disp():
    # t.display(get_federation_counts(cursor))
    arg = qno.get(1.0, "end-1c")
    q_no, a2= arg.split(", ")
    q_no = int(q_no)
    
    if (qno==1):
        t.display(get_games_by_player(cursor, a2))

    elif (qno==2):
        # a2 = int(a2)
        t.display(get_games_by_year(cursor, a2))

    elif (qno==3):
        t.display(get_players_won_tournaments(cursor))

    elif (qno==4):
        t.display(get_federation_counts(cursor))


def take_tbname():
    tbn = tbname.get(1.0, "end-1c")
    label_ins.config(text = "Table name: "+ tbn)
    t.display(print_table(cursor, tbn))


def update_query():
    tbn2 = tbname2.get(1.0, "end-1c")
    col_to_set = setwhat.get(1.0, "end-1c")
    cond_to_set = wherewhat.get(1.0, "end-1c")
    label_ins.config(text = "Table name: "+ cond_to_set)

    # sql_update_query = """Update %s set %s  where  %s"""
    # cursor.execute(sql_update_query, (tbn2, col_to_set, cond_to_set))
    # connection.commit()
    # count = cursor.rowcount
    # print(count, "Record Updated successfully ")
    cursor.execute("""
        UPDATE  
    """
    +tbn2
    + """
    SET
    """
    + col_to_set
    + """
        WHERE  
    """
    + cond_to_set
    + ";")
    # return cursor.fetchall()

def insert_query():
    tbn3 = tbname3.get(1.0, "end-1c") 
    values = vals.get(1.0, "end-1c")

    cursor.execute(""" 
        INSERT INTO 
    """
    + tbn3 
    + """ 
        VALUES(
    """
    + values 
    + """)"""
    + ";")

def del_query():
    tbn4= tbname4.get(1.0, "end-1c")
    condition= cond.get(1.0, "end-1c")

    cursor.execute(""" 
        DELETE FROM 
    """
    + tbn4 
    + """ 
        WHERE
    """
    + condition 
    + ";")

    

root = tkinter.Tk()
tbname = None
label_ins = None
APP_HEIGHT = 1000
APP_WIDTH = 1000
t = None

def create():
    global root, tbname, label_ins, t, tbname2, setwhat, wherewhat, tbname3, vals, tbname4, cond, qno

    root.configure(bg="pink")
    root.title("COD")

    root.geometry(f"{APP_HEIGHT}x{APP_WIDTH}")


    # GUI (graphical user interface)
    # main root app


    label_title = tkinter.Label(root, text="Welcome to our Chess Openings Database!", bg="white")
    label_title.grid(row=0, column=0)


    exit_bttn = tkinter.Button(root, text="exit app",
                               bg="white", width=15, command=exit_app)
    # exit_bttn.grid(row=8, column=0)
    exit_bttn.place(x=0, y=APP_WIDTH-30)


    info_button = tkinter.Button(root, text="info", bg="white", command=load_info)
    # info_button.grid(row=11, column=0, columnspan=2)
    info_button.place(x=APP_HEIGHT-50, y=APP_WIDTH-30)


    tbname = tkinter.Text(root,height = 3, width = 10)
    tbname.grid(row=7, column=0)


    t = Table(root)

    # Button Creation
    tbeButton = tkinter.Button(root,
                            text = "Enter", command= take_tbname)
    tbeButton.grid(row=7, column=1)


    label_ins = tkinter.Label(root, text=" ", bg="white")
    label_ins.grid(row=8, column=0)

    label_wtd = tkinter.Label(root, text="Enter the table name", bg="white")
    label_wtd.grid(row=6, column=0)


    #update frame

    frame1=Frame(root,bg = "yellow",bd=10,width=APP_WIDTH,height=50,cursor = "target")
    frame1.grid(row=10, column=0)

    label_upd = tkinter.Label(frame1, text="UPDATE: ", bg="white")
    label_upd.grid(row=10, column=0)

    tbname2 = tkinter.Text(frame1,height = 2, width = 10)
    tbname2.grid(row=10, column=2)

    label_set = tkinter.Label(frame1, text="SET: ", bg="white")
    label_set.grid(row=10, column=4)

    setwhat = tkinter.Text(frame1,height = 2, width = 10)
    setwhat.grid(row=10, column=6)

    label_where = tkinter.Label(frame1, text="WHERE: ", bg="white")
    label_where.grid(row=10, column=8)

    wherewhat = tkinter.Text(frame1,height = 2, width = 10)
    wherewhat.grid(row=10, column=10)

    upateButton = tkinter.Button(frame1, text = "Update!", command= update_query)
    upateButton.grid(row=10, column=11)


    #insert frame
    frame2=Frame(root,bg = "green",bd=10,width=APP_WIDTH,height=50,cursor = "target")
    frame2.grid(row=11, column=0)

    label_insert = tkinter.Label(frame2, text="INSERT INTO: ", bg="white")
    label_insert.grid(row=11, column=0)

    tbname3 = tkinter.Text(frame2,height = 2, width = 10)
    tbname3.grid(row=11, column=2)

    label_values = tkinter.Label(frame2, text="VALUES: ", bg="white")
    label_values.grid(row=11, column=5)

    vals = tkinter.Text(frame2, height = 2, width = 10)
    vals.grid(row=11, column=7)

    insertButton = tkinter.Button(frame2, text = "Insert!", command= insert_query)
    insertButton.grid(row=11, column=9)


    #delete frame
    frame3=Frame(root,bg = "blue",bd=10,width=APP_WIDTH,height=50,cursor = "target")
    frame3.grid(row=12, column=0)

    label_del = tkinter.Label(frame3, text="DELETE FROM: ", bg="white")
    label_del.grid(row=12, column=0)

    tbname4= tkinter.Text(frame3,height = 2, width = 10)
    tbname4.grid(row=12, column=2)

    label_where2 = tkinter.Label(frame3, text="WHERE: ", bg="white")
    label_where2.grid(row=12, column=5)

    cond = tkinter.Text(frame3, height = 2, width = 10)
    cond.grid(row=12, column=7)

    delButton = tkinter.Button(frame3, text = "Delete!", command= del_query)
    delButton.grid(row=12, column=9)

    frame4=Frame(root,bg = "yellow",bd=10,width=APP_WIDTH,height=50,cursor = "target")
    frame4.grid(row=14, column=0)

    label_disp = tkinter.Label(frame4, text="View the pre-existing queries: \n 1. Info about all the game a player has played \n 2. All the tournaments held in a certain year \n 3. Info on all the players who have won a Tournament \n 4 Number of players in each federation \n 5. All the tournaments where the game reached a cettain position.\n", bg="white")
    label_disp.grid(row=14, column=0)

    qno= tkinter.Text(frame4,height = 2, width = 10)
    qno.grid(row=15, column=2)

    dispButton = tkinter.Button(frame4, text = "Display!", command= disp)
    dispButton.grid(row=15, column=9)

    






create()




# label_upd = tkinter.Label(root, text="Update a record:", bg="white")
# label_upd.grid(row=5, column=0)
# main loop
root.mainloop()
