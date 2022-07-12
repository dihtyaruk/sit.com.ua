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

/* oct_feelmart/template/common/menu.twig */
class __TwigTemplate_f3e5823c3b06b4f63aa84ddd6eb754f69cab5b2168f0ee40d114afee7cf7a8e1 extends \Twig\Template
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
            echo "\t";
            if ((array_key_exists("mobile", $context) && ($context["mobile"] ?? null))) {
                // line 3
                echo "\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 4
                    echo "\t\t\t<li class=\"fm_mobile_menu-list-item d-flex align-items-center justify-content-between\">
\t\t\t\t<a href=\"";
                    // line 5
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 5);
                    echo "\"";
                    if (twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 5)) {
                        echo " class=\"d-flex align-items-center\"";
                    }
                    echo ">";
                    if (twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 5)) {
                        echo "<img class=\"oct-menu-cat-icon\" src=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 5);
                        echo "\" alt=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 5);
                        echo "\" />";
                    }
                    echo "<span>";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 5);
                    echo "</span></a>
\t\t\t\t";
                    // line 6
                    if ((twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 6) ||  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 6)))) {
                        // line 7
                        echo "\t\t\t\t<button class=\"fm_mobile_menu_second_button\"><i class=\"fas fa-angle-right\"></i></button>
\t\t\t\t<div class=\"fm_mobile_menu_third\">
\t\t\t\t\t<div class=\"fm_mobile_menu_back fm_mobile_menu_second_back fm_mobile_menu-list-item d-flex align-items-center\">
\t\t\t\t\t\t<span class=\"fm_mobile_menu_back-icon\"></span> <span class=\"fm_mobile_menu_back-text\">";
                        // line 10
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 10);
                        echo "</span>
\t\t\t\t\t</div>
\t\t\t\t\t<ul class=\"fm_mobile_menu-list\">
\t\t\t\t\t\t";
                        // line 13
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 13));
                        foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                            // line 14
                            echo "\t\t\t\t\t\t<li class=\"fm_mobile_menu-list-item d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t<a href=\"";
                            // line 15
                            echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 15);
                            echo "\"><span>";
                            echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 15);
                            echo "</span></a>
\t\t\t\t\t\t\t";
                            // line 16
                            if ((twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 16) ||  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 16)))) {
                                // line 17
                                echo "\t\t\t\t\t\t\t<button class=\"fm_mobile_menu_third_button\"><i class=\"fas fa-angle-right\"></i></button>
\t\t\t\t\t\t\t<div class=\"fm_mobile_menu_fourth\">
\t\t\t\t\t\t\t\t<div class=\"fm_mobile_menu_back fm_mobile_menu_third_back fm_mobile_menu-list-item d-flex align-items-center\">
\t\t\t\t\t\t\t\t\t<span class=\"fm_mobile_menu_back-icon\"></span> <span class=\"fm_mobile_menu_back-text\">";
                                // line 20
                                echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 20);
                                echo "</span>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<ul class=\"fm_mobile_menu-list\">
\t\t\t\t\t\t\t\t\t";
                                // line 23
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 23));
                                foreach ($context['_seq'] as $context["_key"] => $context["ch"]) {
                                    // line 24
                                    echo "\t\t\t\t\t\t\t\t\t<li class=\"fm_mobile_menu-list-item d-flex align-items-center justify-content-between";
                                    if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["ch"], "oct_pages", [], "any", false, false, false, 24))) {
                                        echo " flex-wrap third-level-landing-parent";
                                    }
                                    echo "\">
\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                    // line 25
                                    echo twig_get_attribute($this->env, $this->source, $context["ch"], "href", [], "any", false, false, false, 25);
                                    echo "\"><span>";
                                    echo twig_get_attribute($this->env, $this->source, $context["ch"], "name", [], "any", false, false, false, 25);
                                    echo "</span></a>
