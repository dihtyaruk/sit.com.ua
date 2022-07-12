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

/* oct_feelmart/template/product/manufacturer_list.twig */
class __TwigTemplate_e52b52fd5f7b9396a695fe3dc4bcba57391113be80c835a98e3674c73083d70f extends \Twig\Template
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
<div id=\"product-manufacturer\" class=\"container\">
\t";
        // line 3
        echo ($context["oct_breadcrumbs"] ?? null);
        echo "
\t<div class=\"row\">
\t    <div class=\"col-12\">
\t        <h1 class=\"fm-main-title fm-page-title\">";
        // line 6
        echo ($context["heading_title"] ?? null);
        echo "</h1>
\t    </div>
    </div>
\t<div class=\"content-top-box\">";
        // line 9
        echo ($context["content_top"] ?? null);
        echo "</div>
\t<div class=\"fm-content-manufacturer\">
\t\t<div class=\"row no-gutters\">
\t\t\t";
        // line 12
        echo ($context["column_left"] ?? null);
        echo "
\t\t\t";
        // line 13
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 14
            echo "\t\t\t";
            $context["class"] = "col-lg-6 is-cols";
            // line 15
            echo "\t\t\t";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 16
            echo "\t\t\t";
            $context["class"] = "col-lg-9";
            // line 17
            echo "\t\t\t";
        } else {
            // line 18
            echo "\t\t\t";
            $context["class"] = "col-lg-12 no-col";
            // line 19
            echo "\t\t\t";
        }
        // line 20
        echo "\t\t\t<div id=\"content\" class=\"";
        echo ($context["class"] ?? null);
        echo "\">
\t\t\t\t";
        // line 21
        if (($context["categories"] ?? null)) {
            // line 22
            echo "\t\t\t\t<div class=\"fm-content h-100\">
\t\t\t\t\t<div class=\"fm-content-title\">
\t\t\t\t\t\t<span>";
            // line 24
            echo ($context["text_index"] ?? null);
            echo "</span>";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                echo "&nbsp;&nbsp;&nbsp;<a href=\"javascript:;\" onclick=\"scrollToElement('#fm-to-go-";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 24);
                echo "');\">";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 24);
                echo "</a>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 25
            echo "\t\t\t\t\t</div>
\t\t\t\t\t";
            // line 26
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 27
                echo "\t\t\t\t\t<div id=\"fm-to-go-";
                echo twig_replace_filter(twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 27), [" " => ""]);
                echo "\" class=\"fm-manufacturer-title\">";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 27);
                echo "</div>
\t\t\t\t\t";
                // line 28
                if (twig_get_attribute($this->env, $this->source, $context["category"], "manufacturer", [], "any", false, false, false, 28)) {
                    // line 29
                    echo "\t\t\t\t\t";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_array_batch(twig_get_attribute($this->env, $this->source, $context["category"], "manufacturer", [], "any", false, false, false, 29), 5));
                    foreach ($context['_seq'] as $context["_key"] => $context["manufacturers"]) {
                        // line 30
                        echo "\t\t\t\t\t<div class=\"fm-manufacturer-item\">
\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t";
                        // line 32
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable($context["manufacturers"]);
                        foreach ($context['_seq'] as $context["_key"] => $context["manufacturer"]) {
                            // line 33
                            echo "\t\t\t\t\t\t\t<a href=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["manufacturer"], "href", [], "any", false, false, false, 33);
                            echo "\" class=\"fm-manufacturer-card d-flex flex-column align-items-center\">
\t\t\t\t\t\t\t";
                            // line 34
                            if ((twig_get_attribute($this->env, $this->source, $context["manufacturer"], "image", [], "any", true, true, false, 34) && twig_get_attribute($this->env, $this->source, $context["manufacturer"], "image", [], "any", false, false, false, 34))) {
                                // line 35
                                echo "\t\t\t\t\t\t\t\t<img src=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["manufacturer"], "image", [], "any", false, false, false, 35);
                                echo "\"";
                                if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                                    echo " data-srcset=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["manufacturer"], "image", [], "any", false, false, false, 35);
                                    echo " 100w\" srcset=\"";
                                    echo ($context["oct_lazy_image"] ?? null);
                                    echo " 100w\" sizes=\"100vw\" class=\"oct-lazy\"";
                                }
                                echo " alt=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["manufacturer"], "name", [], "any", false, false, false, 35);
                                echo "\">
\t\t\t\t\t\t\t";
                            }
                            // line 37
                            echo "\t\t\t\t\t\t\t<span class=\"fm-manufacturer-card-title\">";
                            echo twig_get_attribute($this->env, $this->source, $context["manufacturer"], "name", [], "any", false, false, false, 37);
                            echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['manufacturer'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 40
                        echo "\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['manufacturers'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 43
                    echo "\t\t\t\t\t";
                }
                // line 44
                echo "\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 45
            echo "\t\t\t\t</div>
\t\t\t\t";
        } else {
            // line 47
            echo "\t\t\t\t<div class=\"p-4\">
\t\t\t\t\t<p>";
            // line 48
            echo ($context["text_empty"] ?? null);
            echo "</p>
\t\t\t\t\t<a href=\"";
            // line 49
            echo ($context["continue"] ?? null);
            echo "\" class=\"fm-btn fm-btn-blue mt-3 d-inline-block\">";
            echo ($context["button_continue"] ?? null);
            echo "</a>
\t\t\t\t</div>
\t\t\t\t";
        }
        // line 52
        echo "\t\t\t</div>
\t\t\t";
        // line 53
        echo ($context["column_right"] ?? null);
        echo "
\t\t</div>
\t</div>
\t";
        // line 56
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
";
        // line 58
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/product/manufacturer_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  222 => 58,  217 => 56,  211 => 53,  208 => 52,  200 => 49,  196 => 48,  193 => 47,  189 => 45,  183 => 44,  180 => 43,  172 => 40,  162 => 37,  146 => 35,  144 => 34,  139 => 33,  135 => 32,  131 => 30,  126 => 29,  124 => 28,  117 => 27,  113 => 26,  110 => 25,  95 => 24,  91 => 22,  89 => 21,  84 => 20,  81 => 19,  78 => 18,  75 => 17,  72 => 16,  69 => 15,  66 => 14,  64 => 13,  60 => 12,  54 => 9,  48 => 6,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/product/manufacturer_list.twig", "");
    }
}
