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

/* oct_feelmart/template/octemplates/module/oct_slideshow_plus.twig */
class __TwigTemplate_d1b071a4b9562e997768ca48c146b857aa59685796040bacf81fea8a6fb0f874 extends \Twig\Template
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
        echo "<div class=\"row row-padding-top fm-slideshow-plus-inner\">
\t<div class=\"";
        // line 2
        if (($context["status_additional_banners"] ?? null)) {
            echo "col-lg-8 col-xl-9";
        } else {
            echo "col-lg-12";
        }
        if ((($context["position_banners"] ?? null) == 0)) {
            echo " order-1";
        }
        echo "\">
\t\t<div id=\"fm-slideshow-plus-";
        // line 3
        echo ($context["module"] ?? null);
        echo "\" class=\"fm-slideshow-plus h-100\">
\t\t\t";
        // line 4
        $context["key"] = 0;
        // line 5
        echo "\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["oct_slideshows_plus"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item_slide"]) {
            // line 6
            echo "\t\t\t";
            $context["key"] = (($context["key"] ?? null) + 1);
            // line 7
            echo "\t\t\t<div class=\"fm-slideshow-plus-item fm-slideshow-plus-item_";
            echo ($context["key"] ?? null);
            echo "\">
\t\t\t\t<div class=\"fm-slideshow-plus-item-title\">";
            // line 8
            echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "title", [], "any", false, false, false, 8);
            echo "</div>
\t\t\t\t<div class=\"fm-slideshow-plus-item-info d-flex justify-content-between\">
\t\t\t\t\t<div class=\"fm-slideshow-plus-item-text\">
\t\t\t\t\t\t<p>";
            // line 11
            echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "description", [], "any", false, false, false, 11);
            echo "</p>
\t\t\t\t\t\t<a href=\"";
            // line 12
            echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "link", [], "any", false, false, false, 12);
            echo "\" class=\"fm-slideshow-plus-item-btn fm-btn\">";
            echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "button", [], "any", false, false, false, 12);
            echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"fm-slideshow-plus-item-img h-100\">
\t\t\t\t\t\t<img src=\"";
            // line 15
            echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "image", [], "any", false, false, false, 15);
            echo "\" alt=\"";
            echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "title", [], "any", false, false, false, 15);
            echo "\">
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t<style>
\t\t\t\t\t";
            // line 19
            if (twig_get_attribute($this->env, $this->source, $context["item_slide"], "background_color", [], "any", false, false, false, 19)) {
                // line 20
                echo "\t\t\t\t\t#fm-slideshow-plus-";
                echo ($context["module"] ?? null);
                echo " .fm-slideshow-plus-item_";
                echo ($context["key"] ?? null);
                echo " {background-color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "background_color", [], "any", false, false, false, 20);
                echo ";}
\t\t\t\t\t";
            }
            // line 22
            echo "\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["item_slide"], "title_color", [], "any", false, false, false, 22)) {
                // line 23
                echo "\t\t\t\t\t#fm-slideshow-plus-";
                echo ($context["module"] ?? null);
                echo " .fm-slideshow-plus-item_";
                echo ($context["key"] ?? null);
                echo " .fm-slideshow-plus-item-title {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "title_color", [], "any", false, false, false, 23);
                echo ";}
\t\t\t\t\t";
            }
            // line 25
            echo "\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["item_slide"], "text_color", [], "any", false, false, false, 25)) {
                // line 26
                echo "\t\t\t\t\t#fm-slideshow-plus-";
                echo ($context["module"] ?? null);
                echo " .fm-slideshow-plus-item_";
                echo ($context["key"] ?? null);
                echo " .fm-slideshow-plus-item-text {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "text_color", [], "any", false, false, false, 26);
                echo ";}
\t\t\t\t\t";
            }
            // line 28
            echo "\t\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_color", [], "any", false, false, false, 28) && twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_background", [], "any", false, false, false, 28))) {
                // line 29
                echo "\t\t\t\t\t#fm-slideshow-plus-";
                echo ($context["module"] ?? null);
                echo " .fm-slideshow-plus-item_";
                echo ($context["key"] ?? null);
                echo " .fm-slideshow-plus-item-btn {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_color", [], "any", false, false, false, 29);
                echo ";background-color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_background", [], "any", false, false, false, 29);
                echo ";}
\t\t\t\t\t";
            }
            // line 31
            echo "\t\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_color_hover", [], "any", false, false, false, 31) && twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_background_hover", [], "any", false, false, false, 31))) {
                // line 32
                echo "\t\t\t\t\t#fm-slideshow-plus-";
                echo ($context["module"] ?? null);
                echo " .fm-slideshow-plus-item_";
                echo ($context["key"] ?? null);
                echo " .fm-slideshow-plus-item-btn:hover {color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_color_hover", [], "any", false, false, false, 32);
                echo ";background-color: ";
                echo twig_get_attribute($this->env, $this->source, $context["item_slide"], "button_background_hover", [], "any", false, false, false, 32);
                echo ";}
\t\t\t\t\t";
            }
            // line 34
            echo "\t\t\t\t</style>
\t\t\t</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item_slide'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 37
        echo "\t\t</div>
