#! /bin/bash 
echo " -------------------------"
echo "| welcom in my database   |"
echo " -------------------------"

function creatdb {
read -p "enter dbnaem : " name 
mkdir ./DBMSE/$name 
if [[ $? == 0 ]]
then 
	echo "database $name created successfully"
else 
	echo "datebase $name error"
fi

}

function listdb {
ls  ./DBMSE/
}
 
:'function creattb {
read -p "enter table name " name
touch ./DBMSE/$namee/$name
if [ -F $name ]
then
echo "table $naem is existe"
else 
echo "table $name created successfully"
fi
}
function listtb {}
function deletetb {}
function insertin {}
function selectfrom {}
function deletefrom {}
function updatetb {}'

function connectdb {
read -p "enter database want to connect : " namee 
cd ./DBMSE/$namee
select choice in "Create Table" "List Table" "Delete Table" "Insert Into Table" "Select From Table" "Delete From Table" "Update Table" "To Exit"
do
	case $choice in 
		"Create Table") echo "welcom to create table "
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
rm -ir ./DBMSE/$name
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
