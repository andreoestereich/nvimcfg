--" latex snipets


--" Operate on LaTeX quotes
--vmap <buffer> iq <ESC>?``<CR>llv/''<CR>h
--omap <buffer> iq :normal viq<CR>
--vmap <buffer> aq <ESC>?``<CR>v/''<CR>l
--omap <buffer> aq :normal vaq<CR>

--" set spellcheck
--setlocal spell
--et spelllang=en_us
--set omnifunc=syntaxcomplete#Complete

--" autoopeen pdf
vim.keymap.set('n', '<leader>i', ':! zathura %:r.pdf &<enter>')
--set mps+=$:$

--" open tabs as spaces
--" Creating environments
vim.keymap.set('i', 'çeq', '\\begin{equation}<Enter>\\label{<++>}<Enter>\\end{equation}<Enter><++><Esc>2kO')
vim.keymap.set('i', 'çee', '\\begin{equation*}<Enter>\\end{equation*}<Enter><++><Esc>kO')
vim.keymap.set('i', 'çit', '\\begin{itemize}<Enter>\\item <Enter>\\end{itemize}<Enter><++><Esc>2kA')
vim.keymap.set('i', 'çfg', '\\begin{figure}[h]<Enter>\\centering<Enter>\\includegraphics[width=0.5\\textwidth]{}<Enter>\\caption{<++>}<Enter>\\label{<++>}<Enter>\\end{figure}<Enter><Enter><++><Esc>5kf{a')
vim.keymap.set('i', 'çsf', '\\begin{subfigure}[t]{<++>\\textwidth}<Enter>\\includegraphics[width=\\textwidth]{<++>}<Enter>\\caption{<++>}<Enter>\\end{subfigure}<Enter>\\hfill<Enter><++><Esc>5kf<cf>')
vim.keymap.set('i', 'çff', '\\subfloat[]{<Enter>\\includegraphics[width=<++>\\textwidth]{<++>}<Enter>}<Enter><++><Esc>3k^f[a')
vim.keymap.set('i', 'çfr', '\\begin{frame}<Enter>\\frametitle{}<Enter><Enter><++><Enter>\\end{frame}<Enter><++><Esc>4kf{a')
vim.keymap.set('i', 'çta', '\\begin{center}<Enter>\\begin{tabular}{<++>}<Enter><++><Enter>\\end{tabular}<Enter>\\end{center}<Enter><++>')
vim.keymap.set('i', 'çex', '\vspace{2em}\textbf{Exemplo:}<Enter><Enter>\vspace{1em}\textbf{Solução:}<++><Enter><Enter>\vspace{2em}<++><Esc>4kA')

--" creating tags
vim.keymap.set('i', 'çrf', '\\cref{}<++><Esc>F{a')
vim.keymap.set('i', 'çct', '\\cite{}<++><Esc>F{a')
vim.keymap.set('i', 'çvv', '\vec{}<++><Esc>F{a')
vim.keymap.set('i', 'çni', '\noindent<space>')
vim.keymap.set('i', 'çch', '\\chapter{}<++><Esc>F{a')
vim.keymap.set('i', 'çse', '\\section{}<++><Esc>F{a')
vim.keymap.set('i', 'çss', '\\subsection{}<++><Esc>F{a')
vim.keymap.set('i', 'çla', '\\label{}<++><Esc>F{a')
vim.keymap.set('i', 'çtb', '\\textbf{}<++><Esc>F{a')
vim.keymap.set('i', 'çem', '\\emph{}<++><Esc>F{a')
vim.keymap.set('i', 'çca', '\\caption{}<++><Esc>F{a')
vim.keymap.set('i', 'çqu', '\\quad')
vim.keymap.set('i', 'çqq', '\\qquad')
vim.keymap.set('i', 'çal', '[allowframebreaks]')
vim.keymap.set('i', 'çft', '\framesubtitle{}<++><Esc>F{a')
vim.keymap.set('i', 'çfc', '\framesubtitle{}<++><Esc>F{a')
vim.keymap.set('i', 'çss', '\\SI{}{<++>}<++><Esc>2F{a')
vim.keymap.set('i', 'çpp', '\\problem{}<Enter>\\vspace{2em}<Enter><++><Esc>2k0f{a')
vim.keymap.set('i', 'çan', '\answers{}{<++>}{<++>}{<++>}{<++>}<++><Esc>Fsla')



vim.keymap.set('i', 'çkk', ' \\langle k \\rangle')
vim.keymap.set('i', 'çmm', ' \\mu_{ij}')

