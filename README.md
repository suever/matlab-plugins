# MATLAB Plugins
A simple framework for creating plugins in MATLAB to work with your application.

## Overview

To start using the library, you'll want to define your own custom subclass of `plugins.BasePlugin` that implements behavior specific to your application

    classdef MyPlugin < plugins.BasePlugin
        
Then anyone who would like to create a plugin for your application should subclass `plugins.MyPlugin`. Then from within your application, you can gather all user-supplied plugins using the `plugins.PluginManager`

    allplugins = plugins.PluginManager('plugins.MyPlugin')

If you have a GUI application, you can also add a menu item for users to select the plugin to run. Additionally, the menu will include items to manage plugins (updates, info, etc.) and reload all plugins from disk.

    hmenu = plugins.PluginMenu(allplugins)

## Additional Information

To make creating plugins easier for your users and ensure that they have all the necessary metadata,  there is a [cookiecutter project][1].

## Attribution

Copyright (c) <2024> [Jonathan Suever][2].  
All rights reserved

This software is licensed under the [MIT license][3]

[1]: https://github.com/suever/matlab-plugin-cookiecutter
[2]: https://github.com/suever
[3]: https://github.com/suever/matlab-plugins/blob/master/LICENSE
