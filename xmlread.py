
import os
import xml.etree.ElementTree as ET


def get_average(lst):
    return sum(lst) / len(lst)
    
def get_input():
    try:
    	 pstr = input("Enter name of file: ")
    	 with open(pstr) as f:
            if os.stat(pstr).st_size != 0:
            	 return pstr	
            else:
            	 print('File is Empty')	 
    except FileNotFoundError:
            print("File is missing")
            exit()
            
def main(pstr):
    
    tree=ET.parse(pstr)
    root = tree.getroot()
    tag =  root.tag
    attributes = root.attrib
    a_title = []
    a_artist = []
    a_country = []
    a_price = []
    a_year = []
    a_count = 0
    a_sum = 0
    for child in root:
        ab = child.tag
        a_title= []
        a_sum = 0
        for TITLE in root.iter('TITLE'):
            a_title.append(TITLE.text)
        artist = []
        for ARTIST in root.iter('ARTIST'):
    	    a_artist.append(ARTIST.text)
        a_country = []
        for COUNTRY in root.iter('COUNTRY'):
    	    a_country.append(COUNTRY.text)	
        a_price = []
        for PRICE in root.iter('PRICE'):
    	    a_price.append(PRICE.text)
        a_year = []
        for YEAR in root.iter('YEAR'):
    	    a_year.append(YEAR.text)	
    a_title_1 = ['title']
    a_artist_1 = ['artist']
    a_country_1 = ['country']
    a_price_1 = ['price']
    a_year_1 = ['year']
    a_title_2 = [*a_title_1,*a_title]
    a_artist_2 = [*a_artist_1,*a_artist]
    a_country_2 = [*a_country_1,*a_country]
    a_price_2 = [*a_price_1, *a_price]
    a_year_2 = [*a_year_1,*a_year]
    print('\t\ttitle\t\t\tartist\t\t\tcountry\t\t\tprice\t\t\tyear')
    for i in range(len(a_year)):    	  	    
        print('%25s' %a_title[i],'%20s' %a_artist[i],'%20s' %a_country[i],'%25s' %a_price[i],'%22s' %a_year[i] )

    b_price = list(map(float, a_price))

    average = get_average(b_price)
    print(len(b_price),"items", round(average, 2), "average price")
 

main(
  pstr = get_input()
)