\t\t<script>
\t\t\t\$( document ).ready(function() {

\t\t\t\t\$('#fm-slideshow-plus-";
        // line 41
        echo ($context["module"] ?? null);
        echo "').slick({
\t\t\t\t\tautoplay: true,
\t\t\t\t\tdots: true,
\t\t\t\t\tarrows: false,
\t\t\t\t\tinfinite: true,
\t\t\t\t\tautoplaySpeed: 5000,
\t\t\t\t\tslidesToShow: 1
\t\t\t\t});
\t\t\t});
\t\t</script>
\t</div>
\t";
        // line 52
        if (($context["status_additional_banners"] ?? null)) {
            // line 53
            echo "\t<div class=\"col-lg-4 col-xl-3\">
\t\t<div class=\"fm-promotional-product h-100\">
\t\t\t<div class=\"fm-promotional-product-header\">
\t\t\t\t";
            // line 56
            echo ($context["text_promotional_product"] ?? null);
            echo "
\t\t\t</div>
\t\t\t<div id=\"fm-promotional-product\">
\t\t\t\t";
            // line 59
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 60
                echo "\t\t\t\t<div class=\"fm-promotional-product-item ";
                if ( !twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 60)) {
                    echo " fm-no-stock";
                }
                echo "\">
\t\t\t\t\t<div class=\"fm-promotional-product-item-img\">
\t\t\t\t\t\t<a href=\"";
                // line 62
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 62);
                echo "\"><img class=\"img-fluid\" src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 62);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 62);
                echo "\" /></a>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"fm-promotional-product-item-info\">
\t\t\t\t\t\t";
                // line 65
                if ( !(twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 65) === false)) {
                    // line 66
                    echo "\t\t\t\t\t\t<div class=\"fm-module-rating d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t\t<div class=\"fm-module-rating-stars d-flex align-items-center\">
\t\t\t\t\t\t\t\t";
                    // line 68
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(range(1, 5));
                    foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                        // line 69
                        echo "\t\t\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 69) < $context["i"])) {
                            // line 70
                            echo "\t\t\t\t\t\t\t\t<span class=\"fm-module-rating-star\"></span>
\t\t\t\t\t\t\t\t";
                        } else {
                            // line 72
                            echo "\t\t\t\t\t\t\t\t<span class=\"fm-module-rating-star fm-module-rating-star-is\"></span>
\t\t\t\t\t\t\t\t";
                        }
                        // line 74
                        echo "\t\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 75
                    echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"fm-module-reviews\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-comment\"></i>
\t\t\t\t\t\t\t\t<span>";
                    // line 78
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "reviews", [], "any", false, false, false, 78);
                    echo "</span>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 82
                echo "\t\t\t\t\t\t<div class=\"promotional-product-item-title\">
\t\t\t\t\t\t\t<a href=\"";
                // line 83
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 83);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 83);
                echo "</a>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                // line 85
                if (twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 85)) {
                    // line 86
                    echo "\t\t\t\t\t\t<div class=\"fm-module-price\">
\t\t\t\t\t\t\t";
                    // line 87
                    if ( !twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 87)) {
                        // line 88
                        echo "\t\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                        // line 89
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 89);
                        echo "</span>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                    } else {
                        // line 92
                        echo "\t\t\t\t\t\t\t<div class=\"fm-module-price-top d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t\t\t<span class=\"fm-module-price-old\">";
                        // line 93
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 93);
                        echo "</span>

\t\t\t\t";
                        // line 95
                        if (twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 95)) {
                            // line 96
                            echo "\t\t\t\t\t<div class=\"fm-module-sticker-discount\">";
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 96);
                            echo "</div>
\t\t\t\t";
                        }
                        // line 98
                        echo "\t\t\t
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                        // line 101
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 101);
                        echo "</span>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                    }
                    // line 104
                    echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 106
                echo "\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 109
            echo "\t\t\t</div>
\t\t\t<script>
\t\t\t\t\$(document).ready(function() {

\t\t\t\t  \$('#fm-promotional-product').slick({
\t\t\t\t\tautoplay: true,
\t\t\t\t\tdots: true,
\t\t\t\t\tarrows: false,
\t\t\t\t\tinfinite: true,
\t\t\t\t\tautoplaySpeed: 5000,
\t\t\t\t\tslidesToShow: 1,
\t\t\t\t\tresponsive: [
\t\t\t\t\t    {
\t\t\t\t\t      breakpoint: 1600,
\t\t\t\t\t      settings: {
\t\t\t\t\t        slidesToShow: 1
\t\t\t\t\t      }
\t\t\t\t\t    },
\t\t\t\t\t    {
\t\t\t\t\t      breakpoint: 992,
\t\t\t\t\t      settings: {
\t\t\t\t\t        slidesToShow: 2
\t\t\t\t\t      }
\t\t\t\t\t    },
\t\t\t\t\t    {
\t\t\t\t\t      breakpoint: 768,
\t\t\t\t\t      settings: {
\t\t\t\t\t        slidesToShow: 1
\t\t\t\t\t      }
\t\t\t\t\t    }
\t\t\t\t\t]
\t\t\t\t  });
\t\t\t\t});
\t\t\t</script>
\t\t</div>
\t</div>
\t";
        }
        // line 146
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_slideshow_plus.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  371 => 146,  332 => 109,  324 => 106,  320 => 104,  314 => 101,  309 => 98,  303 => 96,  301 => 95,  296 => 93,  293 => 92,  287 => 89,  284 => 88,  282 => 87,  279 => 86,  277 => 85,  270 => 83,  267 => 82,  260 => 78,  255 => 75,  249 => 74,  245 => 72,  241 => 70,  238 => 69,  234 => 68,  230 => 66,  228 => 65,  218 => 62,  210 => 60,  206 => 59,  200 => 56,  195 => 53,  193 => 52,  179 => 41,  173 => 37,  165 => 34,  153 => 32,  150 => 31,  138 => 29,  135 => 28,  125 => 26,  122 => 25,  112 => 23,  109 => 22,  99 => 20,  97 => 19,  88 => 15,  80 => 12,  76 => 11,  70 => 8,  65 => 7,  62 => 6,  57 => 5,  55 => 4,  51 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_slideshow_plus.twig", "");
    }
}
