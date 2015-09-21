param($installPath, $toolsPath, $package, $project)

$appConfig = $project.ProjectItems | where-object {$_.Name -eq "app.config"}
$item = $project.ProjectItems | where-object {$_.Name -eq "app.Main.config"}
$item.Properties.Item("BuildAction").Value = [int]0
$item.Properties.Item("CopyToOutputDirectory").Value = [int]0
$appConfig.ProjectItems.AddFromFile($item.Properties.Item("FullPath").Value)
$item = $project.ProjectItems | where-object {$_.Name -eq "app.Hotfix.config"}
$item.Properties.Item("BuildAction").Value = [int]0
$item.Properties.Item("CopyToOutputDirectory").Value = [int]0
$appConfig.ProjectItems.AddFromFile($item.Properties.Item("FullPath").Value)
$item = $project.ProjectItems | where-object {$_.Name -eq "app.Release.config"}
$item.Properties.Item("BuildAction").Value = [int]0
$item.Properties.Item("CopyToOutputDirectory").Value = [int]0
$appConfig.ProjectItems.AddFromFile($item.Properties.Item("FullPath").Value)

$log4netConfig = $project.ProjectItems | where-object {$_.Name -eq "log4net.config"}
$log4netConfig.Properties.Item("BuildAction").Value = [int]0
$log4netConfig.Properties.Item("CopyToOutputDirectory").Value = [int]0
$item = $project.ProjectItems | where-object {$_.Name -eq "log4net.Main.config"}
$item.Properties.Item("BuildAction").Value = [int]0
$item.Properties.Item("CopyToOutputDirectory").Value = [int]0
$log4netConfig.ProjectItems.AddFromFile($item.Properties.Item("FullPath").Value)
$item = $project.ProjectItems | where-object {$_.Name -eq "log4net.Hotfix.config"}
$item.Properties.Item("BuildAction").Value = [int]0
$item.Properties.Item("CopyToOutputDirectory").Value = [int]0
$log4netConfig.ProjectItems.AddFromFile($item.Properties.Item("FullPath").Value)
$item = $project.ProjectItems | where-object {$_.Name -eq "log4net.Release.config"}
$item.Properties.Item("BuildAction").Value = [int]0
$item.Properties.Item("CopyToOutputDirectory").Value = [int]0
$log4netConfig.ProjectItems.AddFromFile($item.Properties.Item("FullPath").Value)

$myProject = $project.ProjectItems.Item("My Project")
$Properties = $project.ProjectItems.Item("Properties")

if ($project.CodeModel.Language -eq "{B5E9BD34-6D3E-4B5D-925E-8A43B79820B4}") 
{
	$myProject.Delete()
}
if ($project.CodeModel.Language -eq "{B5E9BD33-6D3E-4B5D-925E-8A43B79820B4}") 
{
	$Properties.Delete()
}

$project.Save()
