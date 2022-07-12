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

/* oct_feelmart/template/product/category.twig */
class __TwigTemplate_fb6f50648e8816ea189d48faca536128b98bbb374fbf7c9610d0b6c548404b63 extends \Twig\Template
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
<div id=\"product-category\" class=\"container\">
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
\t<div class=\"row no-gutters\">
\t\t";
        // line 11
        echo ($context["column_left"] ?? null);
        echo "
\t\t";
        // line 12
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 13
            echo "\t\t";
            $context["class"] = "col-lg-6 is-cols";
            // line 14
            echo "\t\t";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 15
            echo "\t\t";
            $context["class"] = "col-lg-9";
            // line 16
            echo "\t\t";
        } else {
            // line 17
            echo "\t\t";
            $context["class"] = "col-lg-12 no-col";
            // line 18
            echo "\t\t";
        }
        // line 19
        echo "\t\t<div id=\"content\" class=\"";
        echo ($context["class"] ?? null);
        echo " fm-content fm-category-content\">

\t\t\t";
        // line 21
        if (($context["ocfilter_on"] ?? null)) {
            // line 22
            echo "\t\t\t<div class=\"static_button_ocfilter\"><div class=\"ocfilter-mobile-handle\"><button type=\"button\" class=\"fm-btn fm-btn-blue\" data-toggle=\"offcanvas\"><i class=\"fa fa-filter\"></i> ";
            echo ($context["oc_filter_button_text"] ?? null);
            echo "</button></div></div>
\t\t\t";
        }
        // line 24
        echo "\t\t\t
\t\t\t";
        // line 25
        if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_desc_position", [], "any", true, true, false, 25) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_desc_position", [], "any", false, false, false, 25) == "top"))) {
            // line 26
            echo "\t\t\t\t";
            if ((($context["thumb"] ?? null) || ($context["description"] ?? null))) {
                // line 27
                echo "\t\t\t\t<div class=\"fm-category-description\">
\t\t\t\t\t<div class=\"d-md-flex\">
\t\t\t\t\t\t";
                // line 29
                if (($context["thumb"] ?? null)) {
                    // line 30
                    echo "\t\t\t\t\t\t<div class=\"fm-category-description-img\"><img src=\"";
                    echo ($context["thumb"] ?? null);
                    echo "\" alt=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" title=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" /></div>
\t\t\t\t\t\t";
                }
                // line 32
                echo "\t\t\t\t\t\t";
                if (($context["description"] ?? null)) {
                    // line 33
                    echo "\t\t\t\t\t\t<div id=\"fm-category-description\"";
                    if (((($context["description"] ?? null) && (twig_length_filter($this->env, ($context["description"] ?? null)) > 1200)) && (($context["categories"] ?? null) || ($context["products"] ?? null)))) {
                        echo " class=\"fm-category-description-cont\"";
                    }
                    echo ">
\t\t\t\t\t\t\t<div class=\"fm-category-description-text\">";
                    // line 34
                    echo ($context["description"] ?? null);
                    echo "</div>

\t\t\t";
                    // line 36
                    if ((array_key_exists("categories_page", $context) &&  !twig_test_empty(($context["categories_page"] ?? null)))) {
                        // line 37
                        echo "\t\t\t<div class=\"fm-category-categories_page-text\">
\t\t\t\t<ul class=\"category-landing-links list-unstyled\">
\t\t\t\t";
                        // line 39
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(($context["categories_page"] ?? null));
                        foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                            // line 40
                            echo "\t\t\t\t\t";
                            if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 40))) {
                                // line 41
                                echo "\t\t\t\t\t<li class=\"category-landing-links-item\">
\t\t\t\t\t\t<span class=\"category-landing-links-item-title\">";
                                // line 42
                                echo (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 42)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4[($context["language_id"] ?? null)] ?? null) : null);
                                echo "</span>
