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

/* oct_feelmart/template/octemplates/menu/oct_sidebar_mobile.twig */
class __TwigTemplate_f48f3b1cdacf35137626e5fefc9f61d92f5fd106dc52b099a0367cdf05c36dd5 extends \Twig\Template
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
        echo "<nav id=\"fm_mobile_nav\" class=\"d-lg-none fixed-";
        echo ($context["sidebar_position"] ?? null);
        echo "\">
    <button type=\"button\" id=\"fm_mobile_menu_button\" onclick=\"fmSidebar('";
        // line 2
        echo ($context["oct_menu"] ?? null);
        echo "', 'menu');\" class=\"fm_mobile_nav-item fm_mobile_sidebar_toggle\"></button>
    <button type=\"button\" id=\"fm_mobile_user_button\" onclick=\"fmSidebar('";
        // line 3
        if (($context["isLogged"] ?? null)) {
            echo ($context["oct_account"] ?? null);
        } else {
            echo ($context["oct_login"] ?? null);
        }
        echo "', '";
        if (($context["isLogged"] ?? null)) {
            echo "account";
        } else {
            echo "login";
        }
        echo "');\" class=\"fm_mobile_nav-item fm_mobile_sidebar_toggle\"></button>
    ";
        // line 4
        if (($context["product_views_count"] ?? null)) {
            // line 5
            echo "    <button type=\"button\" id=\"fm_mobile_viewed_button\" onclick=\"fmSidebar('";
            echo ($context["oct_product_views"] ?? null);
            echo "', 'viewed');\" class=\"fm_mobile_nav-item fm_mobile_sidebar_toggle\"><span class=\"fm-menu-buttons-index fm-menu-viewed-index\">";
            echo ($context["product_views_count"] ?? null);
            echo "</span></button>
    ";
        }
        // line 7
        echo "    <button onclick=\"location.href='";
        echo ($context["compare_link"] ?? null);
        echo "';\" type=\"button\" id=\"fm_mobile_compare_button\" class=\"fm_mobile_nav-item\"><span class=\"fm-menu-buttons-index fm-menu-compare-index\">";
        echo ($context["compare_total"] ?? null);
        echo "</span></button>
    <button onclick=\"location.href='";
        // line 8
        echo ($context["wishlist_link"] ?? null);
        echo "';\" type=\"button\" id=\"fm_mobile_wishlist_button\" class=\"fm_mobile_nav-item\"><span class=\"fm-menu-buttons-index fm-menu-wishlist-index\">";
        echo ($context["wishlist_total"] ?? null);
        echo "</span></button>
    ";
        // line 9
        if ((array_key_exists("oct_popup_cart_status", $context) && ($context["oct_popup_cart_status"] ?? null))) {
            // line 10
            echo "    <button type=\"button\" id=\"fm_mobile_cart_button\" onclick=\"fmSidebar('";
            echo ($context["oct_cart"] ?? null);
            echo "', 'cart');\" class=\"fm_mobile_nav-item fm_mobile_sidebar_toggle\"><span class=\"fm-menu-buttons-index fm-menu-cart-index\">";
            echo ($context["total_products"] ?? null);
            echo "</span></button>
    ";
        } else {
            // line 12
            echo "    <button onclick=\"location.href='";
            echo ($context["cart_link"] ?? null);
            echo "';\" type=\"button\" id=\"fm_mobile_cart_button\" class=\"fm_mobile_nav-item\"><span class=\"fm-menu-buttons-index fm-menu-cart-index\">";
            echo ($context["total_products"] ?? null);
            echo "</span></button>
\t";
        }
        // line 14
        echo "</nav>";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/menu/oct_sidebar_mobile.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  101 => 14,  93 => 12,  85 => 10,  83 => 9,  77 => 8,  70 => 7,  62 => 5,  60 => 4,  46 => 3,  42 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/menu/oct_sidebar_mobile.twig", "");
    }
}
