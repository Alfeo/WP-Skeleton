system("clear");
print("\tWelcome to WP-Skeleton ! | By Alfeo\n");
print("-" x 50 . "\n\n");
print("\t1 - Nouveau squelette de thème Wordpress\n");
print("\t2 - Quitter\n\n");
print("Option : ");

my $choice = <>;

if ($choice == "1")
{
	print("\n\nVeuillez choisir un nom pour votre thème (Sans espaces) [untitled] : ");

	my $name = <>;
	chomp($name);

	if($name eq "")
	{
		$name = "untitled";
	}

	system("mkdir ".$name);
	system("sleep 0.1");
	system("touch ./".$name."/index.php");
	system("touch ./".$name."/style.css");
	system("touch ./".$name."/page.php");
	system("touch ./".$name."/header.php");
	system("touch ./".$name."/footer.php");
	system("touch ./".$name."/single.php");
	system("touch ./".$name."/function.php");
	system("sleep 0.1");

	print("\n\nVeuillez entrer votre nom d'auteur [null] : ");

	my $themeAuthor = <>;
	chomp($themeAuthor);

	if($themeAuthor eq "")
	{
		$themeAuthor = "null";
	}

	print("\n\nSi vous avez un site Web, entrez le lien [null] : ");

	my $themeWeb = <>;
	chomp($themeWeb);

	if($themeWeb eq "")
	{
		$themeWeb = "null";
	}

	print("\n\nVeuillez entrer une description pour votre thème [null] : ");
	
	my $themeDescribe = <>;
	chomp($themeDesribe);

	if($themeDescribe eq "")
	{
		$themeDesribe = "null";
	}

	system("echo \"/*\nTheme Name: ".$name."\nAuthor: ".$themeAuthor."\nAuthor URI: ".$themeWeb."\nDescription: ".$themeDescribe."\n*/\" >> ./".$name."/style.css");
	
	system("sleep 0.1");
	print("Complete !");
}

else
{
	system("clear");
	system("exit");
}