\t\t\t\t\t\t";
                                // line 43
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 43));
                                foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                    // line 44
                                    echo "\t\t\t\t\t\t<a href=\"";
                                    echo twig_get_attribute($this->env, $this->source, (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["link"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 44);
                                    echo "\" class=\"category-landing-links-item-link d-flex-inline align-items-center\" title=\"";
                                    echo twig_get_attribute($this->env, $this->source, (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["link"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 44);
                                    echo "\"><span>";
                                    echo twig_get_attribute($this->env, $this->source, (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["link"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 44);
                                    echo "</span></a>
\t\t\t\t\t\t";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 46
                                echo "\t\t\t\t\t</li>
\t\t\t\t\t";
                            }
                            // line 48
                            echo "\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 49
                        echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t\t";
                    }
                    // line 52
                    echo "\t\t\t
\t\t\t\t\t\t\t";
                    // line 53
                    if (((($context["description"] ?? null) && (twig_length_filter($this->env, ($context["description"] ?? null)) > 1200)) && (($context["categories"] ?? null) || ($context["products"] ?? null)))) {
                        // line 54
                        echo "\t\t\t\t\t\t\t<div class=\"fm-category-description-text-overlay\"></div>
\t\t\t\t\t\t\t";
                    }
                    // line 56
                    echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 58
                echo "\t\t\t\t\t</div>
\t\t\t\t\t";
                // line 59
                if (((($context["description"] ?? null) && (twig_length_filter($this->env, ($context["description"] ?? null)) > 1200)) && (($context["categories"] ?? null) || ($context["products"] ?? null)))) {
                    // line 60
                    echo "\t\t\t\t\t<div class=\"fm-show-more";
                    if (($context["thumb"] ?? null)) {
                        echo " with-thumb";
                    }
                    echo "\">
\t\t\t\t\t\t<a href=\"javascript:void(0);\" class=\"fm-show-more-link fm-subcat-show-link\" id=\"fm-show-more-link\"><span>";
                    // line 61
                    echo ($context["oct_expand"] ?? null);
                    echo "</span><i class=\"fas fa-chevron-down\"></i></a>
\t\t\t\t\t</div>
\t\t\t\t\t<script>
\t\t\t\t\t\t\$(function () {
\t\t\t\t\t\t\t\$('#fm-show-more-link').on('click', function () {
\t\t\t\t\t\t\t\t\$(this).toggleClass('clicked');
\t\t\t\t\t\t\t\t\$('.fm-category-description-cont').toggleClass('expanded');
\t\t\t\t\t\t\t\t\$('.fm-category-description-opacity').toggleClass('hidden');
\t\t\t\t\t\t\t});
\t\t\t\t\t\t});
\t\t\t\t\t</script>
\t\t\t\t\t";
                }
                // line 73
                echo "\t\t\t\t</div>
\t\t\t\t";
            }
            // line 75
            echo "\t\t\t";
        }
        // line 76
        echo "\t\t\t";
        if (($context["products"] ?? null)) {
            // line 77
            echo "\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_view_sort_oder", [], "any", true, true, false, 77) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_view_sort_oder", [], "any", false, false, false, 77) || (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_view_sort_oder", [], "any", false, false, false, 77) == "on")))) {
                // line 78
                echo "\t\t\t\t<div class=\"fm-category-sort-block d-flex justify-content-between\">
\t\t\t\t\t<div class=\"sort-limit\">
\t\t\t\t\t\t<select id=\"input-sort\" class=\"sort-select\" onchange=\"location = this.value;\">
\t\t\t\t\t\t\t";
                // line 81
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($context["sorts"]);
                foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                    // line 82
                    echo "\t\t\t\t\t\t\t\t";
                    if ((twig_get_attribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 82) == sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                        // line 83
                        echo "\t\t\t\t\t\t\t\t\t<option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 83);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 83);
                        echo "</option>
\t\t\t\t\t\t\t\t";
                    } else {
                        // line 85
                        echo "\t\t\t\t\t\t\t\t\t<option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 85);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 85);
                        echo "</option>
\t\t\t\t\t\t\t\t";
                    }
                    // line 87
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sorts'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 88
                echo "\t\t\t\t\t\t</select>
\t\t\t\t\t\t<select id=\"input-limit\" class=\"limit-select\" onchange=\"location = this.value;\">
\t\t\t\t\t\t\t";
                // line 90
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($context["limits"]);
                foreach ($context['_seq'] as $context["_key"] => $context["limits"]) {
                    // line 91
                    echo "\t\t\t\t\t\t\t\t";
                    if ((twig_get_attribute($this->env, $this->source, $context["limits"], "value", [], "any", false, false, false, 91) == ($context["limit"] ?? null))) {
                        // line 92
                        echo "\t\t\t\t\t\t\t\t\t<option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 92);
                        echo "\" selected=\"selected\">";
                        echo twig_get_attribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 92);
                        echo "</option>
\t\t\t\t\t\t\t\t";
                    } else {
                        // line 94
                        echo "\t\t\t\t\t\t\t\t\t<option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 94);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 94);
                        echo "</option>
\t\t\t\t\t\t\t\t";
                    }
                    // line 96
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['limits'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 97
                echo "\t\t\t\t\t\t</select>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"fm-category-appearance btn-group\">
\t\t\t\t\t\t<button type=\"button\" id=\"list-view\" class=\"fm-category-appearance-btn\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"";
                // line 100
                echo ($context["button_list"] ?? null);
                echo "\"><i class=\"fa fa-th-list\"></i></button>
\t\t\t\t\t\t<button type=\"button\" id=\"grid-view\" class=\"fm-category-appearance-btn\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"";
                // line 101
                echo ($context["button_grid"] ?? null);
                echo "\"><i class=\"fa fa-th\"></i></button>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t";
            }
            // line 105
            echo "\t\t\t";
        }
        // line 106
        echo "\t\t\t";
        if (($context["categories"] ?? null)) {
            // line 107
            echo "\t\t\t<div class=\"fm-subcategory\">
\t\t\t\t<div id=\"fm-subcat\" class=\"row subcat-row\">
\t\t\t\t\t";
            // line 109
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 110
                echo "\t\t\t\t\t<div class=\"col-6 col-sm-3 subcat-item-box\">
\t\t\t\t\t\t<a class=\"subcat-item d-flex flex-column align-items-center\" href=\"";
                // line 111
                echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 111);
                echo "\">
