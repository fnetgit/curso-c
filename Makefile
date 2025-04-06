# Variáveis
SRC = $(wildcard *.c)
BIN = executaveis
EXEC = $(patsubst %.c, $(BIN)/%, $(SRC)) # Corrige os executáveis

# Regra padrão: compilar todos os arquivos
all: $(EXEC)

# Compilar arquivos individuais
$(BIN)/%: %.c
	@mkdir -p $(BIN)
	@gcc -Wall -Wextra -g $< -o $@

# Compilar e rodar diretamente com: make nome (ex: make saida_formatada)
%: %.c
	@mkdir -p $(BIN)
	@gcc -Wall -Wextra -g $< -o $(BIN)/$@
	@./$(BIN)/$@

# Rodar um programa sem recompilar se ele já existir
run:
	@bash -c 'read -p "Nome do arquivo (sem .c): " name; \
	if [ -f "$(BIN)/$$name" ]; then \
		"./$(BIN)/$$name"; \
	else \
		make "$(BIN)/$$name" && "./$(BIN)/$$name"; \
	fi'

# Rodar todos os executáveis compilados
run-all: all
	@for bin in $(EXEC); do \
		echo "Executando $$bin..."; \
		./$$bin; \
	done

# Apagar os arquivos compilados
clean:
	rm -rf $(BIN)



# O make é uma ferramenta que automatiza a compilação de programas, especialmente os 
# escritos em linguagens como C e C++. Ele lê um arquivo chamado Makefile, 
# que contém regras sobre como compilar e construir o programa.

# Por que usar:
# 1. Organiza dependências → Ajuda em projetos grandes com vários arquivos .c.
# 2. Compila apenas arquivos modificados → Evita recompilar tudo do zero.
# 3. Facilita a compilação → Não precisa lembrar comandos longos de gcc.
# 4. Automatiza tarefas → Pode rodar testes, limpar arquivos, etc.

# ---------------------Comandos do código acima-----------------------------
# Compilar e rodar arquivo:                  make run
# Compilar e rodar todos os executáveis:     make run-all
# Compilar e rodar um arquivo direto:        make nome_arquivo (ex: make saida_formatada)
# Limpar todos os executáveis:               make clean
