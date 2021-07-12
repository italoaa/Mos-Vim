<div align="center">
  
  
# Mostrosity-vim
  
  
```
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ;           OOO\         
       ::::::;       ;          OOOOO\        
       ;:::::;       ;         OOOOOOOO       
      ,;::::::;     ;'         / OOOOOOO      
    ;:::::::::`. ,,,;.        /  / DOOOOOO    
  .';:::::::::::::::::;,     /  /     DOOOO   
 ,::::::;::::::;;;;::::;,   /  /        DOOO  
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /              DOO
`:`:::::::`;:::::: ;::::::#/               DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  

  
 
```
  
  
</div>

# Description

### Why use mostrosity vim?
- If you suffer with understanding how vim works and want to learn a lot, Mostrority is for You.
- If you want a upgradable config that has the basics but is not bloated, Mostrosity is for You
- If you want a sane file structure that is understandable and usable by everyone then Mostrosity is for **YOU**!

**This is a config For you to build on**


### Why make this?
The reason of making this project is very simple. I was using [Lunar Vim](https://github.com/ChristianChiarulli/LunarVim/tree/master) by [Christian Chiarulli](https://github.com/ChristianChiarulli) but I was not satisfied because I wanted to learn to make one myself. Also so many updates started to happen and I couldn't keep up. So here it is a Neo Vim config made by me but inspired heavily in Lunar Vim. ( Almost all the code is from there just re worked it)



# How to Use Mostrosity Vim?
1. Clone the github repo and make sure to download node,yarn,etc whatever it tells you, also you need nvim nightly.
```
$ git clone URL
```
2. Run `:PackerInstall`
3. DONE

## How it Works?
### File structure
![image](https://user-images.githubusercontent.com/72895337/125215346-e0320d80-e280-11eb-8ea1-96febef22d63.png)
### Sourcing Structure
Sourcing I am refering to how files call other files and so on so you can know if you are efiting the config where to place configs and where to call
![image](https://user-images.githubusercontent.com/72895337/125215326-cee90100-e280-11eb-9a6c-e62be0364973.png)


### How to make it your own?
- Add plugins by editing the Packer.lua file
- Add those plugins configs to the Packer-Spells folder (the config should be inside a folder and inside a init.lua so you can call the folder directily)
- Edit the base config
- Remember this is only a config for you to build ontop I recommend to understand how it works so you can use this config efectively to create your own