\t\t\t\t\t\t<img class=\"subcat-item-img\" src=\"";
                // line 112
                echo twig_get_attribute($this->env, $this->source, $context["category"], "image", [], "any", false, false, false, 112);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 112);
                echo "\" >
\t\t\t\t\t\t<span class=\"subcat-item-title\">";
                // line 113
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 113);
                echo "</span>
\t\t\t\t\t\t</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 117
            echo "\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
        }
        // line 120
        echo "\t\t\t";
        if (($context["products"] ?? null)) {
            // line 121
            echo "\t\t\t\t<div class=\"row no-gutters fm-category-products\">

\t\t\t";
            // line 123
            if ( !twig_test_empty(($context["sticker_colors"] ?? null))) {
                // line 124
                echo "\t\t\t\t<style>
\t\t\t\t\t";
                // line 125
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["sticker_colors"] ?? null));
                foreach ($context['_seq'] as $context["key"] => $context["sticker_color"]) {
                    // line 126
                    echo "\t\t\t\t\t.fm-module-stickers-sticker-";
                    echo $context["key"];
                    echo " {
\t\t\t\t\t\tcolor:";
                    // line 127
                    echo twig_get_attribute($this->env, $this->source, $context["sticker_color"], "text_color", [], "any", false, false, false, 127);
                    echo ";
\t\t\t\t\t\tbackground:";
                    // line 128
                    echo twig_get_attribute($this->env, $this->source, $context["sticker_color"], "fon_color", [], "any", false, false, false, 128);
                    echo ";
\t\t\t\t\t}
\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['key'], $context['sticker_color'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 131
                echo "\t\t\t\t</style>
\t\t\t";
            }
            // line 133
            echo "\t\t\t
