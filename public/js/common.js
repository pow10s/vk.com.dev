$(function() {

    $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });

});
$('#sandbox-container input').datepicker();

$(document).ready(function() {
    $(".like").bind("click", function() {
        var link = $(this);
        var id = link.data('id');
        $.ajax({
            url: "/like",
            type: "POST",
            data: {id:id}, // Передаем ID нашей статьи
            dataType: "json",
            success: function(result) {
                if (!result.error){ //если на сервере не произойло ошибки то обновляем количество лайков на странице
                    link.addClass('active'); // помечаем лайк как "понравившийся"
                    $('.counter',link).html(result.count);
                }else{
                    alert(result.message);
                }
            }
        });
    });
});