\t\t\t\t\t\t\t\t\t\t";
                                    // line 26
                                    if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["ch"], "oct_pages", [], "any", false, false, false, 26))) {
                                        // line 27
                                        echo "\t\t\t\t\t\t\t\t\t\t<button class=\"third-level-landing-button\"><i class=\"fas fa-angle-down\"></i></button>
\t\t\t\t\t\t\t\t\t\t<ul class=\"third-level-landing\">
\t\t\t\t\t\t\t\t\t\t";
                                        // line 29
                                        $context['_parent'] = $context;
                                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["ch"], "oct_pages", [], "any", false, false, false, 29));
                                        foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                                            // line 30
                                            echo "\t\t\t\t\t\t\t\t\t\t\t";
                                            if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 30))) {
                                                // line 31
                                                echo "\t\t\t\t\t\t\t\t\t\t\t<li class=\"group-title\">
\t\t\t\t\t\t\t\t\t\t\t\t<strong>";
                                                // line 32
                                                echo (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 32)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4[($context["language_id"] ?? null)] ?? null) : null);
                                                echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                                // line 33
                                                $context['_parent'] = $context;
                                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 33));
                                                foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                                    // line 34
                                                    echo "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                                    echo twig_get_attribute($this->env, $this->source, (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["link"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 34);
                                                    echo "\" title=\"";
                                                    echo twig_get_attribute($this->env, $this->source, (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["link"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 34);
                                                    echo "\">";
                                                    echo twig_get_attribute($this->env, $this->source, (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["link"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 34);
                                                    echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                                }
                                                $_parent = $context['_parent'];
                                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                                $context = array_intersect_key($context, $_parent) + $_parent;
                                                // line 36
                                                echo "\t\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t\t";
                                            }
                                            // line 38
                                            echo "\t\t\t\t\t\t\t\t\t\t";
                                        }
                                        $_parent = $context['_parent'];
                                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                                        $context = array_intersect_key($context, $_parent) + $_parent;
                                        // line 39
                                        echo "\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    // line 41
                                    echo "\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ch'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 43
                                echo "\t\t\t\t\t\t\t\t\t";
                                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 43))) {
                                    // line 44
                                    echo "\t\t\t\t\t\t\t\t\t\t";
                                    $context['_parent'] = $context;
                                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 44));
                                    foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                                        // line 45
                                        echo "\t\t\t\t\t\t\t\t\t\t\t";
                                        if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 45))) {
                                            // line 46
                                            echo "\t\t\t\t\t\t\t\t\t\t\t<li class=\"group-title\">
\t\t\t\t\t\t\t\t\t\t\t\t<strong>";
                                            // line 47
                                            echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 47)) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4[($context["language_id"] ?? null)] ?? null) : null);
                                            echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                            // line 48
                                            $context['_parent'] = $context;
                                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 48));
                                            foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                                // line 49
                                                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                                echo twig_get_attribute($this->env, $this->source, (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["link"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 49);
                                                echo "\" title=\"";
                                                echo twig_get_attribute($this->env, $this->source, (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["link"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 49);
                                                echo "\">";
                                                echo twig_get_attribute($this->env, $this->source, (($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 = $context["link"]) && is_array($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52) || $__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 instanceof ArrayAccess ? ($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 49);
                                                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                            }
                                            $_parent = $context['_parent'];
                                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                            $context = array_intersect_key($context, $_parent) + $_parent;
                                            // line 51
                                            echo "\t\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t\t";
                                        }
                                        // line 53
                                        echo "\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    $_parent = $context['_parent'];
                                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                                    $context = array_intersect_key($context, $_parent) + $_parent;
                                    // line 54
                                    echo "\t\t\t\t\t\t\t\t\t";
                                }
                                // line 55
                                echo "\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                            }
                            // line 58
                            echo "\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 60
                        echo "\t\t\t\t\t\t";
                        if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 60))) {
                            // line 61
                            echo "\t\t\t\t\t\t\t";
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 61));
                            foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                                // line 62
                                echo "\t\t\t\t\t\t\t\t";
                                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 62))) {
                                    // line 63
                                    echo "\t\t\t\t\t\t\t\t<li class=\"group-title\">
\t\t\t\t\t\t\t\t\t<strong>";
                                    // line 64
                                    echo (($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 64)) && is_array($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136) || $__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 instanceof ArrayAccess ? ($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136[($context["language_id"] ?? null)] ?? null) : null);
                                    echo "</strong>