\t\t\t\t\t";
            // line 134
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 135
                echo "\t\t\t\t\t<div class=\"product-layout product-grid col-6 col-md-4 col-lg-4\">
\t\t\t\t\t\t<div class=\"fm-module-item d-flex flex-column h-100";
                // line 136
                if ( !twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 136)) {
                    echo " fm-no-stock";
                }
                echo "\">
\t\t\t\t\t\t\t<div class=\"fm-module-img\">

\t\t\t";
                // line 139
                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 139))) {
                    // line 140
                    echo "\t\t\t<div class=\"fm-module-stickers\">
\t\t\t\t";
                    // line 141
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 141));
                    foreach ($context['_seq'] as $context["key"] => $context["oct_sticker"]) {
                        // line 142
                        echo "\t\t\t\t\t";
                        if ( !twig_test_empty($context["oct_sticker"])) {
                            // line 143
                            echo "\t\t\t\t\t<div class=\"fm-module-stickers-sticker fm-module-stickers-sticker-";
                            echo $context["key"];
                            echo "\">
\t\t\t\t\t\t";
                            // line 144
                            echo $context["oct_sticker"];
                            echo "
\t\t\t\t\t</div>
\t\t\t\t\t";
                        }
                        // line 147
                        echo "\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['key'], $context['oct_sticker'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 148
                    echo "\t\t\t</div>
\t\t\t";
                }
                // line 150
                echo "\t\t\t
\t\t\t\t\t\t\t\t<ul class=\"fm-module-buttons-list list-unstyled d-flex\">

\t\t\t";
                // line 153
                if (($context["oct_popup_view_status"] ?? null)) {
                    // line 154
                    echo "\t\t\t<li class=\"fm-module-buttons-item\">
\t\t\t\t<button type=\"button\" class=\"fm-module-buttons-link fm-module-buttons-quickview\" title=\"";
                    // line 155
                    echo ($context["oct_popup_view"] ?? null);
                    echo "\" onclick=\"octPopUpView('";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 155);
                    echo "')\"><i class=\"far fa-eye\"></i></button>
\t\t\t</li>
\t\t\t";
                }
                // line 158
                echo "\t\t\t
\t\t\t\t\t\t\t\t\t<li class=\"fm-module-buttons-item fm-module-buttons-compare\">
\t\t\t\t\t\t\t\t\t\t<button type=\"button\" title=\"";
                // line 160
                echo ($context["button_compare"] ?? null);
                echo "\" onclick=\"compare.add('";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 160);
                echo "');\" class=\"fm-module-buttons-link\"><i class=\"fas fa-sliders-h\"></i></button>
\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t<li class=\"fm-module-buttons-item fm-module-buttons-wishlist\">
\t\t\t\t\t\t\t\t\t\t<button type=\"button\" onclick=\"wishlist.add('";
                // line 163
                echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 163);
                echo "');\" title=\"";
                echo ($context["button_wishlist"] ?? null);
                echo "\" class=\"fm-module-buttons-link\"><i class=\"far fa-heart\"></i></button>
\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 166
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 166);
                echo "\">
