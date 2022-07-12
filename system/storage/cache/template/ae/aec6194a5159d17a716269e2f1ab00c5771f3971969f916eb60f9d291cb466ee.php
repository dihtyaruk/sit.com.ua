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

/* oct_feelmart/template/extension/module/html.twig */
class __TwigTemplate_64664b77bc351acc039c5054af1ce2731a57c24cdac6e12ff5ade9c229cb9568 extends \Twig\Template
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
        echo "<div class=\"row row-padding-top\">
\t<div class=\"col-12\">
\t\t<div class=\"fm-html-box\">
\t\t\t";
        // line 4
        if (($context["heading_title"] ?? null)) {
            // line 5
            echo "\t\t\t<h1>";
            echo ($context["heading_title"] ?? null);
            echo "</h1>
\t\t\t";
        }
        // line 7
        echo "\t\t\t<div class=\"fm-html-box-text\">";
        echo ($context["html"] ?? null);
        echo "</div>
\t\t</div>
\t</div>
</div>";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/extension/module/html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  50 => 7,  44 => 5,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/extension/module/html.twig", "");
    }
}