\t\t\t\t\t\t\t\t\t";
                                    // line 65
                                    $context['_parent'] = $context;
                                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 65));
                                    foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                        // line 66
                                        echo "\t\t\t\t\t\t\t\t\t<a href=\"";
                                        echo twig_get_attribute($this->env, $this->source, (($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 = $context["link"]) && is_array($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386) || $__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 instanceof ArrayAccess ? ($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 66);
                                        echo "\" title=\"";
                                        echo twig_get_attribute($this->env, $this->source, (($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 = $context["link"]) && is_array($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9) || $__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 instanceof ArrayAccess ? ($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 66);
                                        echo "\">";
                                        echo twig_get_attribute($this->env, $this->source, (($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae = $context["link"]) && is_array($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae) || $__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae instanceof ArrayAccess ? ($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 66);
                                        echo "</a>
\t\t\t\t\t\t\t\t\t";
                                    }
                                    $_parent = $context['_parent'];
                                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                    $context = array_intersect_key($context, $_parent) + $_parent;
                                    // line 68
                                    echo "\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t";
                                }
                                // line 70
                                echo "\t\t\t\t\t\t\t";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 71
                            echo "\t\t\t\t\t\t";
                        }
                        // line 72
                        echo "\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t\t";
                    }
                    // line 75
                    echo "\t\t\t</li>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 77
                echo "\t\t";
                if (((array_key_exists("oct_all_categories", $context) && ($context["oct_all_categories"] ?? null)) &&  !array_key_exists("deff", $context))) {
                    // line 78
                    echo "\t\t\t<li class=\"fm_mobile_menu-list-item d-flex align-items-center justify-content-between\"><a href=\"";
                    echo ($context["oct_all_categories"] ?? null);
                    echo "\"><span>";
                    echo ($context["entry_oct_all_categories"] ?? null);
                    echo "</span></a></li>
\t\t";
                }
                // line 80
                echo "\t";
            } else {
                // line 81
                echo "\t\t";
                if ((array_key_exists("deff", $context) && ($context["deff"] ?? null))) {
                    // line 82
                    echo "\t\t<div id=\"oct-menu-box\" class=\"col-lg-3\">
\t\t<div class=\"fm-menu d-flex align-items-center\">
\t        <div class=\"fm-menu-burg\">
\t          <span class=\"fm-menu-burg-top\"></span>
\t          <span class=\"fm-menu-burg-middle\"></span>
\t          <span class=\"fm-menu-burg-bottom\"></span>
\t        </div>
\t        <span id=\"fm-menu-header\" class=\"fm-menu-header\">";
                    // line 89
                    echo ($context["text_category"] ?? null);
                    echo "</span>
\t    </div>
\t\t<nav id=\"oct-menu-dropdown-menu\">
\t\t\t<ul id=\"oct-menu-ul\" class=\"oct-menu-ul oct-menu-parent-ul list-unstyled\">
\t\t";
                }
                // line 94
                echo "\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 95
                    echo "\t\t\t";
                    if ((twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 95) ||  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 95)))) {
                        // line 96
                        echo "\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t<a href=\"";
                        // line 98
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 98);
                        echo "\" class=\"oct-menu-a";
                        if (twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 98)) {
                            echo " d-flex align-items-center";
                        }
                        echo "\">";
                        if (twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 98)) {
                            echo "<img class=\"oct-menu-cat-icon\" src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 98);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 98);
                            echo "\" />";
                        }
                        echo "<span class=\"oct-menu-item-name\">";
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 98);
                        echo "</span></a>";
                        if ((twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 98) ||  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 98)))) {
                            echo "<span class=\"oct-menu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                        }
                        // line 99
                        echo "\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"oct-menu-child-ul\">
\t\t\t\t\t\t<div class=\"oct-menu-back\"><i class=\"fas fa-long-arrow-alt-left\"></i> ";
                        // line 101
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 101);
                        echo "</div>
