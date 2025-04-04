# Definição do compilador
CC = gcc

# Define a pasta onde os executáveis serão salvos
OUTDIR = executaveis

# Obtém todos os arquivos .c do diretório
SRC = $(wildcard *.c)

# Cria uma lista de executáveis com base nos arquivos .c
OUT = $(patsubst %.c, $(OUTDIR)/%, $(SRC))

# Regra padrão (compila todos os arquivos .c)
all: $(OUT)

# Regra para compilar um único arquivo pelo nome (ex: make meu_programa)
$(OUTDIR)/%: %.c | $(OUTDIR)
	$(CC) $< -o $@
	echo "Compilado: $@"
	@./$@

# Criar a pasta executáveis se não existir
$(OUTDIR):
	mkdir -p $(OUTDIR)

# Regra para rodar o último executável compilado
run: all
	@last_exec=$$(ls -t $(OUTDIR) | head -n 1); \
	if [ -n "$$last_exec" ]; then \
		echo "Executando: $(OUTDIR)/$$last_exec"; \
		$(OUTDIR)/$$last_exec; \
	else \
		echo "Nenhum executável encontrado!"; \
	fi

# Regra para rodar todos os executáveis
run-all: all
	@for exec in $(OUT); do \
		echo "Executando $$exec..."; \
		$$exec; \
	done

# Regra para limpar os executáveis
clean:
	rm -rf $(OUTDIR)/*


# O make é uma ferramenta que automatiza a compilação de programas, especialmente os 
# escritos em linguagens como C e C++. Ele lê um arquivo chamado Makefile, 
# que contém regras sobre como compilar e construir o programa.

# Por que usar:
# 1. Organiza dependências → Ajuda em projetos grandes com vários arquivos .c.
# 2. Compila apenas arquivos modificados → Evita recompilar tudo do zero.
# 3. Facilita a compilação → Não precisa lembrar comandos longos de gcc.
# 4. Automatiza tarefas → Pode rodar testes, limpar arquivos, etc.

# ---------------------Comandos do código acima-----------------------------
# Compilar um arquivo específico: make meu_programa
# Compilar todos os programas:    make
# Rodar o último compilado:       make run
# Rodar todos os executáveis:     make run-all
# Limpar todos os executaveis:    make clean
