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

/* oct_feelmart/template/octemplates/module/oct_banner_plus.twig */
class __TwigTemplate_aebd4c8805ef788bd606f13ccd900ad414435f4f24a48a5d7bfb6a8b917bf391 extends \Twig\Template
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
        if ((twig_length_filter($this->env, ($context["oct_banner_pluss"] ?? null)) <= 2)) {
            // line 2
            echo "<div class=\"fm-banner-plus-box\">
\t<div class=\"row";
            // line 3
            if (((($context["position"] ?? null) == "column_left") || (($context["position"] ?? null) == "column_right"))) {
                echo " fm-module-column-box";
            } else {
                echo " row-padding-top no-gutters";
            }
            echo "\">
\t\t";
            // line 4
            $context["key"] = 0;
            // line 5
            echo "\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["oct_banner_pluss"] ?? null));
            $context['loop'] = [
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            ];
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
                // line 6
                echo "\t\t";
                $context["key"] = (($context["key"] ?? null) + 1);
                // line 7
                echo "\t\t";
                if ((twig_length_filter($this->env, ($context["oct_banner_pluss"] ?? null)) == 1)) {
                    // line 8
                    echo "\t\t<div id=\"oct_banner_plus_";
                    echo ($context["module"] ?? null);
                    echo "_";
                    echo ($context["key"] ?? null);
                    echo "\" class=\"col-lg-12\">
\t\t\t<div class=\"fm-banner-plus-wrap\">
\t\t\t\t<div class=\"fm-banner-plus-title\">";
                    // line 10
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 10);
                    echo "</div>
\t            <div class=\"fm-banner-plus-info d-flex justify-content-between align-items-center fm-banner-plus-content\">
\t\t            <div class=\"fm-banner-plus-info\">
\t\t                <div class=\"fm-banner-plus-text\">";
                    // line 13
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "description", [], "any", false, false, false, 13);
                    echo "</div>
\t\t                <a href=\"";
                    // line 14
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 14);
                    echo "\" class=\"fm-banner-plus-btn fm-btn\">";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "button", [], "any", false, false, false, 14);
                    echo "</a>
\t\t            </div>
\t\t            <div class=\"fm-banner-plus-img\">
\t\t                <img src=\"";
                    // line 17
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 17);
                    echo "\"";
                    if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                        echo " data-srcset=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 17);
                        echo " 100w\" srcset=\"";
                        echo ($context["oct_lazy_image"] ?? null);
                        echo " 100w\" sizes=\"100vw\" class=\"oct-lazy\"";
                    }
                    echo " alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 17);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 17);
                    echo "\" />
\t\t            </div>
\t            </div>
\t\t\t</div>
\t\t</div>
\t\t";
                } elseif ((twig_length_filter($this->env,                 // line 22
($context["oct_banner_pluss"] ?? null)) == 2)) {
                    // line 23
                    echo "\t\t<div id=\"oct_banner_plus_";
                    echo ($context["module"] ?? null);
                    echo "_";
                    echo ($context["key"] ?? null);
                    echo "\" class=\"";
                    if ((twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 23) == 1)) {
                        echo " col-md-12 col-lg-7";
                    } elseif ((twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 23) == 2)) {
                        echo " col-md-12 col-lg-5 fm-banner-plus-second";
                    }
                    echo "\">
\t\t\t<div class=\"fm-banner-plus-wrap h-100\">
\t\t\t\t<div class=\"fm-banner-plus-title\">";
                    // line 25
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 25);
                    echo "</div>
\t\t\t\t<div class=\"d-flex justify-content-between align-items-center fm-banner-plus-content\">
\t\t\t\t\t<div class=\"fm-banner-plus-info\">
\t\t                <div class=\"fm-banner-plus-text\">
\t\t                \t<p>";
                    // line 29
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "description", [], "any", false, false, false, 29);
                    echo "</p>
\t\t                </div>
\t\t                <a href=\"";
                    // line 31
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 31);
                    echo "\" class=\"fm-banner-plus-btn fm-btn\">";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "button", [], "any", false, false, false, 31);
                    echo "</a>
\t\t            </div>
\t\t            <div class=\"fm-banner-plus-img\">
\t\t                <img src=\"";
                    // line 34
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 34);
                    echo "\"";
                    if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                        echo " data-srcset=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 34);
                        echo " 100w\" srcset=\"";
                        echo ($context["oct_lazy_image"] ?? null);
                        echo " 100w\" sizes=\"100vw\" class=\"oct-lazy\"";
                    }
                    echo " alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 34);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 34);
                    echo "\" />
\t\t            </div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t\t";
                }
                // line 40
                echo "\t\t<style>
\t\t\t#oct_banner_plus_";
                // line 41
                echo ($context["module"] ?? null);
                echo "_";
                echo ($context["key"] ?? null);
                echo " .fm-banner-plus-wrap {background: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "background_color", [], "any", false, false, false, 41);
                echo ";}
\t\t\t#oct_banner_plus_";
                // line 42
                echo ($context["module"] ?? null);
                echo "_";
                echo ($context["key"] ?? null);
                echo " .fm-banner-plus-title {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title_color", [], "any", false, false, false, 42);
                echo ";}
\t\t\t#oct_banner_plus_";
                // line 43
                echo ($context["module"] ?? null);
                echo "_";
                echo ($context["key"] ?? null);
                echo " .fm-banner-plus-text {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "text_color", [], "any", false, false, false, 43);
                echo ";}
\t\t\t#oct_banner_plus_";
                // line 44
                echo ($context["module"] ?? null);
                echo "_";
                echo ($context["key"] ?? null);
                echo " .fm-banner-plus-btn {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "button_color", [], "any", false, false, false, 44);
                echo "; background: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "button_background", [], "any", false, false, false, 44);
                echo ";}
\t\t\t#oct_banner_plus_";
                // line 45
                echo ($context["module"] ?? null);
                echo "_";
                echo ($context["key"] ?? null);
                echo " .fm-banner-plus-btn:hover {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "button_text_hover", [], "any", false, false, false, 45);
                echo "; background: ";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "button_background_hover", [], "any", false, false, false, 45);
                echo ";}
\t\t</style>
\t\t";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 48
            echo "\t</div>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_banner_plus.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  239 => 48,  216 => 45,  206 => 44,  198 => 43,  190 => 42,  182 => 41,  179 => 40,  158 => 34,  150 => 31,  145 => 29,  138 => 25,  124 => 23,  122 => 22,  102 => 17,  94 => 14,  90 => 13,  84 => 10,  76 => 8,  73 => 7,  70 => 6,  52 => 5,  50 => 4,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_banner_plus.twig", "");
    }
}