\t\t\t\t\t\t\t\t\t<img src=\"";
                // line 167
                echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 167);
                echo "\"";
                if ((array_key_exists("oct_lazyload", $context) && ($context["oct_lazyload"] ?? null))) {
                    echo " data-srcset=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 167);
                    echo " 100w\" srcset=\"";
                    echo ($context["oct_lazy_image"] ?? null);
                    echo " 100w\" sizes=\"100vw\" class=\"img-fluid oct-lazy\"";
                } else {
                    echo " class=\"img-fluid\"";
                }
                echo " alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 167);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 167);
                echo "\" />
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t";
                // line 169
                if ( !(twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 169) === false)) {
                    // line 170
                    echo "\t\t\t\t\t\t\t\t<div class=\"fm-module-rating d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t\t\t\t<div class=\"fm-module-rating-stars d-flex align-items-center\">
\t\t\t\t\t\t\t\t\t\t";
                    // line 172
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(range(1, 5));
                    foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                        // line 173
                        echo "\t\t\t\t\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 173) < $context["i"])) {
                            // line 174
                            echo "\t\t\t\t\t\t\t\t\t\t<span class=\"fm-module-rating-star\"></span>
\t\t\t\t\t\t\t\t\t\t";
                        } else {
                            // line 176
                            echo "\t\t\t\t\t\t\t\t\t\t<span class=\"fm-module-rating-star fm-module-rating-star-is\"></span>
\t\t\t\t\t\t\t\t\t\t";
                        }
                        // line 178
                        echo "\t\t\t\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 179
                    echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"fm-module-reviews\"><i class=\"fas fa-comment\"></i><span>";
                    // line 180
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "reviews", [], "any", false, false, false, 180);
                    echo "</span></div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                }
                // line 183
                echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"fm-category-product-caption\">
\t\t\t\t\t\t\t\t";
                // line 185
                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_model", [], "any", false, false, false, 185))) {
                    // line 186
                    echo "\t\t\t\t\t\t\t\t<div class=\"fm-category-product-model\">";
                    echo ($context["oct_view_model_cat"] ?? null);
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "oct_model", [], "any", false, false, false, 186);
                    echo "</div>
\t\t\t\t\t\t\t\t";
                }
                // line 188
                echo "\t\t\t\t\t\t\t\t<div class=\"fm-module-title\">
\t\t\t\t\t\t\t\t\t<a href=\"";
                // line 189
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 189);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 189);
                echo "</a>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                // line 191
                if (twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 191)) {
                    // line 192
                    echo "\t\t\t\t\t\t\t\t<div class=\"fm-module-price mt-auto\">
\t\t\t\t\t\t\t\t\t";
                    // line 193
                    if ( !twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 193)) {
                        // line 194
                        echo "\t\t\t\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                        // line 195
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 195);
                        echo "</span>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t";
                    } else {
                        // line 198
                        echo "\t\t\t\t\t\t\t\t\t<div class=\"fm-module-price-top d-flex align-items-center justify-content-center\">
\t\t\t\t\t\t\t\t\t\t<span class=\"fm-module-price-old\">";
                        // line 199
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 199);
                        echo "</span>

\t\t\t";
                        // line 201
                        if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "oct_stickers", [], "any", false, false, false, 201))) {
                            // line 202
                            echo "\t\t\t\t";
                            if ((($context["oct_sticker_you_save"] ?? null) && twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 202))) {
                                // line 203
                                echo "\t\t\t\t\t<div class=\"fm-module-sticker-discount\">";
                                echo twig_get_attribute($this->env, $this->source, $context["product"], "you_save", [], "any", false, false, false, 203);
                                echo "</div>
\t\t\t\t";
                            }
                            // line 205
                            echo "\t\t\t";
                        }
                        // line 206
                        echo "\t\t\t
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"fm-module-price-bottom\">
\t\t\t\t\t\t\t\t\t\t<span class=\"fm-module-price-new\">";
                        // line 209
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 209);
                        echo "</span>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t";
                    }
                    // line 212
                    echo "\t\t\t\t\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 212)) {
                        // line 213
                        echo "\t\t\t\t\t\t\t\t\t<div class=\"price-tax\">";
                        echo ($context["text_tax"] ?? null);
                        echo " ";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 213);
                        echo "</div>
\t\t\t\t\t\t\t\t\t";
                    }
                    // line 215
                    echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                }
                // line 217
                echo "\t\t\t\t\t\t\t\t";
                if ((twig_get_attribute($this->env, $this->source, $context["product"], "description", [], "any", false, false, false, 217) && (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "description", [], "any", false, false, false, 217)) > 3))) {
                    // line 218
                    echo "\t\t\t\t\t\t\t\t\t<div class=\"fm-category-product-description\">";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "description", [], "any", false, false, false, 218);
                    echo "</div>
