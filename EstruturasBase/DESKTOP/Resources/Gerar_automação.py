from transformers import pipeline
import os
# Carregando modelo de geração de código
generator = pipeline("text-generation", model="microsoft/DialoGPT-medium", temperature=0.7)
BaseKeywordsDesktop = r"C:\Users\Gustavo Zanotto\AppData\Local\Programs\Python\Python39\Scripts\RobotFramework\EstruturasBase\DESKTOP\Resources\BaseKeywordsDesktop.robot"
BaseKeywordsWeb = r"C:\Users\Gustavo Zanotto\AppData\Local\Programs\Python\Python39\Scripts\RobotFramework\EstruturasBase\DESKTOP\Resources\BaseKeywordsWeb.robot"
Keywords = r"C:\Users\Gustavo Zanotto\AppData\Local\Programs\Python\Python39\Scripts\RobotFramework\EstruturasBase\DESKTOP\Resources\BDDKeywordsDesktop"
BDDKeywordsWeb = r"C:\Users\Gustavo Zanotto\AppData\Local\Programs\Python\Python39\Scripts\RobotFramework\EstruturasBase\DESKTOP\Resources\BDDKeywordsWeb.robot"
# Lendo o código do arquivo
# with open("LB-42 Cadastro e alteracao de Programacao de Horario", "r", encoding="utf-8") as f:
#     codigo = f.read()

with open(BaseKeywordsDesktop, "r", encoding="utf-8") as f:
    codigo1 = f.read()

with open(Keywords, "r", encoding="utf-8") as f:
    codigo2 = f.read()

with open(Keywords, "r", encoding="utf-8") as f:
    codigo3 = f.read()

with open(BDDKeywordsWeb, "r", encoding="utf-8") as f:
    codigo4 = f.read()

# Montando o prompt
prompt = f"""
# Código da automação:
{codigo1}
{codigo2}
{codigo3}
{codigo4}
Com base nos arquivos acima utilizando o framework: RobotFramework
Crie cenários e se necessário comandos para a automação dos seguintes cenários:
Cenário 1: cadastro de uma nova Tarifa 
    A tarifa é cadastrada na tela de cadastro de preços,
    informar o preço da tarifa
    e salvar a tarifa validando se foi salva com sucesso
"""

# Gerando saída
result = generator(prompt, max_length=512, temperature=0.3)

print(result[0]["generated_text"])