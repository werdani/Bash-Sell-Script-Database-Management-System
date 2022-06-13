#! /bin/bash 
PS3="enter your choice ▶ "
echo " ➖➖➖➖➖➖➖➖➖➖➖"
echo "| welcom in database   |"
echo " ➖➖➖➖➖➖➖➖➖➖➖"

function creatdb {
read -p "enter dbname : " name 
mkdir /home/werdani/Desktop/DBMSE/$name 
if [[ $? == 0 ]]
then 
	echo "database $name created successfully"
else 
	echo "datebase $name error"
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
	echo "table  $nameta created successfully 😃"
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
	echo "this table not exixt 😴"
fi
}
# function insertint {}
# function selectt {}
# function deletefrom {}
# function updatet {}


function connectdb {
read -p "enter database want to connect : " namee 
cd /home/werdani/Desktop/DBMSE/$namee

select choice in "Create Table" "List Table" "Delete Table" "Insert Into Table" "Select From Table" "Delete From Table" "Update Table" "To Exit"
do
	case $choice in 
		"Create Table") createt
			;;
		"List Table") listt
			;;
		"Delete Table") deletet
			;;
		"To Exit") exit 
			;;
		*) echo "not choice"
			;;
		esac
done

}
function dropdb {
read -p "enter database to drop : " name 
rm -ir /home/werdani/Desktop/DBMSE/$name
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
