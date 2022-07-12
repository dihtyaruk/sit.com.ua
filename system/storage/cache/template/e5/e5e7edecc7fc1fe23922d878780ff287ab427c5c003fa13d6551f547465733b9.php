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

/* oct_feelmart/template/octemplates/module/oct_products_modules.twig */
class __TwigTemplate_d5c0930aa9d4dceefdf90e97db88a48bc8c53110e57d85968626db407be5fc3d extends \Twig\Template
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
        if (($context["products"] ?? null)) {
            // line 2
            echo "\t";
            if (((($context["position"] ?? null) == "column_left") || (($context["position"] ?? null) == "column_right"))) {
                // line 3
                echo "\t<div class=\"fm-module-column-box\">
\t\t<div class=\"fm-column-title\">";
                // line 4
                if ((array_key_exists("link", $context) && ($context["link"] ?? null))) {
                    echo "<a href=\"";
                    echo ($context["link"] ?? null);
                    echo "\">";
                }
                echo ($context["heading_title"] ?? null);
                if ((array_key_exists("link", $context) && ($context["link"] ?? null))) {
                    echo "</a>";
                }
                echo "</div>
\t\t<div id=\"fm-column-";
                // line 5
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "\" class=\"fm-module-column-box-content\">

\t\t\t";
                // line 7
                if ( !twig_test_empty(($context["sticker_colors"] ?? null))) {
                    // line 8
                    echo "\t\t\t\t<style>
\t\t\t\t\t";
                    // line 9
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(($context["sticker_colors"] ?? null));
                    foreach ($context['_seq'] as $context["key"] => $context["sticker_color"]) {
                        // line 10
                        echo "\t\t\t\t\t.fm-module-stickers-sticker-";
                        echo $context["key"];
                        echo " {
\t\t\t\t\t\tcolor:";
                        // line 11
                        echo twig_get_attribute($this->env, $this->source, $context["sticker_color"], "text_color", [], "any", false, false, false, 11);
                        echo ";
\t\t\t\t\t\tbackground:";
                        // line 12
                        echo twig_get_attribute($this->env, $this->source, $context["sticker_color"], "fon_color", [], "any", false, false, false, 12);
                        echo ";
\t\t\t\t\t}
\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['key'], $context['sticker_color'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 15
                    echo "\t\t\t\t</style>
\t\t\t";
                }
                // line 17
                echo "\t\t\t
\t\t\t";
                // line 18
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                    // line 19
                    echo "\t\t\t<div class=\"fm-item h-100\">
\t\t\t\t<div class=\"fm-module-item d-flex flex-column h-100";
                    // line 20
                    if ( !twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 20)) {
                        echo " fm-no-stock";
                    }
                    echo "\">

\t\t\t";
                    // line 22
                    if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 22))) {
                        // line 23
                        echo "\t\t\t<div class=\"fm-module-stickers\">
\t\t\t\t";
                        // line 24
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 24));
                        foreach ($context['_seq'] as $context["key"] => $context["oct_sticker"]) {
                            // line 25
                            echo "\t\t\t\t\t";
                            if ( !twig_test_empty($context["oct_sticker"])) {
                                // line 26
                                echo "\t\t\t\t\t<div class=\"fm-module-stickers-sticker fm-module-stickers-sticker-";
                                echo $context["key"];
                                echo "\">
\t\t\t\t\t\t";
                                // line 27
                                echo $context["oct_sticker"];
                                echo "
\t\t\t\t\t</div>
\t\t\t\t\t";
                            }
                            // line 30
                            echo "\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['key'], $context['oct_sticker'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 31
                        echo "\t\t\t</div>
\t\t\t";
                    }
                    // line 33
                    echo "\t\t\t
\t\t\t\t\t<ul class=\"fm-module-buttons-list list-unstyled d-flex\">

\t\t\t";
                    // line 36
                    if (($context["oct_popup_view_status"] ?? null)) {
                        // line 37
                        echo "\t\t\t<li class=\"fm-module-buttons-item\">
\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link fm-module-buttons-quickview\" title=\"";
                        // line 38
                        echo ($context["oct_popup_view"] ?? null);
                        echo "\" onclick=\"octPopUpView('";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 38);
                        echo "')\"><i class=\"far fa-eye\"></i></button>
