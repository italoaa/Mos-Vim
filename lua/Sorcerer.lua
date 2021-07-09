
                                                                            
-- @@@@@@    @@@@@@   @@@  @@@  @@@@@@@    @@@@@@@  @@@  @@@  @@@   @@@@@@@@  
--@@@@@@@   @@@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  @@@  @@@@ @@@  @@@@@@@@@  
--!@@       @@!  @@@  @@!  @@@  @@!  @@@  !@@       @@!  @@!@!@@@  !@@        
--!@!       !@!  @!@  !@!  @!@  !@!  @!@  !@!       !@!  !@!!@!@!  !@!        
--!!@@!!    @!@  !@!  @!@  !@!  @!@!!@!   !@!       !!@  @!@ !!@!  !@! @!@!@  
-- !!@!!!   !@!  !!!  !@!  !!!  !!@!@!    !!!       !!!  !@!  !!!  !!! !!@!!  
--     !:!  !!:  !!!  !!:  !!!  !!: :!!   :!!       !!:  !!:  !!!  :!!   !!:  
--    !:!   :!:  !:!  :!:  !:!  :!:  !:!  :!:       :!:  :!:  !:!  :!:   !::  
--:::: ::   ::::: ::  ::::: ::  ::   :::   ::: :::   ::   ::   ::   ::: ::::  
--:: : :     : :  :    : :  :    :   : :   :: :: :  :    ::    :    :: :: :
--   
--                                                                 
--   @@@@@@@@@@    @@@@@@    @@@@@@   @@@@@@@  @@@@@@@@  @@@@@@@   
--   @@@@@@@@@@@  @@@@@@@@  @@@@@@@   @@@@@@@  @@@@@@@@  @@@@@@@@  
--   @@! @@! @@!  @@!  @@@  !@@         @@!    @@!       @@!  @@@  
--   !@! !@! !@!  !@!  @!@  !@!         !@!    !@!       !@!  @!@  
--   @!! !!@ @!@  @!@!@!@!  !!@@!!      @!!    @!!!:!    @!@!!@!   
--   !@!   ! !@!  !!!@!!!!   !!@!!!     !!!    !!!!!:    !!@!@!    
--   !!:     !!:  !!:  !!!       !:!    !!:    !!:       !!: :!!   
--   :!:     :!:  :!:  !:!      !:!     :!:    :!:       :!:  !:!  
--   :::     ::   ::   :::  :::: ::      ::     :: ::::  ::   :::  
--    :      :     :   : :  :: : :       :     : :: ::    :   : :
--

-- I am the One who sources everything
--
-- The main 3 Spells are :
-- 		
-- 	Packer.lua : everything related to Packer and plugin management
-- 		 this also includes each plugin config
-- 	Lsp.lua : Everything related to lsp 
--
-- 	Config.lua : This file has all the nvim configs like keybindings etc
--

-- All the resources are under the spell book 
--
-- Each category is a spell that in this case invokes Packer or lsp or configs
--
-- Each Spell has their own Spells in a directory
-- For the spell Packer.lua the name of the spells are Packer-Spells
--
--

-----------------------------------------------------------------------------------------
---------------------------- Initializing the ritual ------------------------------------
-----------------------------------------------------------------------------------------

require('Globals')

require('SpellBook.Config')

require('SpellBook.Packer')

require('SpellBook.Lsp')


