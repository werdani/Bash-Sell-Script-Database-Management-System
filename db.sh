#! /bin/bash 
PS3="enter your choice ▶ "
echo " ➖➖➖➖➖➖➖➖➖➖➖"
echo "| welcom in database   |"
echo " ➖➖➖➖➖➖➖➖➖➖➖"

DIR="/home/werdani/Desktop/DBMSE"

# to create the datebase.
function creatdb {
<<<<<<< HEAD
read -p "enter dbname : " name 
if [ -d "$name" ]
then 
	cd /home/werdani/Desktop/DBMSE/$name
	echo "this database $name already exist "
else 
	mkdir /home/werdani/Desktop/DBMSE/$name
	echo "database $name created successfully"
=======
read -p "enter your database name : " name 

if [ -d "/$DIR/$name" ]
then
	echo "database already exists or you did not enter the value 😴" 
else 
	mkdir /$DIR/$name 
	echo "datebase $name created successfully 😃"
			
>>>>>>> newdb
fi
}

# to list all the datebase.
function listdb {
echo "Your Database is : "
ls  $DIR

}

# to create table.
function createt {

echo "welcom to create table 😃"
read -p "enter name of table to create : " nameta
if [ -f $nameta ] 
then 
	echo "table already exist or you did not enter the value 😴"
else 
	touch $nameta /$DIR/$namee
	read -p "enter number of columns : " numcol
	if [ $numcol -gt 0 ] # to check if number of colome greater than 0
	then 
		for (( i=0 ; i<$numcol ; i++ ));
		do 
			read -p "enter your field number [$i] name : " fieldnam
			if [ -z "$fieldnam" ]
			then 
			       echo "please enter a value"
			       break	
			fi
			 	
			echo -n $fieldnam: >> $nameta
		done
		echo >> $nameta
		for (( i=0 ; i<$numcol ; i++ ));
		do
			read -p "enter your field number [$i] type : " fieldtype
			if [ -z "$fieldtype" ]
                        then 
				echo "please enter a value"
				break
			fi
			
			echo -n $fieldtype: >> $nameta
		done
			echo >> $nameta
			echo "table created successfully 😃"
		else
			echo "invaled type"
		fi

sleep 1 #to sleep programe 1s
fi


}

# to list all the table.
function listt {
echo "Your Table is : "
ls $DIR/$namee
}

# to delete the table.
function deletet {
read -p "enter table name to delete : " nameta
if [ -f $nameta ]
then 
	rm -i /$DIR/$namee/$nameta
	echo "table deleted successfully ☺"
else 
	echo "this table not exist 😴"
fi
}

# to insert in the table.
function insertint {
read -p "enter table name to insert into  : " tname
if [ -f $tname ]
then 
	echo "ok"
	vi $tname
	echo "inserted successfully ☺"
else 
	echo "this table not exist😴"
fi
}

# to select from the table.
function selectt {
read -p "enter table name to select from  : " sename
if [ -f $sename ]
then 
	echo "weclcom"
else
	echo "this table not exist😴"
fi
}

# to delete from the table.
function deletefrom {
read -p "enter table name to delete from  : " dename
if [ -f $dename ]
then 
	echo "weclcom"
else
	echo "this table not exist😴"
fi
}

# to update the table.
function updatet {
read -p "enter table name to update : " upname
if [ -f $upname ]
then 
	echo "weclcom"
else
	echo "this table not exist😴"
fi
}

# to connecte with a datebase.
function connectdb {
read -p "enter database want to connect : " namee 
if [ -d "/$DIR/$namee" ]
then
cd $DIR/$namee
echo " ➖➖➖➖➖➖➖➖➖➖"
echo "| welcom in $namee   |"
echo " ➖➖➖➖➖➖➖➖➖➖"

# the menu of table.
select choicee in "Create Table" "List Table" "Delete Table" "Insert Into Table" "Select From Table" "Delete From Table" "Update Table" "Main Menu" "To Exit"
do
	case $choicee in 
		"Create Table") createt
			;;
		"List Table") listt
			;;
		"Delete Table") deletet
			;;
		"Insert Into Table") insertint
			;;
		"Select From Table") selectt
			;;
		"Delete From Table") deletefrom
			;;
		"Update Table") updatet
			;;
		"To Exit") exit echo "good by"
			;;
		"Main Menu") cd ..
			echo " ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖"
			echo "| You are now in the database menu |"
			echo " ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖"
			break
			;;
		*) echo "not choice"
			;;
		esac
done
else 
	echo "database $name not exists." 
fi

}

# to delete a databse.
function dropdb {
<<<<<<< HEAD
read -p "enter database to drop : " naame 
rm -ir /home/werdani/Desktop/DBMSE/$naame
=======
read -p "enter database to drop : " namea 
if [ -d "/$DIR/$namea" ]
then
	rm -ir /$DIR/$namea
	echo "database deleted successfully ☺"
else 
	echo "database $name not exists." 
	
fi
>>>>>>> newdb
}

# the main menu for a database.
select choice in "To CreateDB" "To ListDB" "To ConnectDB" "To DeleteDB" "To Exit"
do 
	case $choice in 
		"To CreateDB") creatdb
			;;
		"To ListDB") listdb
			;;
		"To ConnectDB") connectdb
			;;
		"To DeleteDB") dropdb
			;;
		"To Exit") exit echo "good by"
			;;
		"") echo "null input"
			;;
		*) echo "invaled option"
			;;
		esac
done 