\t\t\t\t\t\t<ul class=\"oct-menu-ul list-unstyled\">
\t\t\t\t\t\t\t";
                        // line 103
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 103));
                        foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                            // line 104
                            echo "\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t<a href=\"";
                            // line 106
                            echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 106);
                            echo "\"><span class=\"oct-menu-item-name\">";
                            echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 106);
                            echo "</span></a>";
                            if ((twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 106) ||  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 106)))) {
                                echo "<span class=\"oct-childmenu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                            }
                            // line 107
                            echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                            // line 108
                            if ((twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 108) ||  !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 108)))) {
                                // line 109
                                echo "\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul oct-menu-third-child-ul\">
\t\t\t\t\t\t\t\t\t<div class=\"oct-childmenu-back\"><i class=\"fas fa-long-arrow-alt-left\"></i> ";
                                // line 110
                                echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 110);
                                echo "</div>
\t\t\t\t\t\t\t\t\t<ul class=\"oct-menu-ul list-unstyled\">
\t\t\t\t\t\t\t\t\t\t";
                                // line 112
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["child"], "children", [], "any", false, false, false, 112));
                                foreach ($context['_seq'] as $context["_key"] => $context["ch"]) {
                                    // line 113
                                    echo "\t\t\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t\t\t\t";
                                    // line 114
                                    if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["ch"], "oct_pages", [], "any", false, false, false, 114))) {
                                        // line 115
                                        echo "\t\t\t\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    // line 117
                                    echo "\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["ch"], "href", [], "any", false, false, false, 117);
                                    echo "\"><span class=\"oct-menu-item-name\">";
                                    echo twig_get_attribute($this->env, $this->source, $context["ch"], "name", [], "any", false, false, false, 117);
                                    echo "</span></a>
\t\t\t\t\t\t\t\t\t\t\t";
                                    // line 118
                                    if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["ch"], "oct_pages", [], "any", false, false, false, 118))) {
                                        // line 119
                                        echo "\t\t\t\t\t\t\t\t\t\t\t<span class=\"oct-childmenu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul oct-menu-fourth-child-ul\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"oct-childmenu-back\"><i class=\"fas fa-long-arrow-alt-left\"></i> ";
                                        // line 122
                                        echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 122);
                                        echo "</div>
