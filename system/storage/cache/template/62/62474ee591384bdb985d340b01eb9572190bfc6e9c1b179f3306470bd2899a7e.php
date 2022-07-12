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

/* oct_feelmart/template/common/cart.twig */
class __TwigTemplate_ce0df22cdf3723a684e3f6534b8fdd72303d177ef5036bdd19ec1ed868f404bf extends \Twig\Template
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
        if ((array_key_exists("oct_popup_cart_status", $context) && ($context["oct_popup_cart_status"] ?? null))) {
            // line 2
            echo "<button title=\"";
            echo ($context["oct_cart"] ?? null);
            echo "\" id=\"cart\" class=\"fm-menu-cart-box d-flex align-items-center\" type=\"button\" onclick=\"fmSidebar('";
            echo ($context["oct_cart"] ?? null);
            echo "', 'cart');\">
";
        } else {
            // line 4
            echo "<button title=\"";
            echo ($context["oct_cart"] ?? null);
            echo "\" id=\"cart\" type=\"button\" class=\"fm-menu-cart-box d-flex align-items-center\" onclick=\"location = '";
            echo ($context["cart"] ?? null);
            echo "';\">
";
        }
        // line 6
        echo "    <img src=\"catalog/view/theme/oct_feelmart/img/cart-icon.svg\" alt=\"cart-icon\">
    <span class=\"fm-menu-buttons-index fm-menu-cart-index\">";
        // line 7
        echo ($context["total_products"] ?? null);
        echo "</span>
    <span class=\"fm-menu-cart-text\">";
        // line 8
        echo ($context["total_amount"] ?? null);
        echo "</span>
</button>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/common/cart.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  62 => 8,  58 => 7,  55 => 6,  47 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/common/cart.twig", "");
    }
}
