"""
Convert boolean values to strings 'Yes' or 'No'.

Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

Solution:
Using IF statement, and defining bool
"""

def bool_to_word(boolean):
    bool(boolean)
    if boolean==True:
        return 'Yes'
    else:
        return 'No'