\t\t\t\t\t\t\t\t";
                }
                // line 220
                echo "
\t\t\t";
                // line 221
                if (twig_get_attribute($this->env, $this->source, $context["product"], "oct_atributes", [], "any", false, false, false, 221)) {
                    // line 222
                    echo "\t        <div class=\"fm-category-attr-cont\">
\t\t\t";
                    // line 223
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "oct_atributes", [], "any", false, false, false, 223));
                    foreach ($context['_seq'] as $context["_key"] => $context["attribute"]) {
                        // line 224
                        echo "\t\t\t\t<span class=\"fm-category-attr-item\">
\t\t\t\t\t<span>";
                        // line 225
                        echo twig_get_attribute($this->env, $this->source, $context["attribute"], "name", [], "any", false, false, false, 225);
                        echo ":</span> <span>";
                        echo twig_get_attribute($this->env, $this->source, $context["attribute"], "text", [], "any", false, false, false, 225);
                        echo "</span>
\t\t\t\t</span>
\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attribute'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 228
                    echo "\t\t\t</div>
\t\t\t";
                }
                // line 230
                echo "\t\t\t
\t\t\t\t\t\t\t\t<div class=\"fm-category-btn-box\">
\t\t\t\t\t                
\t\t\t";
                // line 233
                if (((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_view_quantity", [], "any", true, true, false, 233) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_view_quantity", [], "any", false, false, false, 233)) &&  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 233)))) {
                    // line 234
                    echo "\t\t\t<div class=\"fm-product-quantity d-flex flex-column align-items-center\">
\t\t\t\t<div class=\"btn-group\" role=\"group\">
\t\t\t\t\t<button type=\"button\" class=\"fm-product-quantity-btn fm-product-quantity-btn-left fm-minus\">-</button>
\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"quantity\" value=\"";
                    // line 237
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "minimum", [], "any", false, false, false, 237);
                    echo "\" />
\t\t\t\t\t<button type=\"button\" class=\"fm-product-quantity-btn fm-product-quantity-btn-right fm-plus\">+</button>
\t\t\t\t\t<input type=\"hidden\" name=\"product_id\" value=\"";
                    // line 239
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 239);
                    echo "\" />
\t\t\t\t\t<input class=\"min-qty\" type=\"hidden\" value=\"";
                    // line 240
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "minimum", [], "any", false, false, false, 240);
                    echo "\" name=\"min_quantity\">
\t\t\t\t</div>
\t\t\t</div>
\t\t\t<button type=\"button\" class=\"fm-product-btn fm-cat-button-cart\"><img src=\"catalog/view/theme/oct_feelmart/img/shop-cart-icon.svg\" alt=\"";
                    // line 243
                    echo ($context["button_cart"] ?? null);
                    echo "\" /><span>";
                    echo ($context["button_cart"] ?? null);
                    echo "</span></button>
\t\t\t";
                } else {
                    // line 245
                    echo "\t\t\t
\t\t\t";
                    // line 246
                    if (( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 246)) && twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 246))) {
                        // line 247
                        echo "\t\t\t<button type=\"button\" onclick=\"cart.add('";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 247);
                        echo "');\" class=\"fm-product-btn\"><img src=\"catalog/view/theme/oct_feelmart/img/shop-cart-icon.svg\" alt=\"";
                        echo (((twig_get_attribute($this->env, $this->source, $context["product"], "stock", [], "any", false, false, false, 247) &&  !twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 247))) ? (twig_get_attribute($this->env, $this->source, $context["product"], "stock", [], "any", false, false, false, 247)) : (($context["button_cart"] ?? null)));
                        echo "\" /><span>";
                        echo (((twig_get_attribute($this->env, $this->source, $context["product"], "stock", [], "any", false, false, false, 247) &&  !twig_get_attribute($this->env, $this->source, $context["product"], "can_buy", [], "any", false, false, false, 247))) ? (twig_get_attribute($this->env, $this->source, $context["product"], "stock", [], "any", false, false, false, 247)) : (($context["button_cart"] ?? null)));
                        echo "</span></button>
