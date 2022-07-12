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

/* oct_feelmart/template/extension/module/category.twig */
class __TwigTemplate_e87048c04bb970731974b0ad78221236543ce1820c8e8d48bb9cccc6f622edb5 extends \Twig\Template
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
        if (($context["categories"] ?? null)) {
            // line 2
            echo "<div class=\"fm-module-column-box\">
\t<div class=\"fm-column-title\">";
            // line 3
            echo ($context["text_module_category"] ?? null);
            echo "</div>
\t<ul class=\"fm-categories-box list-unstyled\">
\t\t";
            // line 5
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 6
                echo "\t\t\t <li class=\"fm-categories-item";
                if ((twig_get_attribute($this->env, $this->source, $context["category"], "category_id", [], "any", false, false, false, 6) == ($context["category_id"] ?? null))) {
                    echo " active";
                }
                echo "\"><span class=\"d-flex justify-content-between\"><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 6);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 6);
                echo "</a>";
                if (twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 6)) {
                    echo "<a href=\"javascript:void(0);\" class=\"fm-categories-toggle\"><i class=\"fas fa-chevron-down\"></i></a>";
                }
                echo "</span>
\t\t\t";
                // line 7
                if (twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 7)) {
                    // line 8
                    echo "\t\t\t<ul class=\"fm-categories-children fm-categories-2 list-unstyled\">
\t\t\t";
                    // line 9
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 9));
                    foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                        // line 10
                        echo "\t\t\t\t<li class=\"fm-categories-item";
                        if ((twig_get_attribute($this->env, $this->source, $context["child"], "category_id", [], "any", false, false, false, 10) == ($context["child_id"] ?? null))) {
                            echo " active";
                        }
                        echo "\"><span class=\"d-flex justify-content-between\"><a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 10);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 10);
                        echo "</a>";
                        if (twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 10)) {
                            echo "<a href=\"javascript:void(0);\" class=\"fm-categories-toggle\"><i class=\"fas fa-chevron-down\"></i></a>";
                        }
                        echo "</span>
\t\t\t\t";
                        // line 11
                        if (twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 11)) {
                            // line 12
                            echo "\t\t\t\t<ul class=\"fm-categories-children fm-categories-3 list-unstyled\">
\t\t        \t";
                            // line 13
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 13));
                            foreach ($context['_seq'] as $context["_key"] => $context["ch"]) {
                                // line 14
                                echo "\t\t            \t<li class=\"fm-categories-item";
                                if ((twig_get_attribute($this->env, $this->source, $context["ch"], "category_id", [], "any", false, false, false, 14) == ($context["ch_id"] ?? null))) {
                                    echo " active";
                                }
                                echo "\"><a href=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["ch"], "href", [], "any", false, false, false, 14);
                                echo "\">";
                                echo twig_get_attribute($this->env, $this->source, $context["ch"], "name", [], "any", false, false, false, 14);
                                echo "</a></li>
\t\t\t\t\t";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ch'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 16
                            echo "\t\t\t\t</ul>
\t\t        ";
                        }
                        // line 18
                        echo "\t\t        </li>
\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 20
                    echo "\t\t\t</ul>
\t\t\t";
                }
                // line 22
                echo "\t\t\t</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 24
            echo "\t</ul>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/extension/module/category.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  136 => 24,  129 => 22,  125 => 20,  118 => 18,  114 => 16,  99 => 14,  95 => 13,  92 => 12,  90 => 11,  75 => 10,  71 => 9,  68 => 8,  66 => 7,  51 => 6,  47 => 5,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/extension/module/category.twig", "");
    }
}