\t\t\t</li>
\t\t\t";
                    }
                    // line 41
                    echo "\t\t\t
\t\t\t\t\t\t<li class=\"fm-module-buttons-item fm-module-buttons-compare\">
\t\t\t\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link\" title=\"";
                    // line 43
                    echo ($context["button_compare"] ?? null);
                    echo "\" onclick=\"compare.add('";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 43);
                    echo "');\"><i class=\"fas fa-sliders-h\"></i></button>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li class=\"fm-module-buttons-item fm-module-buttons-wishlist\">
\t\t\t\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link\" title=\"";
                    // line 46
                    echo ($context["button_wishlist"] ?? null);
                    echo "\" onclick=\"wishlist.add('";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 46);
                    echo "');\"><i class=\"far fa-heart\"></i></button>
\t\t\t\t\t\t</li>
\t\t\t\t\t</ul>
\t\t\t\t\t<div class=\"fm-module-img\">
\t\t\t\t\t\t<a href=\"";
                    // line 50
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 50);
                    echo "\">
\t\t\t\t\t\t\t<img src=\"";
                    // line 51
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 51);
                    echo "\"";
                    if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                        echo " data-srcset=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 51);
                        echo " 100w\" srcset=\"";
                        echo ($context["oct_lazy_image"] ?? null);
                        echo " 100w\" sizes=\"100vw\" class=\"img-fluid oct-lazy\"";
                    } else {
                        echo " class=\"img-fluid\"";
                    }
                    echo " alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 51);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 51);
                    echo "\" />
\t\t\t\t\t\t</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    // line 54
                    if ( !(twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 54) === false)) {
                        // line 55
                        echo "\t\t\t\t\t<div class=\"fm-module-rating d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t<div class=\"fm-module-rating-stars d-flex align-items-center\">
\t\t\t\t\t\t\t";
                        // line 57
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(range(1, 5));
                        foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                            // line 58
                            echo "\t\t\t\t\t\t\t";
                            if ((twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 58) < $context["i"])) {
                                // line 59
                                echo "\t\t\t\t\t\t\t<span class=\"fm-module-rating-star\"></span>
\t\t\t\t\t\t\t";
                            } else {
                                // line 61
                                echo "\t\t\t\t\t\t\t<span class=\"fm-module-rating-star fm-module-rating-star-is\"></span>
\t\t\t\t\t\t\t";
                            }
                            // line 63
                            echo "\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 64
                        echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"fm-module-reviews\">
\t\t\t\t\t\t\t<i class=\"fas fa-comment\"></i>
\t\t\t\t\t\t\t<span>";
                        // line 67
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "reviews", [], "any", false, false, false, 67);
                        echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    }
                    // line 71
                    echo "\t\t\t\t\t<div class=\"fm-module-title\">
\t\t\t\t\t\t<a href=\"";
                    // line 72
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 72);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 72);
                    echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    // line 74
                    if (twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 74)) {
                        // line 75
                        echo "\t\t\t\t\t<div class=\"fm-module-price mt-auto\">
\t\t\t\t\t\t";
                        // line 76
                        if ( !twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 76)) {
                            // line 77
                            echo "\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                            // line 78
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 78);
                            echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                        } else {
                            // line 81
                            echo "\t\t\t\t\t\t<div class=\"fm-module-price-top d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t\t<span class=\"fm-module-price-old\">";
                            // line 82
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 82);
                            echo "</span>

\t\t\t";
                            // line 84
                            if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 84))) {
                                // line 85
                                echo "\t\t\t\t";
                                if ((($context["oct_sticker_you_save"] ?? null) && twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 85))) {
                                    // line 86
                                    echo "\t\t\t\t\t<div class=\"fm-module-sticker-discount\">";
                                    echo twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 86);
                                    echo "</div>
\t\t\t\t";
                                }
                                // line 88
                                echo "\t\t\t";
                            }
                            // line 89
                            echo "\t\t\t
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                            // line 92
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 92);
                            echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                        }
                        // line 95
                        echo "\t\t\t\t\t\t";
                        if (twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 95)) {
                            // line 96
                            echo "\t\t\t\t\t\t<div class=\"price-tax\">";
                            echo ($context["text_tax"] ?? null);
                            echo " ";
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 96);
                            echo "</div>
