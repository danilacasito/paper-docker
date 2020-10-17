import os
minram = input("Minimun Ram> ")
maxram = input("Maximum Ram> ")
print("Starting Server")
os.system("cd /server")
os.system('echo "eula=true" > eula.txt')
os.system("java -Xms"+minram+" -Xmx"+maxram+" -jar server.jar")
