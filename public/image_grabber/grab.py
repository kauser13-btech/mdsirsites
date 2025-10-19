import requests # request img from web
import shutil # save img locally
import os
from urllib.parse import urlsplit
import csv


def get_image(url):
    res = requests.get(url, stream = True)

    if res.status_code == 200:
        r1 = urlsplit(url)
        base_url = r1.hostname
        full_path = r1.path

        folder_path = ((full_path).rsplit("/",1)[0])
        image_name = ((full_path).rsplit("/",1)[1])

        isExist = os.path.exists("./" + folder_path)
        if (not isExist):
            os.makedirs("./" + folder_path)


        with open("./" + folder_path + "/"+ image_name,'wb') as f:
            shutil.copyfileobj(res.raw, f)
        print('Image sucessfully Downloaded: ',image_name)
    else:
        print('Image Couldn\'t be retrieved')
        hs = open("log.txt","a")
        hs.write(url + "\n")
        hs.close() 



with open('img_db.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='|')
    
    for row in spamreader:
        get_image(row[0])

