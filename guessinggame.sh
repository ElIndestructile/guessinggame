function valida_dato {
	if [[ $dato -gt $total ]]
	then
		x="suposision demasiado alta"
	else
		x="suposision demasiado baja"
	fi
	echo "Incorrecto, intente de nuevo, $x"
}
total=$(find . -maxdepth 1 -type f | wc -l)
echo "Adivina el numero de archivos en el repositorio actual"
read dato
while [[ $dato -ne $total ]]
do
	[[ $dato =~ ^[0-9]+$ ]] && valida_dato || echo "ingresa un numero"
	read dato
done
echo "Felicidades, adivinaste el numero de archivos en el repositorio"