--" fast math
vim.keymap.set('i', 'çfa', '\forall<space>')
vim.keymap.set('i', '__', '_{}<++><Esc>F{a')
vim.keymap.set('i', '^^', '^{}<++><Esc>F{a')
vim.keymap.set('i', '/=', '\neq')
vim.keymap.set('i', '<=', '\\leq')
vim.keymap.set('i', '>=', '\\geq')
vim.keymap.set('i', 'ç/', '\\frac{}{<++>}<++><Esc>2F{a')
vim.keymap.set('i', '~+', '\\sum')
vim.keymap.set('i', '~~', '\\sim')
vim.keymap.set('i', 'ç2', '\\sqrt{}<++><Esc>F{a')
vim.keymap.set('i', '..', '\\cdot<Space>')

--" enclosing
vim.keymap.set('i', '[[', '\\left[ \\right]<++><Esc>F[a')
vim.keymap.set('i', '{{', '\\left\\{ \\right\\}<++><Esc>F{a')
vim.keymap.set('i', '((', '\\left( \\right)<++><Esc>F(a')
vim.keymap.set('i', '""', "``''<++><Esc>F`a")

--" Creating greek letters
vim.keymap.set('i', '#G', '\\Gamma')
vim.keymap.set('i', '#D', '\\Delta')
vim.keymap.set('i', '#L', '\\Lambda')
vim.keymap.set('i', '#F', '\\Phi')
vim.keymap.set('i', '#P', '\\Pi')
vim.keymap.set('i', '#W', '\\Psi')
vim.keymap.set('i', '#S', '\\Sigma')
vim.keymap.set('i', '#T', '\\Theta')
vim.keymap.set('i', '#U', '\\Upsilon')
vim.keymap.set('i', '#X', '\\Xi')
vim.keymap.set('i', '#O', '\\Omega')

vim.keymap.set('i', '#a', '\\alpha')
vim.keymap.set('i', '#b', '\\beta')
vim.keymap.set('i', '#g', '\\gamma')
vim.keymap.set('i', '#d', '\\delta')
vim.keymap.set('i', '#ee', '\\epsilon')
vim.keymap.set('i', '#z', '\\zeta')
vim.keymap.set('i', '#et', '\\eta')
vim.keymap.set('i', '#t', '\\theta')
vim.keymap.set('i', '#i', '\\iota')
vim.keymap.set('i', '#k', '\\kappa')
vim.keymap.set('i', '#l', '\\lambda')
vim.keymap.set('i', '#m', '\\mu')
vim.keymap.set('i', '#n', '\\nu')
vim.keymap.set('i', '#x', '\\xi')
vim.keymap.set('i', '#p', '\\pi')
vim.keymap.set('i', '#r', '\\rho')
vim.keymap.set('i', '#s', '\\sigma')
vim.keymap.set('i', '#t', '\\theta')
vim.keymap.set('i', '#u', '\\upsilon')
vim.keymap.set('i', '#f', '\\phi')
vim.keymap.set('i', '#c', '\\chi')
vim.keymap.set('i', '#w', '\\psi')
vim.keymap.set('i', '#o', '\\omega')
vim.keymap.set('i', '#ve', '\\varepsilon')
vim.keymap.set('i', '#vk', '\\varkappa')
vim.keymap.set('i', '#vf', '\\varphi')
vim.keymap.set('i', '#vp', '\\varpi')
vim.keymap.set('i', '#vr', '\\varrho')
vim.keymap.set('i', '#vs', '\\varsigma')
vim.keymap.set('i', '#vt', '\\tau')

--" math symbols
vim.keymap.set('i', '~<', '\\langle')
vim.keymap.set('i', '~>', '\\rangle')
vim.keymap.set('i', '~8', '\\infty')
vim.keymap.set('i', "'l", '\\ell')
vim.keymap.set('i', '°', '{}^\\circ')
vim.keymap.set('i', 'çxx', '\times')
vim.keymap.set('i', 'çtt', '\text{}<++><Esc>F{a')
vim.keymap.set('i', '~v', '\vec{}<++><Esc>F{a')

--" acentos
vim.keymap.set('i', '~a', 'ã')
vim.keymap.set('i', '~A', 'Ã')
vim.keymap.set('i', '~o', 'õ')
vim.keymap.set('i', '~O', 'Õ')
vim.keymap.set('i', "'a", 'á')
vim.keymap.set('i', "'A", 'Á')
vim.keymap.set('i', "'e", 'é')
vim.keymap.set('i', "'E", 'É')
vim.keymap.set('i', "'i", 'í')
vim.keymap.set('i', "'I", 'Í')
vim.keymap.set('i', "'o", 'ó')
vim.keymap.set('i', "'O", 'Ó')
vim.keymap.set('i', "'u", 'ú')
vim.keymap.set('i', "'U", 'Ú')
vim.keymap.set('i', '^a', 'â')
vim.keymap.set('i', '^e', 'ê')
vim.keymap.set('i', '^o', 'ô')
vim.keymap.set('i', '^A', 'Â')
vim.keymap.set('i', '^E', 'Ê')
vim.keymap.set('i', '^O', 'Ô')
