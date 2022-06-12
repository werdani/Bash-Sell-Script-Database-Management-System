#! /bin/bash 
echo "😎😎😎😎😎😎😎😎😎😎😎😎😎😎"
echo "😎 welcom in my database  😎"
echo "😎😎😎😎😎😎😎😎😎😎😎😎😎😎"

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
ls  /home/werdani/Desktop/DBMSE
}

function connectdb {
read -p "enter database want to connect : " namee 
cd /home/werdani/Desktop/DBMSE/$namee

select choice in "Create Table" "List Table" "Delete Table" "Insert Into Table" "Select From Table" "Delete From Table" "Update Table" "To Exit"
do
	case $choice in 
		"Create Table") echo "welcom 😎"
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