\t\t\t";
                    }
                    // line 249
                    echo "\t\t\t
\t\t\t";
                }
                // line 251
                echo "\t\t\t
\t\t\t\t                </div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"fm-module-overlay\"></div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 258
            echo "\t\t\t\t</div>
\t\t\t\t";
            // line 259
            echo ($context["pagination"] ?? null);
            echo "
\t\t\t";
        }
        // line 261
        echo "\t\t\t";
        if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_desc_position", [], "any", true, true, false, 261) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "category_desc_position", [], "any", false, false, false, 261) == "bottom"))) {
            // line 262
            echo "\t\t\t\t";
            if ((($context["thumb"] ?? null) || ($context["description"] ?? null))) {
                // line 263
                echo "\t\t\t\t<div class=\"fm-category-description\">
\t\t\t\t\t<div class=\"d-md-flex\">
\t\t\t\t\t\t";
                // line 265
                if (($context["thumb"] ?? null)) {
                    // line 266
                    echo "\t\t\t\t\t\t<div class=\"fm-category-description-img\"><img src=\"";
                    echo ($context["thumb"] ?? null);
                    echo "\" alt=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" title=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" /></div>
\t\t\t\t\t\t";
                }
                // line 268
                echo "\t\t\t\t\t\t";
                if (($context["description"] ?? null)) {
                    // line 269
                    echo "\t\t\t\t\t\t<div id=\"fm-category-description\">
\t\t\t\t\t\t\t<div class=\"fm-category-description-text\">";
                    // line 270
                    echo ($context["description"] ?? null);
                    echo "</div>

\t\t\t";
                    // line 272
                    if ((array_key_exists("categories_page", $context) &&  !twig_test_empty(($context["categories_page"] ?? null)))) {
                        // line 273
                        echo "\t\t\t<div class=\"fm-category-categories_page-text\">
\t\t\t\t<ul class=\"category-landing-links list-unstyled\">
\t\t\t\t";
                        // line 275
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(($context["categories_page"] ?? null));
                        foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                            // line 276
                            echo "\t\t\t\t\t";
                            if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 276))) {
                                // line 277
                                echo "\t\t\t\t\t<li class=\"category-landing-links-item\">
\t\t\t\t\t\t<span class=\"category-landing-links-item-title\">";
                                // line 278
                                echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 278)) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4[($context["language_id"] ?? null)] ?? null) : null);
                                echo "</span>
