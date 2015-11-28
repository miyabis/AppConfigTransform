# AppConfigTransform

[![Build status](https://ci.appveyor.com/api/projects/status/v3xhi90glw6kw351?svg=true)](https://ci.appveyor.com/project/miyabis/appconfigtransform)
[![NuGet](https://img.shields.io/nuget/v/MiYABiS.AppConfigTransform.svg)](https://www.nuget.org/packages/MiYABiS.AppConfigTransform/)

App.Config, log4net.config Transform.  
In advance, App.Debug.config, App.Main.config, App.Hotfix.config, App.Release.config, 
log4net.Debug.config, log4net.Main.config, log4net.Hotfix.config, log4net.Release.config is available.  
log4net.config file will be included in the clickonce publish.


How to get
==========

URL:https://www.nuget.org/packages/MiYABiS.AppConfigTransform/
```
PM> Install-Package MiYABiS.AppConfigTransform
```


log4net.config setting
==========

When you use , please install the log4net from nuget.  

C#:Properties\AppConfigTransformAssemblyInfo.cs file Please cancel comment.
```
[assembly: log4net.Config.XmlConfigurator(ConfigFile=@"log4net.config", Watch=true)]
```

VB:My Project\AppConfigTransformAssemblyInfo.vb file Please cancel comment.
```
<Assembly: log4net.Config.XmlConfigurator(ConfigFile:="log4net.config", Watch:=True)> 

```

App.config Section Protection setting
==========

When you use , please install the Moca.NETConfiguration from nuget.  

C#:add Assembly property.
```
[assembly: Moca.Configuration.SectionProtection(Moca.Configuration.ProtectionProviderType.DPAPI, "Section Name")]
```

VB:add Assembly property.
```
<Assembly: Moca.Configuration.SectionProtection(Moca.Configuration.ProtectionProviderType.DPAPI, "Section Name")> 
```

Protection Provider Type DPAPI or RSA.

Program Startup execute method.
```
Moca.Configuration.SectionProtector.Protect()
```


License
=======

Microsoft Public License (MS-PL)

http://opensource.org/licenses/MS-PL
