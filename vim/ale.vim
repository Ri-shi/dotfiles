"=============================== ALE =================
"let g:ale_python_flake8_executable = '$(python -m flake8)'
"let g:ale_linters = {'python': ['flake8', 'pylint']}
" Fix Python files with black and isort.
let g:ale_linter_aliases = {'pandoc': ['markdown']}
let g:ale_fixers = {'python': ['autopep8']}
let g:ale_python_flake8_args="--ignore=E501"
""let b:ale_linters = {'python': ['pylint']}
"let b:ale_fixers = {'python': ['yapf']}


