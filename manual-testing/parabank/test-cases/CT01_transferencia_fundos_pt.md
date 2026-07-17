# CT01 - Transferência de Fundos entre Contas

**ID:** TC-PBK-001  
**Módulo:** Transfer Funds (Serviços Bancários)  
**Prioridade:** Crítica (P0)  
**Autor:** Leo Tavares  
**Ambiente:** ParaBank (`https://parabank.parasoft.com/`)  

### Pré-condições
1. O usuário deve estar logado no ParaBank.
2. O usuário deve possuir no mínimo duas contas ativas (ex: Checking e Savings).
3. A conta de origem deve possuir saldo suficiente para a transferência.

### Procedimento de Execução

| Passo | Ação do Usuário (O que eu faço) | Resultado Esperado (O que o sistema deve fazer) | Status |
|---|---|---|---|
| 1 | No menu lateral, clicar no link "Transfer Funds". | O sistema deve redirecionar para a página "Transfer Funds". | Não Executado |
| 2 | Aguardar o carregamento dos comboboxes (dropdowns) de seleção de contas. | Os campos "From account" e "To account" devem ser preenchidos com os números das contas do usuário. | Não Executado |
| 3 | Inserir o valor "150.00" no campo *Amount*. | O campo numérico deve aceitar o valor. | Não Executado |
| 4 | Selecionar a conta de origem no campo *From account*. | A conta deve ser selecionada. | Não Executado |
| 5 | Selecionar a conta de destino no campo *To account*. | A conta deve ser selecionada, devendo ser diferente da conta de origem. | Não Executado |
| 6 | Clicar no botão "Transfer". | O sistema deve processar a transação e exibir a mensagem de sucesso "Transfer Complete!". A tela também deve confirmar o valor transferido e as contas envolvidas. | Não Executado |
| 7 | Clicar no link "Accounts Overview" no menu lateral. | O saldo da conta de origem deve ter sido reduzido em $150.00 e o saldo da conta de destino aumentado no mesmo valor. | Não Executado |

### Observações
- Testes financeiros exigem validações de *Boundary Values* (Valores Limites). O cenário acima valida apenas o Caminho Feliz. Em execução real, deve-se tentar transferir um valor superior ao saldo ou valor negativo/zero.
