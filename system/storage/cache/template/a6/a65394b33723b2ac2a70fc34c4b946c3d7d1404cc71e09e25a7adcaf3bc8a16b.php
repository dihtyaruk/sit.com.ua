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

/* oct_feelmart/template/error/not_found.twig */
class __TwigTemplate_c660be95db516d22c10e70f0841fb92a3d7deea2c26c1f756656ac7f112a615e extends \Twig\Template
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
        echo ($context["header"] ?? null);
        echo "
<div id=\"error-not-found\" class=\"container flex-container\">
\t<div class=\"content-top-box\">";
        // line 3
        echo ($context["content_top"] ?? null);
        echo "</div>
\t\t\t<div class=\"fm-content fm-404-content h-100 text-center\">
\t\t\t\t<h1 class=\"fm-main-title fm-404-content-title text-center\">";
        // line 5
        echo ($context["heading_title"] ?? null);
        echo "</h1>
\t\t\t\t";
        // line 6
        if ((array_key_exists("oct_404_image", $context) &&  !twig_test_empty(($context["oct_404_image"] ?? null)))) {
            echo " 
\t\t\t\t<div class=\"fm-404-content-image\"><img class=\"img-fluid\" src=\"";
            // line 7
            echo ($context["oct_404_image"] ?? null);
            echo "\" /></div>
\t\t\t\t";
        }
        // line 9
        echo "\t\t\t\t<div class=\"fm-404-content-text\">
\t\t\t\t\t<p>";
        // line 10
        echo ($context["text_error"] ?? null);
        echo "</p>
\t\t\t\t\t<a href=\"";
        // line 11
        echo ($context["continue"] ?? null);
        echo "\" class=\"fm-btn fm-btn-blue mt-3\">";
        echo ($context["button_continue"] ?? null);
        echo "</a>
\t\t\t\t</div>
\t\t\t</div>
\t";
        // line 14
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
";
        // line 16
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/error/not_found.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  80 => 16,  75 => 14,  67 => 11,  63 => 10,  60 => 9,  55 => 7,  51 => 6,  47 => 5,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/error/not_found.twig", "");
    }
}
