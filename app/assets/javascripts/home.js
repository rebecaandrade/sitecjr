(function(){

  $(document).ready(function(){

    $(".quem-somos-botao").click(function(){
      $("section[role=who-we-are]").animatescroll();
    });

    $(".portifolio-botao").click(function(){
      $("section[role=projects]").animatescroll();
    });

    $(".membros-botao").click(function(){
      $("section[role=members]").animatescroll();
    });

    $(".contato-botao").click(function(){
      $("section[role=contact]").animatescroll();
    });

  });

})();