\t\t\t\t\t\t";
                        }
                        // line 98
                        echo "\t\t\t\t\t</div>
\t\t\t\t\t";
                    }
                    // line 100
                    echo "\t\t\t\t\t<div class=\"fm-module-overlay\">
\t\t                  <div class=\"fm-module-overlay-btn-box\">
\t\t\t\t\t\t  \t<button type=\"button\" onclick=\"cart.add('";
                    // line 102
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 102);
                    echo "');\" class=\"fm-module-overlay-btn fm-btn\"><img src=\"catalog/view/theme/oct_feelmart/img/shop-cart-icon.svg\" alt=\"";
                    echo ($context["button_cart"] ?? null);
                    echo "\"><span>";
                    echo ($context["button_cart"] ?? null);
                    echo "</span></button>
\t\t                  </div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 108
                echo "\t\t</div>
\t\t<button type=\"button\" id=\"fm-";
                // line 109
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "-button-prev\" class=\"fm-column-module-btn fm-column-module-btn-prev\"><span>‹</span></button>
\t\t<button type=\"button\" id=\"fm-";
                // line 110
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "-button-next\" class=\"fm-column-module-btn fm-column-module-btn-next\"><span>›</span></button>
\t\t<script>
\t\t\toctShowColumnProducts(\"fm-";
                // line 112
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "-button-prev\", \"fm-";
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "-button-next\", \"fm-column-";
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "\");
\t\t</script>
\t</div>
\t";
            } else {
                // line 116
                echo "\t<div class=\"fm-";
                echo ($context["module_name"] ?? null);
                echo "_box\" ";
                if ((($context["module_name"] ?? null) == "related-products")) {
                    echo "id=\"fm-related-products-row\"";
                }
                echo ">
\t\t<div class=\"row row-padding-top\">
\t\t\t<div class=\"col-12 fm-main-title\">";
                // line 118
                if ((array_key_exists("link", $context) && ($context["link"] ?? null))) {
                    echo "<a href=\"";
                    echo ($context["link"] ?? null);
                    echo "\">";
                }
                echo ($context["heading_title"] ?? null);
                if ((array_key_exists("link", $context) && ($context["link"] ?? null))) {
                    echo "</a>";
                }
                echo "</div>
\t\t</div>
\t\t<div id=\"fm-";
                // line 120
                echo ($context["module_name"] ?? null);
                echo "_";
                echo ($context["module"] ?? null);
                echo "\" class=\"row no-gutters\">

\t\t\t";
                // line 122
                if ( !twig_test_empty(($context["sticker_colors"] ?? null))) {
                    // line 123
                    echo "\t\t\t\t<style>
\t\t\t\t\t";
                    // line 124
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(($context["sticker_colors"] ?? null));
                    foreach ($context['_seq'] as $context["key"] => $context["sticker_color"]) {
                        // line 125
                        echo "\t\t\t\t\t.fm-module-stickers-sticker-";
                        echo $context["key"];
                        echo " {
\t\t\t\t\t\tcolor:";
                        // line 126
                        echo twig_get_attribute($this->env, $this->source, $context["sticker_color"], "text_color", [], "any", false, false, false, 126);
                        echo ";
\t\t\t\t\t\tbackground:";
                        // line 127
                        echo twig_get_attribute($this->env, $this->source, $context["sticker_color"], "fon_color", [], "any", false, false, false, 127);
                        echo ";
\t\t\t\t\t}
\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['key'], $context['sticker_color'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 130
                    echo "\t\t\t\t</style>
\t\t\t";
                }
                // line 132
                echo "\t\t\t
\t\t\t";
                // line 133
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                    // line 134
                    echo "\t\t\t<div class=\"col-6 col-md-4 col-lg-4 col-xl-3 fm-item\">
\t\t\t\t<div class=\"fm-module-item d-flex flex-column h-100";
                    // line 135
                    if ( !twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 135)) {
                        echo " fm-no-stock";
                    }
                    echo "\">

\t\t\t";
                    // line 137
                    if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 137))) {
                        // line 138
                        echo "\t\t\t<div class=\"fm-module-stickers\">
\t\t\t\t";
                        // line 139
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 139));
                        foreach ($context['_seq'] as $context["key"] => $context["oct_sticker"]) {
                            // line 140
                            echo "\t\t\t\t\t";
                            if ( !twig_test_empty($context["oct_sticker"])) {
                                // line 141
                                echo "\t\t\t\t\t<div class=\"fm-module-stickers-sticker fm-module-stickers-sticker-";
                                echo $context["key"];
                                echo "\">
\t\t\t\t\t\t";
                                // line 142
                                echo $context["oct_sticker"];
                                echo "
\t\t\t\t\t</div>
\t\t\t\t\t";
                            }
                            // line 145
                            echo "\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['key'], $context['oct_sticker'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 146
                        echo "\t\t\t</div>
\t\t\t";
                    }
                    // line 148
                    echo "\t\t\t