\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"oct-menu-ul list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                        // line 124
                                        $context['_parent'] = $context;
                                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["ch"], "oct_pages", [], "any", false, false, false, 124));
                                        foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                                            // line 125
                                            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                            if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 125))) {
                                                // line 126
                                                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"group-title\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<strong>";
                                                // line 127
                                                echo (($__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 127)) && is_array($__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f) || $__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f instanceof ArrayAccess ? ($__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f[($context["language_id"] ?? null)] ?? null) : null);
                                                echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                                // line 128
                                                $context['_parent'] = $context;
                                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 128));
                                                foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                                    // line 129
                                                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                                    echo twig_get_attribute($this->env, $this->source, (($__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40 = $context["link"]) && is_array($__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40) || $__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40 instanceof ArrayAccess ? ($__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 129);
                                                    echo "\" title=\"";
                                                    echo twig_get_attribute($this->env, $this->source, (($__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f = $context["link"]) && is_array($__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f) || $__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f instanceof ArrayAccess ? ($__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 129);
                                                    echo "\">";
                                                    echo twig_get_attribute($this->env, $this->source, (($__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760 = $context["link"]) && is_array($__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760) || $__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760 instanceof ArrayAccess ? ($__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 129);
                                                    echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                                }
                                                $_parent = $context['_parent'];
                                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                                $context = array_intersect_key($context, $_parent) + $_parent;
                                                // line 131
                                                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                            }
                                            // line 133
                                            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                        }
                                        $_parent = $context['_parent'];
                                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                                        $context = array_intersect_key($context, $_parent) + $_parent;
                                        // line 134
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    // line 137
                                    echo "\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ch'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 139
                                echo "\t\t\t\t\t\t\t\t\t\t";
                                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 139))) {
                                    // line 140
                                    echo "\t\t\t\t\t\t\t\t\t\t\t";
                                    $context['_parent'] = $context;
                                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["child"], "oct_pages", [], "any", false, false, false, 140));
                                    foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                                        // line 141
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t";
                                        if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 141))) {
                                            // line 142
                                            echo "\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"group-title\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<strong>";
                                            // line 143
                                            echo (($__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 143)) && is_array($__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce) || $__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce instanceof ArrayAccess ? ($__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce[($context["language_id"] ?? null)] ?? null) : null);
                                            echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                            // line 144
                                            $context['_parent'] = $context;
                                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 144));
                                            foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                                // line 145
                                                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                                echo twig_get_attribute($this->env, $this->source, (($__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b = $context["link"]) && is_array($__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b) || $__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b instanceof ArrayAccess ? ($__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 145);
                                                echo "\" title=\"";
                                                echo twig_get_attribute($this->env, $this->source, (($__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c = $context["link"]) && is_array($__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c) || $__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c instanceof ArrayAccess ? ($__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 145);
                                                echo "\">";
                                                echo twig_get_attribute($this->env, $this->source, (($__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972 = $context["link"]) && is_array($__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972) || $__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972 instanceof ArrayAccess ? ($__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 145);
                                                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                            }
                                            $_parent = $context['_parent'];
                                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                            $context = array_intersect_key($context, $_parent) + $_parent;
                                            // line 147
                                            echo "\t\t\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                        }
                                        // line 149
                                        echo "\t\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    $_parent = $context['_parent'];
                                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                                    $context = array_intersect_key($context, $_parent) + $_parent;
                                    // line 150
                                    echo "\t\t\t\t\t\t\t\t\t\t";
                                }
                                // line 151
                                echo "\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                            }
                            // line 154
                            echo "\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 156
                        echo "\t\t\t\t\t\t\t";
                        if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 156))) {
                            // line 157
                            echo "\t\t\t\t\t\t\t\t";
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "oct_pages", [], "any", false, false, false, 157));
                            foreach ($context['_seq'] as $context["_key"] => $context["oct_page"]) {
                                // line 158
                                echo "\t\t\t\t\t\t\t\t\t";
                                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 158))) {
                                    // line 159
                                    echo "\t\t\t\t\t\t\t\t\t<li class=\"group-title\">
\t\t\t\t\t\t\t\t\t\t<strong>";
                                    // line 160
                                    echo (($__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216 = twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_group", [], "any", false, false, false, 160)) && is_array($__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216) || $__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216 instanceof ArrayAccess ? ($__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216[($context["language_id"] ?? null)] ?? null) : null);
                                    echo "</strong>
\t\t\t\t\t\t\t\t\t\t";
                                    // line 161
                                    $context['_parent'] = $context;
                                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["oct_page"], "page_links", [], "any", false, false, false, 161));
                                    foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
                                        // line 162
                                        echo "\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                        echo twig_get_attribute($this->env, $this->source, (($__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0 = $context["link"]) && is_array($__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0) || $__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0 instanceof ArrayAccess ? ($__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0[($context["language_id"] ?? null)] ?? null) : null), "link", [], "any", false, false, false, 162);
                                        echo "\" title=\"";
                                        echo twig_get_attribute($this->env, $this->source, (($__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c = $context["link"]) && is_array($__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c) || $__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c instanceof ArrayAccess ? ($__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 162);
                                        echo "\">";
                                        echo twig_get_attribute($this->env, $this->source, (($__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f = $context["link"]) && is_array($__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f) || $__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f instanceof ArrayAccess ? ($__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f[($context["language_id"] ?? null)] ?? null) : null), "title", [], "any", false, false, false, 162);
                                        echo "</a>
\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    $_parent = $context['_parent'];
                                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
                                    $context = array_intersect_key($context, $_parent) + $_parent;
                                    // line 164
                                    echo "\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t";
                                }
                                // line 166
                                echo "\t\t\t\t\t\t\t\t";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_page'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 167
                            echo "\t\t\t\t\t\t\t";
                        }
                        // line 168
                        echo "\t\t\t\t\t\t</ul>
\t\t\t\t\t</div>
\t\t\t\t</li>
\t\t\t";
                    } else {
                        // line 172
                        echo "\t\t\t\t<li class=\"oct-menu-li\"><a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 172);
                        echo "\" class=\"oct-menu-a";
                        if (twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 172)) {
                            echo " d-flex align-items-center";
                        }
                        echo "\">";
                        if (twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 172)) {
                            echo "<img class=\"oct-menu-cat-icon\" src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["category"], "oct_image", [], "any", false, false, false, 172);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 172);
                            echo "\" />";
                        }
                        echo "<span class=\"oct-menu-item-name\">";
                        echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 172);
                        echo "</span></a></li>
