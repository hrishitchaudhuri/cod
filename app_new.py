import tkinter as tk
import random
from tkinter import messagebox
from connection import *
from tkinter_helper import *

cursor = get_conn()
APP_HEIGHT = 1000
APP_WIDTH = 1000

class App(tk.Tk):
    def __init__(self):
        tk.Tk.__init__(self)
        self._frame = None
        self.switch_frame(StartPage)

    def switch_frame(self, frame_class):
        """Destroys current frame and replaces it with a new one."""
        new_frame = frame_class(self)
        if self._frame is not None:
            self._frame.destroy()
        self._frame = new_frame
        self._frame.pack()

class StartPage(tk.Frame):
    def __init__(self, master):
        tk.Frame.__init__(self, master)

        page_name = tk.Label(self, text="WELCOME")
        page_name.grid(row=50, column=0)

        select_bttn = tk.Button(self, text="SELECT",
                  command=lambda: master.switch_frame(SelectPage))
        select_bttn.grid(row=APP_WIDTH//9, column=50)

        update_bttn = tk.Button(self, text="UPDATE",
                  command=lambda: master.switch_frame(UpdatePage))
        update_bttn.grid(row= 2 * APP_WIDTH//9, column=500)

        insert_bttn = tk.Button(self, text="INSERT",
                  command=lambda: master.switch_frame(InsertPage))
        insert_bttn.grid(row= 3 * APP_WIDTH//9, column=500)

        delete_bttn = tk.Button(self, text="DELETE",
                  command=lambda: master.switch_frame(DeletePage))
        delete_bttn.grid(row= 5 * APP_WIDTH//9, column=500)

        exit_bttn = tk.Button(self, text="EXIT",
                  command=lambda: self.exit_app(master))
        exit_bttn.grid(column=100, row=100)

        info_bttn = tk.Button(self, text="INFO",
                  command=lambda: self.load_info())
        info_bttn.grid(column=200, row=200)

    def load_info(self):
        messagebox.showinfo(
            "info", "This project is created by Divya, Hrishit and Ishita for the DBMS course.")

    def exit_app(self, master):
        confex = messagebox.askquestion(
            'Quit Confirmation', 'Are you sure you want to quit?')
        if confex.upper() == "YES":
            master.destroy()
        else:
            pass


class SelectPage(tk.Frame):
    def __init__(self, master):
        tk.Frame.__init__(self, master)
        self.t = Table(self)

        page_name = tk.Label(self, text="SELECT")
        page_name.grid(row=50, column=0)

        start_page_bttn = tk.Button(self, text="Return to start page",
                  command=lambda: master.switch_frame(StartPage))
        start_page_bttn.grid(row=100, column=0)

        self.tbname = tk.Text(self, height = 3, width = 10)
        self.tbname.grid(row=7, column=0)

        self.label_ins = tk.Label(self, text=" ", bg="white")
        self.label_ins.grid(row=8, column=0)

        tbeButton = tk.Button(self,
                            text = "Enter", command= lambda: self.take_tbname())
        tbeButton.grid(row=7, column=1)

    def take_tbname(self):
        tbn = self.tbname.get(1.0, "end-1c")
        self.label_ins.config(text = "Table name: "+ tbn)
        self.t.display(print_table(cursor, tbn))

class InsertPage(tk.Frame):
    def __init__(self, master):
        tk.Frame.__init__(self, master)

        page_name = tk.Label(self, text="INSERT")
        page_name.grid(row=50, column=0)

        start_page_bttn = tk.Button(self, text="Return to start page",
                  command=lambda: master.switch_frame(StartPage))
        start_page_bttn.grid(row=100, column=0)

        self.label_insert = tk.Label(self, text="INSERT INTO: ", bg="white")
        self.label_insert.grid(row=11, column=0)

        self.tbname3 = tk.Text(self,height = 2, width = 10)
        self.tbname3.grid(row=11, column=2)

        self.label_values = tk.Label(self, text="VALUES: ", bg="white")
        self.label_values.grid(row=11, column=5)

        self.vals = tk.Text(self, height = 2, width = 10)
        self.vals.grid(row=11, column=7)

        insertButton = tk.Button(self, text = "Insert!", command= lambda: self.insert_query())
        insertButton.grid(row=11, column=9)


    def insert_query(self):
        tbn3 = self.tbname3.get(1.0, "end-1c")
        values = self.vals.get(1.0, "end-1c")

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


class DeletePage(tk.Frame):
    def __init__(self, master):
        tk.Frame.__init__(self, master)

        page_name = tk.Label(self, text="DELETE")
        page_name.grid(row=50, column=0)

        start_page_bttn = tk.Button(self, text="Return to start page",
                  command=lambda: master.switch_frame(StartPage))
        start_page_bttn.grid(row=100, column=0)

        self.label_del = tk.Label(self, text="DELETE FROM: ", bg="white")
        self.label_del.grid(row=12, column=0)

        self.tbname4= tk.Text(self,height = 2, width = 10)
        self.tbname4.grid(row=12, column=2)

        self.label_where2 = tk.Label(self, text="WHERE: ", bg="white")
        self.label_where2.grid(row=12, column=5)

        self.cond = tk.Text(self, height = 2, width = 10)
        self.cond.grid(row=12, column=7)

        delButton = tk.Button(self, text = "Delete!", command= lambda: self.del_query())
        delButton.grid(row=12, column=9)



    def del_query(self):
        tbn4= self.tbname4.get(1.0, "end-1c")
        condition= self.cond.get(1.0, "end-1c")

        cursor.execute("""
            DELETE FROM
        """
        + tbn4
        + """
            WHERE
        """
        + condition
        + ";")

class UpdatePage(tk.Frame):
    def __init__(self, master):
        tk.Frame.__init__(self, master)

        page_name = tk.Label(self, text="UPDATE")
        page_name.grid(row=50, column=0)

        start_page_bttn = tk.Button(self, text="Return to start page",
                  command=lambda: master.switch_frame(StartPage))
        start_page_bttn.grid(row=100, column=0)

        self.label_upd = tk.Label(self, text="UPDATE: ", bg="white")
        self.label_upd.grid(row=10, column=0)

        self.tbname2 = tk.Text(self,height = 2, width = 10)
        self.tbname2.grid(row=10, column=2)

        self.label_set = tk.Label(self, text="SET: ", bg="white")
        self.label_set.grid(row=10, column=4)

        self.setwhat = tk.Text(self,height = 2, width = 10)
        self.setwhat.grid(row=10, column=6)

        self.label_where = tk.Label(self, text="WHERE: ", bg="white")
        self.label_where.grid(row=10, column=8)

        self.wherewhat = tk.Text(self,height = 2, width = 10)
        self.wherewhat.grid(row=10, column=10)

        self.label_ins = tk.Label(self, text=" ", bg="white")
        self.label_ins.grid(row=8, column=0)

        upateButton = tk.Button(self, text = "Update!", command= lambda: self.update_query())
        upateButton.grid(row=10, column=11)

    def update_query(self):
        tbn2 = self.tbname2.get(1.0, "end-1c")
        col_to_set = self.setwhat.get(1.0, "end-1c")
        cond_to_set = self.wherewhat.get(1.0, "end-1c")
        self.label_ins.config(text = "Update: "+ cond_to_set)

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



if __name__ == "__main__":
    app = App()
    app.geometry(f"{APP_HEIGHT}x{APP_WIDTH}")
    app.title("COD")
    app.mainloop()

