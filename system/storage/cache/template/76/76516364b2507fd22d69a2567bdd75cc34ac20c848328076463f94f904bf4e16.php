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

/* oct_feelmart/template/product/review.twig */
class __TwigTemplate_4171dcde65f785808a1646062fa68aa468851e296af0310bb55ad12b3bbae755 extends \Twig\Template
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
        if (($context["reviews"] ?? null)) {
            // line 2
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["reviews"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["review"]) {
                // line 3
                echo "<div class=\"fm-review\">
\t<div class=\"row align-items-stretch\">
\t\t<div class=\"col-md-4 col-lg-3 fm-review-info-left text-center\">
\t\t\t<div class=\"fm-review-icon\">
\t\t\t\t<img src=\"catalog/view/theme/oct_feelmart/img/user-icon.svg\" alt=\"";
                // line 7
                echo twig_get_attribute($this->env, $this->source, $context["review"], "author", [], "any", false, false, false, 7);
                echo "\">
\t\t\t</div>
\t\t\t<div class=\"fm-review-name\">";
                // line 9
                echo twig_get_attribute($this->env, $this->source, $context["review"], "author", [], "any", false, false, false, 9);
                echo "</div>
\t\t\t<div class=\"fm-review-date\">";
                // line 10
                echo twig_get_attribute($this->env, $this->source, $context["review"], "date_added", [], "any", false, false, false, 10);
                echo "</div>
\t\t\t<div class=\"fm-review-rating-text\">";
                // line 11
                echo ($context["text_oct_review"] ?? null);
                echo "</div>
\t\t\t<div class=\"fm-rating-center d-flex justify-content-center\">
\t\t\t\t<div class=\"fm-rating-center d-flex justify-content-center\">
\t\t\t\t";
                // line 14
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(range(1, 5));
                foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                    // line 15
                    echo "\t\t\t      ";
                    if ((twig_get_attribute($this->env, $this->source, $context["review"], "rating", [], "any", false, false, false, 15) < $context["i"])) {
                        // line 16
                        echo "\t\t\t      <span class=\"fm-module-rating-star\"></span>
\t\t\t      ";
                    } else {
                        // line 18
                        echo "\t\t\t      <span class=\"fm-module-rating-star fm-module-rating-star-is\"></span>
\t\t\t      ";
                    }
                    // line 20
                    echo "\t\t\t    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 21
                echo "\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t\t<div class=\"col-md-8 col-lg-9 fm-review-info-right\">
\t\t\t<div class=\"fm-review-text\">";
                // line 25
                echo twig_get_attribute($this->env, $this->source, $context["review"], "text", [], "any", false, false, false, 25);
                echo "</div>
\t\t\t";
                // line 26
                if (twig_get_attribute($this->env, $this->source, $context["review"], "reply", [], "any", false, false, false, 26)) {
                    // line 27
                    echo "\t\t\t<div class=\"fm-review-admin\">
\t\t\t\t<div class=\"fm-review-admin-title\">";
                    // line 28
                    echo ($context["oct_product_answer_admin"] ?? null);
                    echo "</div>
\t\t\t\t<div class=\"fm-review-admin-text\">";
                    // line 29
                    echo twig_get_attribute($this->env, $this->source, $context["review"], "reply", [], "any", false, false, false, 29);
                    echo "</div>
\t\t\t</div>
\t\t\t";
                }
                // line 31
                echo "\t
\t\t</div>
\t</div>
</div>
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['review'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 36
            echo ($context["pagination"] ?? null);
            echo "
";
        } else {
            // line 38
            echo "<div class=\"p-4\">";
            echo ($context["text_no_reviews"] ?? null);
            echo "</div>
";
        }
        // line 39
        echo " ";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/product/review.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  135 => 39,  129 => 38,  124 => 36,  114 => 31,  108 => 29,  104 => 28,  101 => 27,  99 => 26,  95 => 25,  89 => 21,  83 => 20,  79 => 18,  75 => 16,  72 => 15,  68 => 14,  62 => 11,  58 => 10,  54 => 9,  49 => 7,  43 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/product/review.twig", "");
    }
}
