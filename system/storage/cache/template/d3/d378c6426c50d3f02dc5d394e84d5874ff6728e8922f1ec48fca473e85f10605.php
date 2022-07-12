<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* oct_feelmart/template/octemplates/module/oct_popup_purchase_byoneclick.twig */
class __TwigTemplate_d7f670e7d245867d799ebb58014a9889dce4522df032f09305d838b2702b418e extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        if ((array_key_exists("oct_byoneclick_status", $context) && ($context["oct_byoneclick_status"] ?? null))) {
            // line 2
            echo "<div class=\"fm-product-one-click fm-product-right-block\">
\t<form action=\"javascript:;\" id=\"oct_purchase_byoneclick_form";
            // line 3
            echo ($context["oct_byoneclick_page"] ?? null);
            echo "\" method=\"post\">
\t\t<div class=\"fm-product-one-click-text\">";
            // line 4
            echo ($context["oct_product_oneclick"] ?? null);
            echo "</div>
\t\t<div class=\"input-group\">
\t\t\t<input type=\"tel\" name=\"telephone\" placeholder=\"";
            // line 6
            echo ($context["oct_product_oneclick_placeholder"] ?? null);
            echo "\" id=\"one_click_input\" class=\"one_click_input form-control\">
\t\t\t";
            // line 7
            if ((array_key_exists("oct_byoneclick_product_id", $context) && ($context["oct_byoneclick_product_id"] ?? null))) {
                // line 8
                echo "\t\t\t<input type=\"hidden\" name=\"product_id\" value=\"";
                echo ($context["oct_byoneclick_product_id"] ?? null);
                echo "\" />
\t\t\t";
            }
            // line 10
            echo "\t\t\t<input type=\"hidden\" name=\"oct_byoneclick\" value=\"1\" />
\t\t\t";
            // line 11
            if ((array_key_exists("oct_cart_in", $context) && ($context["oct_cart_in"] ?? null))) {
                // line 12
                echo "\t\t\t<input type=\"hidden\" name=\"oct_cart_in\" value=\"1\" />
\t\t\t";
            }
            // line 14
            echo "\t\t\t<span class=\"input-group-btn\">
\t\t\t\t<button class=\"fm-btn fm-input-with-btn fm-product-one-click-btn\" type=\"button\">";
            // line 15
            echo ($context["oct_product_oneclickbuy"] ?? null);
            echo "</button>
\t\t\t</span>
\t\t</div>
\t</form>
</div>
";
            // line 20
            if ((array_key_exists("oct_byoneclick_mask", $context) && ($context["oct_byoneclick_mask"] ?? null))) {
                // line 21
                echo "<script src=\"catalog/view/theme/oct_feelmart/js/jquery.inputmask.bundle.min.js\"></script>
<script>
fmInputMask ('#oct_purchase_byoneclick_form";
                // line 23
                echo ($context["oct_byoneclick_page"] ?? null);
                echo " .one_click_input', '";
                echo ($context["oct_byoneclick_mask"] ?? null);
                echo "');
</script>
";
            }
            // line 26
            echo "<script>
\$(\"#one_click_input\").on(\"change paste keyup\", function() {
\t\$(this).removeClass('error_style');
});
\$('#oct_purchase_byoneclick_form";
            // line 30
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " .fm-product-one-click-btn').on('click', function() {
\t\$.ajax({
        type: 'post',
        dataType: 'json',
        url: 'index.php?route=octemplates/module/oct_popup_purchase/makeorder',
        cache: false,
        data: \$('#oct_purchase_byoneclick_form";
            // line 36
            echo ($context["oct_byoneclick_page"] ?? null);
            echo "').serialize(),
        beforeSend: function() {
        \t\$('#oct_purchase_byoneclick_form";
            // line 38
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " .fm-product-one-click-btn').attr('disabled', 'disabled');
\t\t},
        complete: function() {
\t\t\t\$('#oct_purchase_byoneclick_form";
            // line 41
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " .fm-product-one-click-btn').removeAttr('disabled');
        },
        success: function(json) {
\t        if (json['error']) {
\t\t\t\tlet errorOption = '';

\t\t\t\t\$.each(json['error'], function(i, val) {
\t\t\t\t\tif (val) {
\t\t\t\t\t\t\$('#oct_purchase_byoneclick_form";
            // line 49
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " [name=\"' + i + '\"]').addClass('error_style');
\t\t\t\t\t\terrorOption += '<div class=\"alert-text-item\">' + val + '</div>';
\t\t\t\t\t}
\t\t\t\t});

\t\t\t\tfmNotify('danger', errorOption);
\t\t\t} else {
\t\t\t\tif (json['success']) {
\t\t\t\t\t\$(this).attr( \"disabled\", \"disabled\" );
\t\t\t\t\tsuccessOption = '<div class=\"alert-text-item\">' + json['success'] + '</div>';

\t\t\t\t\t\$('#oct_purchase_byoneclick_form";
            // line 60
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " #one_click_input').val('');
\t\t\t\t\t\$('#oct_purchase_byoneclick_form";
            // line 61
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " #one_click_input').removeClass('error_style');
\t\t\t\t\t\$('#oct_purchase_byoneclick_form";
            // line 62
            echo ($context["oct_byoneclick_page"] ?? null);
            echo " .fm-product-one-click-btn').prop('disabled', true);

\t\t\t\t\t";
            // line 64
            if ((array_key_exists("oct_cart_in", $context) && ($context["oct_cart_in"] ?? null))) {
                // line 65
                echo "\t\t\t\t\t\tsetTimeout(function () {
\t\t\t\t\t\t\t\$('.fm-menu-cart-index').html(0);
\t\t\t\t\t\t\t\$('.fm-menu-cart-text').html('";
                // line 67
                echo ($context["total_amount"] ?? null);
                echo "');
\t\t\t\t\t\t}, 100);

\t\t\t\t\t\t";
                // line 70
                if ((array_key_exists("oct_cart_page", $context) && ($context["oct_cart_page"] ?? null))) {
                    // line 71
                    echo "\t\t\t\t\t\t\tsetTimeout(function () {
\t\t\t\t\t\t\t\tdocument.location.reload(true);
\t\t\t\t\t\t\t}, 3000);
\t\t\t\t\t\t";
                }
                // line 75
                echo "\t\t\t\t\t";
            }
            // line 76
            echo "

            ";
            // line 78
            if ((array_key_exists("oct_analytics_google_ecommerce", $context) &&  !twig_test_empty(($context["oct_analytics_google_ecommerce"] ?? null)))) {
                // line 79
                echo "            if (typeof gtag != 'undefined' && json['ecommerce']) {
                gtag('event', 'purchase', json['ecommerce']);
            }
            ";
            }
            // line 83
            echo "
            ";
            // line 84
            if ((((array_key_exists("oct_analytics_yandex_ecommerce", $context) &&  !twig_test_empty(($context["oct_analytics_yandex_ecommerce"] ?? null))) && array_key_exists("oct_analytics_yandex_container", $context)) &&  !twig_test_empty(($context["oct_analytics_yandex_container"] ?? null)))) {
                // line 85
                echo "            window.";
                echo ($context["oct_analytics_yandex_container"] ?? null);
                echo " = window.";
                echo ($context["oct_analytics_yandex_container"] ?? null);
                echo " || [];
            if(typeof ";
                // line 86
                echo ($context["oct_analytics_yandex_container"] ?? null);
                echo " != 'undefined' && json['ecommerce']) {
                ";
                // line 87
                echo ($context["oct_analytics_yandex_container"] ?? null);
                echo ".push({
                    \"ecommerce\": {
                        \"purchase\": {
                            \"actionField\": {
                                \"id\" : json['ecommerce']['transaction_id']
                            },
                            \"products\": json['ecommerce']['items']
                        }
                    }
                });
            }
            ";
            }
            // line 99
            echo "            
\t\t\t\t\tfmNotify('success', successOption);

\t\t\t\t\t";
            // line 102
            if ((array_key_exists("isPopup", $context) && ($context["isPopup"] ?? null))) {
                // line 103
                echo "\t\t\t\t\t\toctPopupCart();
\t\t\t\t\t";
            } else {
                // line 105
                echo "\t\t\t\t\t\t";
                if ((($context["oct_byoneclick_page"] ?? null) == "_popup_cart")) {
                    // line 106
                    echo "\t\t\t\t\t\tfmSidebar('";
                    echo ($context["oct_cart"] ?? null);
                    echo "', 'cart');
\t\t\t\t\t\t";
                }
                // line 108
                echo "\t\t\t\t\t";
            }
            // line 109
            echo "\t\t\t\t}
\t\t\t}
        }
    });
});
</script>
";
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_popup_purchase_byoneclick.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  250 => 109,  247 => 108,  241 => 106,  238 => 105,  234 => 103,  232 => 102,  227 => 99,  212 => 87,  208 => 86,  201 => 85,  199 => 84,  196 => 83,  190 => 79,  188 => 78,  184 => 76,  181 => 75,  175 => 71,  173 => 70,  167 => 67,  163 => 65,  161 => 64,  156 => 62,  152 => 61,  148 => 60,  134 => 49,  123 => 41,  117 => 38,  112 => 36,  103 => 30,  97 => 26,  89 => 23,  85 => 21,  83 => 20,  75 => 15,  72 => 14,  68 => 12,  66 => 11,  63 => 10,  57 => 8,  55 => 7,  51 => 6,  46 => 4,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_popup_purchase_byoneclick.twig", "");
    }
}