\t\t\t\t\t\t";
                                // line 279
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 279));
                                foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                    // line 280
                                    echo "\t\t\t\t\t\t<a href=\"";
                                    echo twig_get_attribute($this->env, $this->source, (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["link"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 280);
                                    echo "\" class=\"category-landing-links-item-link d-flex-inline align-items-center\" title=\"";
                                    echo twig_get_attribute($this->env, $this->source, (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["link"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 280);
                                    echo "\"><span>";
                                    echo twig_get_attribute($this->env, $this->source, (($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 = $context["link"]) && is_array($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52) || $__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 instanceof ArrayAccess ? ($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 280);
                                    echo "</span></a>
\t\t\t\t\t\t";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 282
                                echo "\t\t\t\t\t</li>
\t\t\t\t\t";
                            }
                            // line 284
                            echo "\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 285
                        echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t\t";
                    }
                    // line 288
                    echo "\t\t\t
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 291
                echo "\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t";
            }
            // line 294
            echo "\t\t\t";
        }
        // line 295
        echo "\t\t\t";
        if ((( !($context["categories"] ?? null) &&  !($context["products"] ?? null)) && twig_test_empty(strip_tags(($context["description"] ?? null))))) {
            // line 296
            echo "\t\t\t<div class=\"p-4\">
\t\t\t\t<p>";
            // line 297
            echo ($context["text_empty"] ?? null);
            echo "</p>
\t\t\t\t<a href=\"";
            // line 298
            echo ($context["continue"] ?? null);
            echo "\" class=\"fm-btn fm-btn-blue mt-3 d-inline-block\">";
            echo ($context["button_continue"] ?? null);
            echo "</a>
\t\t\t</div>
\t\t\t";
        }
        // line 301
        echo "\t\t</div>
\t\t";
        // line 302
        echo ($context["column_right"] ?? null);
        echo "
\t</div>
\t";
        // line 304
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
";
        // line 306
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/product/category.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  880 => 306,  875 => 304,  870 => 302,  867 => 301,  859 => 298,  855 => 297,  852 => 296,  849 => 295,  846 => 294,  841 => 291,  836 => 288,  831 => 285,  825 => 284,  821 => 282,  808 => 280,  804 => 279,  800 => 278,  797 => 277,  794 => 276,  790 => 275,  786 => 273,  784 => 272,  779 => 270,  776 => 269,  773 => 268,  763 => 266,  761 => 265,  757 => 263,  754 => 262,  751 => 261,  746 => 259,  743 => 258,  731 => 251,  727 => 249,  717 => 247,  715 => 246,  712 => 245,  705 => 243,  699 => 240,  695 => 239,  690 => 237,  685 => 234,  683 => 233,  678 => 230,  674 => 228,  663 => 225,  660 => 224,  656 => 223,  653 => 222,  651 => 221,  648 => 220,  642 => 218,  639 => 217,  635 => 215,  627 => 213,  624 => 212,  618 => 209,  613 => 206,  610 => 205,  604 => 203,  601 => 202,  599 => 201,  594 => 199,  591 => 198,  585 => 195,  582 => 194,  580 => 193,  577 => 192,  575 => 191,  568 => 189,  565 => 188,  558 => 186,  556 => 185,  552 => 183,  546 => 180,  543 => 179,  537 => 178,  533 => 176,  529 => 174,  526 => 173,  522 => 172,  518 => 170,  516 => 169,  497 => 167,  493 => 166,  485 => 163,  477 => 160,  473 => 158,  465 => 155,  462 => 154,  460 => 153,  455 => 150,  451 => 148,  445 => 147,  439 => 144,  434 => 143,  431 => 142,  427 => 141,  424 => 140,  422 => 139,  414 => 136,  411 => 135,  407 => 134,  404 => 133,  400 => 131,  391 => 128,  387 => 127,  382 => 126,  378 => 125,  375 => 124,  373 => 123,  369 => 121,  366 => 120,  361 => 117,  351 => 113,  345 => 112,  341 => 111,  338 => 110,  334 => 109,  330 => 107,  327 => 106,  324 => 105,  317 => 101,  313 => 100,  308 => 97,  302 => 96,  294 => 94,  286 => 92,  283 => 91,  279 => 90,  275 => 88,  269 => 87,  261 => 85,  253 => 83,  250 => 82,  246 => 81,  241 => 78,  238 => 77,  235 => 76,  232 => 75,  228 => 73,  213 => 61,  206 => 60,  204 => 59,  201 => 58,  197 => 56,  193 => 54,  191 => 53,  188 => 52,  183 => 49,  177 => 48,  173 => 46,  160 => 44,  156 => 43,  152 => 42,  149 => 41,  146 => 40,  142 => 39,  138 => 37,  136 => 36,  131 => 34,  124 => 33,  121 => 32,  111 => 30,  109 => 29,  105 => 27,  102 => 26,  100 => 25,  97 => 24,  91 => 22,  89 => 21,  83 => 19,  80 => 18,  77 => 17,  74 => 16,  71 => 15,  68 => 14,  65 => 13,  63 => 12,  59 => 11,  54 => 9,  48 => 6,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/product/category.twig", "");
    }
}
