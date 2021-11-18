from tkinter import *

# class Table:

#     def __init__(self,root, lst):
#         total_rows = len(lst)
#         total_columns = len(lst[0])
#         # code for creating table
#         for i in range(total_rows):
#             for j in range(total_columns):

#                 self.e = Entry(root, width=20, fg='blue',
#                                font=('Arial',16,'bold'))

#                 self.e.grid(row=i+10, column=j)
#                 self.e.insert(END, lst[i][j])

class Table:

    def __init__(self,root):
        self.root = root

    def destroy(self):
        lst = [['' for i in range (5)] for j in range (15)]
        total_rows = len(lst)
        total_columns = len(lst[0])
        for i in range(total_rows):
            for j in range(total_columns):
                self.e = Entry(self.root, width=20, fg='blue',
                               font=('Arial',16,'bold'))
                self.e.grid(row=i+10, column=j)
                self.e.insert(END, lst[i][j])


    def display(self, lst):
        self.destroy()
        total_rows = len(lst)
        total_columns = len(lst[0])
        # code for creating table
        for i in range(total_rows):
            for j in range(total_columns):
                self.e = Entry(self.root, width=20, fg='blue',
                               font=('Arial',16,'bold'))
                self.e.grid(row=i+10, column=j)
                self.e.insert(END, lst[i][j])