\t\t\t\t\t<ul class=\"fm-module-buttons-list list-unstyled d-flex\">

\t\t\t";
                    // line 151
                    if (($context["oct_popup_view_status"] ?? null)) {
                        // line 152
                        echo "\t\t\t<li class=\"fm-module-buttons-item\">
\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link fm-module-buttons-quickview\" title=\"";
                        // line 153
                        echo ($context["oct_popup_view"] ?? null);
                        echo "\" onclick=\"octPopUpView('";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 153);
                        echo "')\"><i class=\"far fa-eye\"></i></button>
\t\t\t</li>
\t\t\t";
                    }
                    // line 156
                    echo "\t\t\t
\t\t\t\t\t\t<li class=\"fm-module-buttons-item fm-module-buttons-compare\">
\t\t\t\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link\" title=\"";
                    // line 158
                    echo ($context["button_compare"] ?? null);
                    echo "\" onclick=\"compare.add('";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 158);
                    echo "');\"><i class=\"fas fa-sliders-h\"></i></button>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li class=\"fm-module-buttons-item fm-module-buttons-wishlist\">
\t\t\t\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link\" title=\"";
                    // line 161
                    echo ($context["button_wishlist"] ?? null);
                    echo "\" onclick=\"wishlist.add('";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 161);
                    echo "');\"><i class=\"far fa-heart\"></i></button>
\t\t\t\t\t\t</li>
\t\t\t\t\t</ul>
\t\t\t\t\t<div class=\"fm-module-img\">
\t\t\t\t\t\t<a href=\"";
                    // line 165
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 165);
                    echo "\">
\t\t\t\t\t\t\t<img src=\"";
                    // line 166
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 166);
                    echo "\"";
                    if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                        echo " data-srcset=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 166);
                        echo " 100w\" srcset=\"";
                        echo ($context["oct_lazy_image"] ?? null);
                        echo " 100w\" sizes=\"100vw\" class=\"img-fluid oct-lazy\"";
                    } else {
                        echo " class=\"img-fluid\"";
                    }
                    echo " alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 166);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 166);
                    echo "\" />
\t\t\t\t\t\t</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    // line 169
                    if ( !(twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 169) === false)) {
                        // line 170
                        echo "\t\t\t\t\t<div class=\"fm-module-rating d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t<div class=\"fm-module-rating-stars d-flex align-items-center\">
\t\t\t\t\t\t\t";
                        // line 172
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(range(1, 5));
                        foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                            // line 173
                            echo "\t\t\t\t\t\t\t";
                            if ((twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 173) < $context["i"])) {
                                // line 174
                                echo "\t\t\t\t\t\t\t<span class=\"fm-module-rating-star\"></span>
\t\t\t\t\t\t\t";
                            } else {
                                // line 176
                                echo "\t\t\t\t\t\t\t<span class=\"fm-module-rating-star fm-module-rating-star-is\"></span>
\t\t\t\t\t\t\t";
                            }
                            // line 178
                            echo "\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 179
                        echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"fm-module-reviews\">
\t\t\t\t\t\t\t<i class=\"fas fa-comment\"></i>
\t\t\t\t\t\t\t<span>";
                        // line 182
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "reviews", [], "any", false, false, false, 182);
                        echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    }
                    // line 186
                    echo "\t\t\t\t\t<div class=\"fm-module-title\">
\t\t\t\t\t\t<a href=\"";
                    // line 187
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 187);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 187);
                    echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
                    // line 189
                    if (twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 189)) {
                        // line 190
                        echo "\t\t\t\t\t<div class=\"fm-module-price mt-auto\">
\t\t\t\t\t\t";
                        // line 191
                        if ( !twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 191)) {
                            // line 192
                            echo "\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                            // line 193
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 193);
                            echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                        } else {
                            // line 196
                            echo "\t\t\t\t\t\t<div class=\"fm-module-price-top d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t\t<span class=\"fm-module-price-old\">";
                            // line 197
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 197);
                            echo "</span>

