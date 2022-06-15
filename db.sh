#! /bin/bash 
PS3="enter your choice ▶ "
echo " ➖➖➖➖➖➖➖➖➖➖➖"
echo "| welcom in database   |"
echo " ➖➖➖➖➖➖➖➖➖➖➖"

function creatdb {
read -p "enter dbname : " name 
if [ -d "$name" ]
then 
	cd /home/werdani/Desktop/DBMSE/$name
	echo "this database $name already exist "
else 
	mkdir /home/werdani/Desktop/DBMSE/$name
	echo "database $name created successfully"
fi
}

function listdb {
echo "Your Database : "
ls  /home/werdani/Desktop/DBMSE
}

function createt {
echo "welcom to create table 😃"
read -p "enter name of table to create : " nameta
if [ -f $nameta ]
then 
	echo "this table $nameta already exist choose anothe name 😴"
else 
	touch $nameta /home/werdani/Desktop/DBMSE/$namee
	read -p "enter number of columns : " numcol
	if [ $numcol -gt 0 ]
	then 
		for (( i=0 ; i<$numcol ; i++ ));
		do 
			read -p "enter your field name : " fieldnum
			echo -n $fieldnum: >> $nameta
		done
		echo >> $nameta
		for (( i=0 ; i<$numcol ; i++ ));
		do
			read -p "enter your field type : " fieldtype
			echo -n $fieldtype: >> $nameta
		done
			echo >> $nameta
			echo "table created successfully 😃"
		else
			echo "invaled type"
		fi
		
	
fi
}

function listt {
echo "Your Table  : "
ls /home/werdani/Desktop/DBMSE/$namee
}

function deletet {
read -p "enter table name to delete : " nameta
if [ -f $nameta ]
then 
	rm -i /home/werdani/Desktop/DBMSE/$namee/$nameta
	echo "table deleted successfully ☺"
else 
	echo "this table not exist 😴"
fi
}
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
function selectt {
read -p "enter table name to select from  : " sename
if [ -f $sename ]
then 
	echo "weclcom"
else
	echo "this table not exist😴"
fi
}
function deletefrom {
read -p "enter table name to delete from  : " dename
if [ -f $dename ]
then 
	echo "weclcom"
else
	echo "this table not exist😴"
fi
}
function updatet {
read -p "enter table name to update : " upname
if [ -f $upname ]
then 
	echo "weclcom"
else
	echo "this table not exist😴"
fi
}

function connectdb {
read -p "enter database want to connect : " namee 
cd /home/werdani/Desktop/DBMSE/$namee


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
		"To Exit") exit 
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

}
function dropdb {
read -p "enter database to drop : " naame 
rm -ir /home/werdani/Desktop/DBMSE/$naame
}
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
		"To Exit") exit
			;;
		*) echo "invaled option"
			;;
		esac
done 
