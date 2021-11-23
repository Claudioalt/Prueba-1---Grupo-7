module Jor
  def self.plato_del_dia=(plato_hoy)
    @plato_del_dia = plato_hoy
  end

  def self.picantear!
    @plato_del_dia.poner_ajies!
  end
end

module Luchi
  def self.suavizar!(plato_hoy, exceso_ajies)
    if plato_hoy.descartable?
      plato_hoy.descartar_la_salsa!
    else
      plato_hoy.sacar_ajies! exceso_ajies
    end
  end
end

module Fideos
  @ajies = 0
  def self.ajies
    @ajies
  end

  def self.poner_ajies!
    @ajies += 5
  end

  def self.picantes?
    @ajies > 2
  end

  def self.descartable?
    @ajies > 10
  end

  def self.descartar_la_salsa!
    @ajies = 0
  end

  def self.sacar_ajies!(exceso_ajies)
    @ajies -= exceso_ajies
  end
end

puts Jor.plato_del_dia = Fideos
puts Fideos.ajies
puts Jor.picantear!
puts Luchi.suavizar! Fideos, 4
