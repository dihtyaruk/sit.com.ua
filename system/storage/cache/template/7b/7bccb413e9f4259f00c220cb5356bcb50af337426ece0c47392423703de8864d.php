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

/* oct_feelmart/template/common/language.twig */
class __TwigTemplate_2f5f21179c1b4d12b528a7bbea7a0145bf2a8bb24d21e2971174656ed52bce2b extends \Twig\Template
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
        if ((twig_length_filter($this->env, ($context["languages"] ?? null)) > 1)) {
            // line 2
            echo "<div id=\"language\" class=\"language fm_mobile_menu_info-item\">
\t<div class=\"fm_mobile_menu_info-title d-lg-none\">";
            // line 3
            echo ($context["text_language"] ?? null);
            echo "</div>
\t<form action=\"";
            // line 4
            echo ($context["action"] ?? null);
            echo "\" class=\"h-100\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-language\">
\t\t<div class=\"btn-group h-100\">
\t\t\t<button class=\"btn btn-lang btn-link dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
\t\t\t\t";
            // line 7
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 8
                echo "\t\t\t    ";
                if ((twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 8) == ($context["code"] ?? null))) {
                    echo " 
\t\t\t    <img src=\"catalog/language/";
                    // line 9
                    echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 9);
                    echo "/";
                    echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 9);
                    echo ".png\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 9);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 9);
                    echo "\" class=\"lang\">
\t\t\t    <span>";
                    // line 10
                    echo ($context["text_language"] ?? null);
                    echo "</span>
\t\t\t    <i class=\"fas fa-chevron-down\"></i>
\t\t\t    ";
                }
                // line 13
                echo "\t\t\t    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 14
            echo "\t\t\t</button>
\t\t\t<div class=\"dropdown-menu dropdown-menu-right nav-dropdown-menu\">
\t\t\t\t";
            // line 16
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 17
                echo "\t\t          <button class=\"btn btn-block language-select";
                if ((twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 17) == ($context["code"] ?? null))) {
                    echo " active-item";
                }
                echo "\" type=\"button\" name=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 17);
                echo "\"><img src=\"catalog/language/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 17);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 17);
                echo ".png\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 17);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 17);
                echo "\" /> ";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 17);
                echo "</button>
\t\t        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 19
            echo "\t\t\t</div>
\t\t</div>
\t    <input type=\"hidden\" name=\"code\" value=\"\" />
\t    <input type=\"hidden\" name=\"redirect\" value=\"";
            // line 22
            echo ($context["redirect"] ?? null);
            echo "\" />
\t</form>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/common/language.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  119 => 22,  114 => 19,  91 => 17,  87 => 16,  83 => 14,  77 => 13,  71 => 10,  61 => 9,  56 => 8,  52 => 7,  46 => 4,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/common/language.twig", "");
    }
}
