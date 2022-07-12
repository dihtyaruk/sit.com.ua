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

/* oct_feelmart/template/octemplates/module/oct_benefits.twig */
class __TwigTemplate_227cef9a9baf0e62b2fc1ac55db2ff407579d4f8ffd3cadd8714883722064f34 extends \Twig\Template
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
        echo "<div id=\"fm-shop-advantages-";
        echo ($context["module"] ?? null);
        echo "\" class=\"row row-padding-top fm-shop-advantages-row\">
\t";
        // line 2
        $context["key"] = 0;
        // line 3
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["oct_benefits"] ?? null));
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
        foreach ($context['_seq'] as $context["_key"] => $context["oct_benefit"]) {
            // line 4
            echo "    ";
            $context["key"] = (($context["key"] ?? null) + 1);
            // line 5
            echo "        ";
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "title", [], "any", false, true, false, 5), ($context["language_id"] ?? null), [], "array", true, true, false, 5) && (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "title", [], "any", false, false, false, 5)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4[($context["language_id"] ?? null)] ?? null) : null))) {
                // line 6
                echo "\t\t<div class=\"col-md-";
                if (($context["oct_main_class"] ?? null)) {
                    if ((twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 6) && ((($context["oct_class"] ?? null) == 4) || (($context["oct_class"] ?? null) == 12)))) {
                        echo "12";
                    } else {
                        echo "6";
                    }
                } else {
                    echo "6";
                }
                echo " col-lg-";
                echo ($context["oct_class"] ?? null);
                echo "\">
\t\t\t<div class=\"fm-advantages-block text-center h-100\" id=\"block";
                // line 7
                echo ($context["module"] ?? null);
                echo "-";
                echo ($context["key"] ?? null);
                echo "\">
\t\t\t\t<div class=\"fm-advantages-img\">
\t\t\t\t\t<i class=\"";
                // line 9
                echo twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "icon", [], "any", false, false, false, 9);
                echo "\"></i>
\t\t\t\t</div>
\t\t\t\t<div class=\"fm-advantages-title\">
\t\t\t\t\t";
                // line 12
                if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "link", [], "any", false, true, false, 12), ($context["language_id"] ?? null), [], "array", true, true, false, 12) && (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "link", [], "any", false, false, false, 12)) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144[($context["language_id"] ?? null)] ?? null) : null))) {
                    // line 13
                    echo "\t\t\t\t\t\t<a href=\"";
                    echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "link", [], "any", false, false, false, 13)) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b[($context["language_id"] ?? null)] ?? null) : null);
                    echo "\">";
                    echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "title", [], "any", false, false, false, 13)) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002[($context["language_id"] ?? null)] ?? null) : null);
                    echo "</a>
\t\t\t\t\t";
                } else {
                    // line 15
                    echo "\t\t\t\t\t\t";
                    echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "title", [], "any", false, false, false, 15)) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4[($context["language_id"] ?? null)] ?? null) : null);
                    echo "
\t\t\t\t\t";
                }
                // line 17
                echo "\t\t\t\t</div>
\t\t\t\t";
                // line 18
                if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "text", [], "any", false, true, false, 18), ($context["language_id"] ?? null), [], "array", true, true, false, 18) && (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "text", [], "any", false, false, false, 18)) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666[($context["language_id"] ?? null)] ?? null) : null))) {
                    // line 19
                    echo "\t\t\t\t<div class=\"fm-advantages-text\">
\t\t\t\t\t";
                    // line 20
                    echo (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "text", [], "any", false, false, false, 20)) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e[($context["language_id"] ?? null)] ?? null) : null);
                    echo "
\t\t\t\t</div>
\t\t\t\t";
                }
                // line 23
                echo "\t\t\t</div>
\t\t</div>
\t\t<style>
\t\t\t";
                // line 26
                if (twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_icon", [], "any", false, false, false, 26)) {
                    // line 27
                    echo "\t\t\t#block";
                    echo ($context["module"] ?? null);
                    echo "-";
                    echo ($context["key"] ?? null);
                    echo " .fm-advantages-img {color: ";
                    echo twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_icon", [], "any", false, false, false, 27);
                    echo ";}
\t\t\t";
                }
                // line 29
                echo "
\t\t\t";
                // line 30
                if (twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_title", [], "any", false, false, false, 30)) {
                    // line 31
                    echo "\t\t\t#block";
                    echo ($context["module"] ?? null);
                    echo "-";
                    echo ($context["key"] ?? null);
                    echo " .fm-advantages-title {color: ";
                    echo twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_title", [], "any", false, false, false, 31);
                    echo ";}
\t\t\t";
                }
                // line 33
                echo "
\t\t\t";
                // line 34
                if (twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_text", [], "any", false, false, false, 34)) {
                    // line 35
                    echo "\t\t\t#block";
                    echo ($context["module"] ?? null);
                    echo "-";
                    echo ($context["key"] ?? null);
                    echo " .fm-advantages-text {color: ";
                    echo twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_text", [], "any", false, false, false, 35);
                    echo ";}
\t\t\t";
                }
                // line 37
                echo "
\t\t\t";
                // line 38
                if (twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_fon_hover", [], "any", false, false, false, 38)) {
                    // line 39
                    echo "\t\t\t#block";
                    echo ($context["module"] ?? null);
                    echo "-";
                    echo ($context["key"] ?? null);
                    echo ":hover .fm-advantages-img, #block";
                    echo ($context["module"] ?? null);
                    echo "-";
                    echo ($context["key"] ?? null);
                    echo ":hover .fm-advantages-title {color: ";
                    echo twig_get_attribute($this->env, $this->source, $context["oct_benefit"], "color_fon_hover", [], "any", false, false, false, 39);
                    echo ";}
\t\t\t";
                }
                // line 41
                echo "        </style>
\t\t";
            }
            // line 43
            echo "\t";
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
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_benefit'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 44
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_benefits.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  210 => 44,  196 => 43,  192 => 41,  178 => 39,  176 => 38,  173 => 37,  163 => 35,  161 => 34,  158 => 33,  148 => 31,  146 => 30,  143 => 29,  133 => 27,  131 => 26,  126 => 23,  120 => 20,  117 => 19,  115 => 18,  112 => 17,  106 => 15,  98 => 13,  96 => 12,  90 => 9,  83 => 7,  68 => 6,  65 => 5,  62 => 4,  44 => 3,  42 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_benefits.twig", "");
    }
}
