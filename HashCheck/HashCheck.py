import tkinter as tk
from tkinter import ttk
from tkinter import *
from tkinter import messagebox
from tkinter import font
from webbrowser import get


root = tk.Tk()
root.geometry("200x200")
root.title("Try code")

l1 = tk.Label(root, text = 'SHA from File:')
l2 = tk.Label(root, text = 'SHA from Source:')

l1.grid(row = 0, column = 0, pady = 1)
l2.grid(row = 1, column = 0, pady = 1)

#
#Entry Boxes defined as sha1_var and sha2_var
#
sha1_var = tk.StringVar()
sha1 = tk.Entry(root, textvariable = sha1_var)
sha2_var = tk.StringVar()
sha2 = tk.Entry(root, textvariable = sha2_var)

sha1.grid(row = 0, column = 1, pady = 1)
sha2.grid(row = 1, column = 1, pady = 1)

#
#If statement to check that the values entered match.  This will check even if one of the codes has captalized leters and the other does not
#via the .lower addition seen below
#

def on_button(event=None):


    if sha1_var.get().lower() == sha2_var.get().lower():
        label1['text'] = "SHAs Match"
        label1.config(background = "green", font = "BOLD")

    elif sha1_var.get().lower() != sha2_var.get().lower():
        label1['text'] = "SHAs Do Not Match"
        label1.config(background = "red", font = "BOLD")
        
    if not sha1_var.get():
        label1['text'] = "Please enter hashes to compare!"
        label1.config(background = "yellow", font = "BOLD")

    if not sha2_var.get():
        label1['text'] = "Please enter hashes to compare!"
        label1.config(background = "yellow", font = "BOLD")




sha1.bind('<Return>', on_button)

#
#Tk button code
#
button = tk.Button(root, text = "Validate", command = on_button)

button.grid(row = 3, column = 0, pady = 1)

exitbutton = tk.Button(root, text = "Exit", command = root.destroy)

exitbutton.grid(row=3, column = 1, pady = 1)

#
#Labels where it will show if the input either matches or doesn't
#
label1 = tk.Label(root)

label1.grid(row = 0, column = 3, columnspan = 2, rowspan = 2, pady = 5)

sha1.focus()

root.mainloop()
