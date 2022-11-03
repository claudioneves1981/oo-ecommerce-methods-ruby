class Pagamento
  attr_accessor :quantidade, :produto, :preco, :valor, :estoque

  def initialize(quantidade: 0, produto: Produto.new, preco: 0)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @estoque = @produto.estoque
    @valor = (@estoque - produto.remove_estoque(@quantidade))* @produto.preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end

end

