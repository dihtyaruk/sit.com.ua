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

/* oct_feelmart/template/octemplates/module/oct_category_wall.twig */
class __TwigTemplate_8047f8ee7715c4416873de1efb59e6a275ff24cadd43ea3f8f60f8e5b7756a26 extends \Twig\Template
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
        if ( !twig_test_empty(($context["categories"] ?? null))) {
            // line 2
            echo "<div class=\"fm-category-wall-box\">
\t<div class=\"row row-padding-top\">
\t\t<div class=\"col-12 fm-main-title\">";
            // line 4
            echo ($context["heading_title"] ?? null);
            echo "</div>
\t</div>
\t<div class=\"row no-gutters\">
\t\t";
            // line 7
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 8
                echo "\t  \t<div class=\"col-12 col-sm-6 col-lg-3\">
\t  \t\t<div class=\"fm-category-wall-item h-100\">
\t            <div class=\"fm-category-wall-item-info\">
\t            \t<a href=\"";
                // line 11
                echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 11);
                echo "\" class=\"fm-category-wall-item-title\">
\t            \t\t";
                // line 12
                if (twig_get_attribute($this->env, $this->source, $context["category"], "thumb", [], "any", false, false, false, 12)) {
                    // line 13
                    echo "\t                \t\t<img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "thumb", [], "any", false, false, false, 13);
                    echo "\"";
                    if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                        echo " data-srcset=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "thumb", [], "any", false, false, false, 13);
                        echo " 100w\" srcset=\"";
                        echo ($context["oct_lazy_image"] ?? null);
                        echo " 100w\" sizes=\"100vw\" class=\"oct-lazy\"";
                    }
                    echo " alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 13);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 13);
                    echo "\" />
\t                \t";
                }
                // line 15
                echo "\t\t\t\t\t\t<span>";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 15);
                echo "</span>
\t\t\t\t\t</a>
\t\t\t\t\t";
                // line 17
                if (twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 17)) {
                    // line 18
                    echo "\t\t\t\t\t<ul class=\"list-unstyled\">
\t\t\t\t\t\t";
                    // line 19
                    $context["countstop"] = 1;
                    // line 20
                    echo "\t\t\t\t\t\t";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 20));
                    foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                        // line 21
                        echo "\t\t\t\t\t\t\t";
                        $context["countstop"] = (($context["countstop"] ?? null) + 1);
                        // line 22
                        echo "\t\t\t\t\t        <li><a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 22);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 22);
                        echo "</a></li>
\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 24
                    echo "\t\t\t\t    </ul>
\t\t            ";
                }
                // line 26
                echo "\t            </div>
\t            <div class=\"fm-module-overlay\">
\t\t            <div class=\"fm-module-overlay-btn-box\">
\t\t                <a href=\"";
                // line 29
                echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 29);
                echo "\" class=\"fm-module-overlay-btn fm-btn\">";
                echo ($context["text_see_more"] ?? null);
                echo "</a>
\t\t            </div>
\t            </div>
\t\t\t</div>
\t\t</div>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 35
            echo "\t</div>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_category_wall.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  137 => 35,  123 => 29,  118 => 26,  114 => 24,  103 => 22,  100 => 21,  95 => 20,  93 => 19,  90 => 18,  88 => 17,  82 => 15,  64 => 13,  62 => 12,  58 => 11,  53 => 8,  49 => 7,  43 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_category_wall.twig", "");
    }
}