\t\t\t";
                    }
                    // line 174
                    echo "\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 175
                echo "\t\t";
                if (((array_key_exists("oct_all_categories", $context) && ($context["oct_all_categories"] ?? null)) &&  !array_key_exists("deff", $context))) {
                    // line 176
                    echo "\t\t\t<li class=\"oct-menu-li\"><a href=\"";
                    echo ($context["oct_all_categories"] ?? null);
                    echo "\" class=\"oct-menu-a\"><span class=\"oct-menu-item-name\">";
                    echo ($context["entry_oct_all_categories"] ?? null);
                    echo "</span></a></li>
\t\t";
                }
                // line 178
                echo "\t\t";
                if ((array_key_exists("deff", $context) && ($context["deff"] ?? null))) {
                    // line 179
                    echo "\t\t</ul>
\t\t</nav>
\t\t</div>
\t\t";
                }
                // line 183
                echo "\t";
            }
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/common/menu.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  651 => 183,  645 => 179,  642 => 178,  634 => 176,  631 => 175,  625 => 174,  605 => 172,  599 => 168,  596 => 167,  590 => 166,  586 => 164,  573 => 162,  569 => 161,  565 => 160,  562 => 159,  559 => 158,  554 => 157,  551 => 156,  544 => 154,  539 => 151,  536 => 150,  530 => 149,  526 => 147,  513 => 145,  509 => 144,  505 => 143,  502 => 142,  499 => 141,  494 => 140,  491 => 139,  484 => 137,  479 => 134,  473 => 133,  469 => 131,  456 => 129,  452 => 128,  448 => 127,  445 => 126,  442 => 125,  438 => 124,  433 => 122,  428 => 119,  426 => 118,  419 => 117,  415 => 115,  413 => 114,  410 => 113,  406 => 112,  401 => 110,  398 => 109,  396 => 108,  393 => 107,  385 => 106,  381 => 104,  377 => 103,  372 => 101,  368 => 99,  348 => 98,  344 => 96,  341 => 95,  336 => 94,  328 => 89,  319 => 82,  316 => 81,  313 => 80,  305 => 78,  302 => 77,  295 => 75,  290 => 72,  287 => 71,  281 => 70,  277 => 68,  264 => 66,  260 => 65,  256 => 64,  253 => 63,  250 => 62,  245 => 61,  242 => 60,  235 => 58,  230 => 55,  227 => 54,  221 => 53,  217 => 51,  204 => 49,  200 => 48,  196 => 47,  193 => 46,  190 => 45,  185 => 44,  182 => 43,  175 => 41,  171 => 39,  165 => 38,  161 => 36,  148 => 34,  144 => 33,  140 => 32,  137 => 31,  134 => 30,  130 => 29,  126 => 27,  124 => 26,  118 => 25,  111 => 24,  107 => 23,  101 => 20,  96 => 17,  94 => 16,  88 => 15,  85 => 14,  81 => 13,  75 => 10,  70 => 7,  68 => 6,  50 => 5,  47 => 4,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/common/menu.twig", "");
    }
}
