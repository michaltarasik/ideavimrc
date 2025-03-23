nnoremap <Esc> :nohlsearch<cr>

xnoremap p P
nnoremap U :redo<CR>

vnoremap y m`y``
"                                                                             WINDOWS
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>ww <C-w>w
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>wh <C-w>h

"                                                                             TAB
nnoremap <C-l> :tabnext<cr>
nnoremap <C-h> :tabprevious<cr>

"                                                                             ACTION
map <C-a> <Action>($SelectAll)
map <A-i> <Action>(Back)
map <A-o> <Action>(Forward)
map <TAB> <Action>(EditorIndentSelection)
map <S-TAB> <Action>(EditorUnindentSelection)
map <A-s> <Action>(NewScratchFile)

map <A-w> <Action>(EditorSelectWord)
map <A-g> <Action>(Git.Menu)

noremap <silent> viv :<C-u>normal! F$ve<CR>

" zaznaczenie Funkcji
noremap <silent> vii :call SelectIfElse()<cr>

nnoremap vaf :action MethodUp<cr>V]Mo
nnoremap vif :action MethodUp<cr>jV]Mo
nnoremap daf :action MethodUp<cr>V]Md
nnoremap dif :action MethodUp<cr>jV]Md
nnoremap yaf :action MethodUp<cr>V]My
nnoremap yif :action MethodUp<cr>jV]My
nnoremap caf :action MethodUp<cr>V]Mc
nnoremap cif :action MethodUp<cr>jV]Mc

"                                                                             COMMENT
noremap gcc :action CommentByLineComment<cr>
voremap gcc :action CommentByLineComment<cr>


"                                                                           EASY MOTION
let g:WhichKeyDesc_JumpTo = "<leader><leader> Jump to"
map <leader><leader> <Plug>(easymotion-bd-f)

"                                                                           SEARCH AND File
let g:WhichKeyDesc_Find = "<leader>f Find"
let g:WhichKeyDesc_Find_Everywhere = "<leader>fe Find everywhere"
map <leader>fe <Action>(SearchEverywhere)
let g:WhichKeyDesc_Find_File = "<leader>ff Find file"
map <leader>ff <Action>(GotoFile)
let g:WhichKeyDesc_Find_Action = "<leader>fa Find action"
map <leader>fa <Action>(GotoAction)
let g:WhichKeyDesc_Find_Class = "<leader>fc Find class"
map <leader>fc <Action>(GotoClass)
let g:WhichKeyDesc_Find_InPath = "<leader>fs Find in path"
map <leader>fs <Action>(FindInPath)
let g:WhichKeyDesc_ReplaceInPath= "<leader>fr Find in path and replace"
map <leader>fr <Action>(ReplaceInPath)

"                                                                           GOTO
map gd <Action>(GotoDeclaration)
map gi <Action>(GotoImplementation)
map gm <Action>(GotoSuperMethod)

"                                                                           BOOKMARKS
map ma mA
map 'a `A
map ms mS
map 's `S
map md mD
map 'd `D
map mf mF
map 'f `F

"                                                                           GIT

let g:WhichKeyDesc_Git = "<leader>g Git"
let g:WhichKeyDesc_Git_Add = "<leader>gc Add"
map <leader>ga <Action>(Git.Add)
let g:WhichKeyDesc_Git_Commit = "<leader>gc Commit"
map <leader>gc <Action>(ActivateCommitToolWindow)
let g:WhichKeyDesc_Git_Branches = "<leader>gb Branches"
map <leader>gb <Action>(Git.Branches)
let g:WhichKeyDesc_Git.Fetch_Changes = "<leader>gf Fetch"
map <leader>gf <Action>(Git.Fetch)
let g:WhichKeyDesc_Git_Pull= "<leader>gp Pull"
map <leader>gp <Action>(Git.Pull)
let g:WhichKeyDesc_Git_Push = "<leader>gP Push"
map <leader>gP <Action>(Vcs.Push)
let g:WhichKeyDesc_Git_Metge = "<leader>gm Merge"
map <leader>gm <Action>(Git.Merge)
let g:WhichKeyDesc_Git_Compare = "<leader>gC Compare branches"
map <leader>gC <Action>(Git.CompareWithBranch)
let g:WhichKeyDesc_Git_Sign = "<leader>gs Sign"
let g:WhichKeyDesc_Git_Sign_Next_Change = "<leader>gj Next Change"
map <leader>gj <Action>(VcsShowNextChangeMarker)
let g:WhichKeyDesc_Git_Sign_Prev_Change = "<leader>gk Prev Change"
map <leader>gk <Action>(VcsShowPrevChangeMarker)
let g:WhichKeyDesc_Git_Sign_Prev_Blame = "<leader>gh Prev Blame"
map <leader>gh <Action>(Annotate)
let g:WhichKeyDesc_Git_Show_Diff_Line= "<leader>gl Show Diff Line"
map <leader>gl <Action>(VcsShowCurrentChangeMarker)
let g:WhichKeyDesc_Git_Show_Diff = "<leader>gd Show Diff"
map <leader>gd <Action>(Compare.SameVersion)
let g:WhichKeyDesc_Git_Rollback_Line = "<leader>gz Rollback Line"
map <leader>gz <Action>(Vcs.RollbackChangedLines)

"                                                                           OPEN

