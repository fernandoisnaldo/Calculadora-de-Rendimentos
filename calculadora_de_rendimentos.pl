#!/usr/bin/perl
#calcula rendimentos com juros compostos
use strict;
use warnings;
print "Defina o valor de investimento inicial: R\$ ";
my $investimento_inicial=<>;
$investimento_inicial=~s/,/./;
print "Defina o tempo de investimento(meses): -> ";
my $prazo=<>;
print "Quanto você pretende depositar, em valores mensais?: R\$ ";
my $aporte_mensal=<>;
$aporte_mensal=~s/,/./;
print "Defina a taxa de rendimento: (anual) % ";
my $rendimento=<>;
$rendimento=~s/,/./;
my $resultado=$investimento_inicial;
for(my $contador=0;$contador<$prazo;$contador++){
	$resultado=$resultado*(1+$rendimento/100)**(1/12)+$aporte_mensal;
}
print "Você terá R\$ $resultado\n";
exit;