\t\t\t";
                            // line 199
                            if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 199))) {
                                // line 200
                                echo "\t\t\t\t";
                                if ((($context["oct_sticker_you_save"] ?? null) && twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 200))) {
                                    // line 201
                                    echo "\t\t\t\t\t<div class=\"fm-module-sticker-discount\">";
                                    echo twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 201);
                                    echo "</div>
\t\t\t\t";
                                }
                                // line 203
                                echo "\t\t\t";
                            }
                            // line 204
                            echo "\t\t\t
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                            // line 207
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 207);
                            echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                        }
                        // line 210
                        echo "\t\t\t\t\t\t";
                        if (twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 210)) {
                            // line 211
                            echo "\t\t\t\t\t\t<div class=\"price-tax\">";
                            echo ($context["text_tax"] ?? null);
                            echo " ";
                            echo twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 211);
                            echo "</div>
\t\t\t\t\t\t";
                        }
                        // line 213
                        echo "\t\t\t\t\t</div>
\t\t\t\t\t";
                    }
                    // line 215
                    echo "\t\t\t\t\t<div class=\"fm-module-overlay\">
\t\t                  <div class=\"fm-module-overlay-btn-box\">
\t\t\t\t\t\t  \t<button type=\"button\" onclick=\"cart.add('";
                    // line 217
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 217);
                    echo "');\" class=\"fm-module-overlay-btn fm-btn\"><img src=\"catalog/view/theme/oct_feelmart/img/shop-cart-icon.svg\" alt=\"";
                    echo ($context["button_cart"] ?? null);
                    echo "\"><span>";
                    echo ($context["button_cart"] ?? null);
                    echo "</span></button>
\t\t                  </div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 223
                echo "\t\t</div>
\t</div>
\t";
            }
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_products_modules.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  681 => 223,  665 => 217,  661 => 215,  657 => 213,  649 => 211,  646 => 210,  640 => 207,  635 => 204,  632 => 203,  626 => 201,  623 => 200,  621 => 199,  616 => 197,  613 => 196,  607 => 193,  604 => 192,  602 => 191,  599 => 190,  597 => 189,  590 => 187,  587 => 186,  580 => 182,  575 => 179,  569 => 178,  565 => 176,  561 => 174,  558 => 173,  554 => 172,  550 => 170,  548 => 169,  528 => 166,  524 => 165,  515 => 161,  507 => 158,  503 => 156,  495 => 153,  492 => 152,  490 => 151,  485 => 148,  481 => 146,  475 => 145,  469 => 142,  464 => 141,  461 => 140,  457 => 139,  454 => 138,  452 => 137,  445 => 135,  442 => 134,  438 => 133,  435 => 132,  431 => 130,  422 => 127,  418 => 126,  413 => 125,  409 => 124,  406 => 123,  404 => 122,  397 => 120,  384 => 118,  374 => 116,  357 => 112,  350 => 110,  344 => 109,  341 => 108,  325 => 102,  321 => 100,  317 => 98,  309 => 96,  306 => 95,  300 => 92,  295 => 89,  292 => 88,  286 => 86,  283 => 85,  281 => 84,  276 => 82,  273 => 81,  267 => 78,  264 => 77,  262 => 76,  259 => 75,  257 => 74,  250 => 72,  247 => 71,  240 => 67,  235 => 64,  229 => 63,  225 => 61,  221 => 59,  218 => 58,  214 => 57,  210 => 55,  208 => 54,  188 => 51,  184 => 50,  175 => 46,  167 => 43,  163 => 41,  155 => 38,  152 => 37,  150 => 36,  145 => 33,  141 => 31,  135 => 30,  129 => 27,  124 => 26,  121 => 25,  117 => 24,  114 => 23,  112 => 22,  105 => 20,  102 => 19,  98 => 18,  95 => 17,  91 => 15,  82 => 12,  78 => 11,  73 => 10,  69 => 9,  66 => 8,  64 => 7,  57 => 5,  45 => 4,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_products_modules.twig", "");
    }
}