let g:WhichKeyDesc_Open= "<leader>o Open"
let g:WhichKeyDesc_Open_Database = "<leader>ob Database"
map <leader>ob <Action>(ActivateDatabaseToolWindow)
let g:WhichKeyDesc_Open_Terminal = "<leader>ot Terminal"
map <leader>ot <Action>(ActivateTerminalToolWindow)
let g:WhichKeyDesc_Open_Project_List= "<leader>ol Project List"
map <leader>ol <Action>(ActivateProjectToolWindow)
let g:WhichKeyDesc_Open_Scratch = "<leader>os Scratch File"
map <leader>os <Action>(NewScratchFile)
let g:WhichKeyDesc_Open_Bookmarks = "<leader>om Bookmarks"
map <leader>om <Action>(ShowBookmarks)
let g:WhichKeyDesc_Open_Recent_Files = "<leader>or Recent Files"
map <leader>or <Action>(RecentFiles)
let g:WhichKeyDesc_Open_NaviBars= "<leader>on NaviBars"
map <leader>on <Action>(ShowNavBar)
let g:WhichKeyDesc_Open_Usages = "<leader>ou Find Usages"
map <leader>ou <Action>(FindUsages)
let g:WhichKeyDesc_Open_Usages_Popup = "<leader>oo Find Usages Popup"
map <leader>oo <Action>(ShowUsages)
let g:WhichKeyDesc_Open_Selecet_In_Project = "<leader>oi Select In Project View"
map <leader>oi <Action>(SelectInProjectView)

"                                                                           TEXT 
"                                                                           ReformatCode
let g:WhichKeyDesc_Text = "<leader>t Text"
let g:WhichKeyDesc_Text_Reformat = "<leader>tr Reformat Code"
map <leader>tr <Action>(ReformatCode)
let g:WhichKeyDesc_Text_To_Upper = "<leader>tU To Upper"
noremap <leader>tU g~U
let g:WhichKeyDesc_Text_To_Lower = "<leader>tu To Lower"
noremap <leader>tu g~u

"                                                                           SURROUND
let g:WhichKeyDesc_Surround = "<leader>s Surround"
let g:WhichKeyDesc_Surround_With = "<leader>ss Surround With ..."
vmap <leader>ss <Action>(SurroundWith)
let g:WhichKeyDesc_Surround_With_If = "<leader>si Surround With If" 
vmap <leader>si <Action>(Floating.CodeToolbar.SurroundWithIf)
let g:WhichKeyDesc_Surround_With_TryCatch = "<leader>sc Surround With Catch" 
vmap <leader>sc <Action>(Floating.CodeToolbar.SurroundWithTryCatch)
let g:WhichKeyDesc_Surround_With_1 = "<leader>s\" Surround With \"" 
vmap <leader>s" c""<Esc>P
let g:WhichKeyDesc_Surround_With_2 = "<leader>s' Surround '" 
vmap <leader>s' c''<Esc>P
let g:WhichKeyDesc_Surround_With_3 = "<leader>s( Surround ()" 
vmap <leader>s( c()<Esc>P
let g:WhichKeyDesc_Surround_With_4 = "<leader>s[ Surround []" 
vmap <leader>s[ c[]<Esc>P
let g:WhichKeyDesc_Surround_With_5 = "<leader>s{ Surround {}" 
vmap <leader>s{ c{}<Esc>P
let g:WhichKeyDesc_Surround_Delete = "<leader>sd Delete Surround" 
let g:WhichKeyDesc_Surround_Delete_1 = "<leader>sd' Delete '" 
nnoremap <leader>sd' mm?'<CR>x/'<CR>x :nohlsearch<cr>`m 
let g:WhichKeyDesc_Surround_Delete_2 = "<leader>sd\" Delete \"" 
nnoremap <leader>sd" mm?"<CR>x/"<CR>x :nohlsearch<cr>`m 
let g:WhichKeyDesc_Surround_Delete_3 = "<leader>sd( Delete ()" 
nnoremap <leader>sd( mm?(<CR>x/)<CR>x :nohlsearch<cr>`m 
let g:WhichKeyDesc_Surround_Delete_4 = "<leader>sd[ Delete []" 
nnoremap <leader>sd[ mm?[<CR>x/]<CR>x :nohlsearch<cr>`m 
let g:WhichKeyDesc_Surround_Delete_5 = "<leader>sd{ Delete {}" 
nnoremap <leader>sd{ mm?{<CR>x/}<CR>x :nohlsearch<cr>`m 

"                                                                           ADD IN FILE
let g:WhichKeyDesc_Add = "<leader>a Add"
let g:WhichKeyDesc_Add_vardump = "<leader>av var_dump"
vnoremap <leader>av y$%ovar_dump(<Esc>pa);die;<Esc>
nnoremap <leader>av ovar_dump(1);die;<Esc>F1

let g:WhichKeyDesc_Add_dd = "<leader>ad dd"
vnoremap <leader>ad y$%odd(<Esc>pa);<Esc>
nnoremap <leader>ad odd(1);<Esc>F1

let g:WhichKeyDesc_Add_print = "<leader>ap print"
vnoremap <leader>ap yoprint("<pre>".print_r(<Esc>pa,true)."</pre>");die();<Esc>
nnoremap <leader>ap oprint("<pre>".print_r(1,true)."</pre>");die();<Esc>F1

let g:WhichKeyDesc_Add_console_log = "<leader>ac console.log"
vnoremap <leader>ac y$%oconsole.log(<Esc>pa);<Esc>
nnoremap <leader>ac oconsole.log(1);<Esc>F1

"                                                                           GENERATE
map <S-SPACE> <Action>(Generate)


"                                                                           REFACTORING AND RELOAD
map <leader>re <Action>(IdeaVim.ReloadVimRc.reload):nohlsearch<cr>
map <leader>ri <Action>(RestartIde):nohlsearch<cr>

map <leader>rr <Action>(RefactoringMenu)
map <leader>rn <Action>(RenameElement)
map <leader>rm <Action>(ExtractMethod)
map <leader>rv <Action>(IntroduceVariable)
map <leader>rf <Action>(IntroduceField)

"                                                                           HELP
map <leader>hh <Action>(ShowIntentionActions)

