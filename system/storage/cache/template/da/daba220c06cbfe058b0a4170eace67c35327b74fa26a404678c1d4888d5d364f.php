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

/* oct_feelmart/template/octemplates/menu/oct_megamenu.twig */
class __TwigTemplate_d3d4c7cb00c8a616b23cb5190139add95d9fb204939a0516219d36983a4babf9 extends \Twig\Template
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
        if (((array_key_exists("standart_menu", $context) &&  !twig_test_empty(($context["standart_menu"] ?? null))) || (array_key_exists("items", $context) &&  !twig_test_empty(($context["items"] ?? null))))) {
            // line 2
            echo "<div id=\"oct-menu-box\" class=\"col-lg-3\">
\t<div class=\"fm-menu d-flex align-items-center\">
        <div class=\"fm-menu-burg\">
          <span class=\"fm-menu-burg-top\"></span>
          <span class=\"fm-menu-burg-middle\"></span>
          <span class=\"fm-menu-burg-bottom\"></span>
        </div>
        <span id=\"fm-menu-header\" class=\"fm-menu-header\">";
            // line 9
            echo ($context["text_category"] ?? null);
            echo "</span>
    </div>
\t<nav id=\"oct-menu-dropdown-menu\">
\t\t<ul id=\"oct-menu-ul\" class=\"oct-menu-ul oct-menu-parent-ul list-unstyled\">
\t\t\t";
            // line 13
            if ((array_key_exists("standart_menu", $context) &&  !twig_test_empty(($context["standart_menu"] ?? null)))) {
                // line 14
                echo "\t\t\t";
                echo ($context["standart_menu"] ?? null);
                echo "
\t\t\t";
            }
            // line 16
            echo "\t\t\t";
            if ((array_key_exists("items", $context) &&  !twig_test_empty(($context["items"] ?? null)))) {
                // line 17
                echo "\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["items"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
                    // line 18
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 18)) {
                        // line 19
                        echo "\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["item"], "item_type", [], "any", false, false, false, 19) == 2)) {
                            // line 20
                            echo "\t\t\t\t\t\t\t";
                            if ((twig_get_attribute($this->env, $this->source, $context["item"], "display_type", [], "any", false, false, false, 20) == 1)) {
                                // line 21
                                echo "\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                // line 23
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 23);
                                echo "\" ";
                                echo ((twig_get_attribute($this->env, $this->source, $context["item"], "open_link_type", [], "any", false, false, false, 23)) ? ("target=\"_blank\"") : (""));
                                echo " class=\"oct-menu-a";
                                if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 23)) {
                                    echo " d-flex align-items-center";
                                }
                                echo "\">";
                                if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 23)) {
                                    echo "<img class=\"oct-menu-cat-icon\" src=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 23);
                                    echo "\" alt=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 23);
                                    echo "\" />";
                                }
                                echo "<span class=\"oct-menu-item-name\">";
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 23);
                                echo "</span></a>";
                                if (twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 23)) {
                                    echo "<span class=\"oct-menu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                                }
                                // line 24
                                echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul oct-mm-box\">
\t\t\t\t\t\t\t\t\t";
                                // line 26
                                $context["divide_value"] = ((twig_get_attribute($this->env, $this->source, $context["item"], "description", [], "any", false, false, false, 26)) ? (4) : (6));
                                // line 27
                                echo "\t\t\t\t\t\t\t\t\t";
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_array_batch(twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 27), ($context["divide_value"] ?? null)));
                                foreach ($context['_seq'] as $context["_key"] => $context["children"]) {
                                    // line 28
                                    echo "\t\t\t\t\t\t\t\t\t\t";
                                    $context['_parent'] = $context;
                                    $context['_seq'] = twig_ensure_traversable($context["children"]);
                                    foreach ($context['_seq'] as $context["_key"] => $context["children_inner"]) {
                                        // line 29
                                        echo "\t\t\t\t\t\t\t\t\t\t<div class=\"oct-mm-item d-flex flex-column";
                                        if (twig_get_attribute($this->env, $this->source, $context["children_inner"], "children", [], "any", false, false, false, 29)) {
                                            echo " with-subcats";
                                        }
                                        if (twig_get_attribute($this->env, $this->source, $context["children_inner"], "thumb", [], "any", false, false, false, 29)) {
                                            echo " with-img";
                                        }
                                        echo "\">
\t\t\t\t\t\t                    <a class=\"oct-mm-item-title d-flex flex-column";
                                        // line 30
                                        if ( !twig_get_attribute($this->env, $this->source, $context["children_inner"], "thumb", [], "any", false, false, false, 30)) {
                                            echo " without-img";
                                        }
                                        echo "\" href=\"";
                                        echo twig_get_attribute($this->env, $this->source, $context["children_inner"], "href", [], "any", false, false, false, 30);
                                        echo "\">
\t\t\t\t\t\t                    \t";
                                        // line 31
                                        if (twig_get_attribute($this->env, $this->source, $context["children_inner"], "thumb", [], "any", false, false, false, 31)) {
                                            // line 32
                                            echo "\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"";
                                            echo twig_get_attribute($this->env, $this->source, $context["children_inner"], "thumb", [], "any", false, false, false, 32);
                                            echo "\" alt=\"";
                                            echo twig_get_attribute($this->env, $this->source, $context["children_inner"], "name", [], "any", false, false, false, 32);
                                            echo "\" title=\"";
                                            echo twig_get_attribute($this->env, $this->source, $context["children_inner"], "name", [], "any", false, false, false, 32);
                                            echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t";
                                        }
                                        // line 34
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t<span>";
                                        echo twig_get_attribute($this->env, $this->source, $context["children_inner"], "name", [], "any", false, false, false, 34);
                                        echo "</span>
\t\t\t\t\t\t                    </a>
\t\t\t\t\t\t                    ";
                                        // line 36
                                        if (twig_get_attribute($this->env, $this->source, $context["children_inner"], "children", [], "any", false, false, false, 36)) {
                                            // line 37
                                            echo "\t\t\t\t\t\t                    <ul class=\"oct-mm-item-list list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t";
                                            // line 38
                                            $context["countstop"] = 1;
                                            // line 39
                                            echo "\t\t\t\t\t\t\t\t\t\t\t";
                                            $context['_parent'] = $context;
                                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["children_inner"], "children", [], "any", false, false, false, 39));
                                            foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                                                // line 40
                                                echo "\t\t\t\t\t\t\t\t\t\t\t\t";
                                                $context["countstop"] = (($context["countstop"] ?? null) + 1);
                                                // line 41
                                                echo "\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
                                                echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 41);
                                                echo "\">";
                                                echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 41);
                                                echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                                // line 42
                                                if ((($context["countstop"] ?? null) > twig_get_attribute($this->env, $this->source, $context["item"], "limit_item", [], "any", false, false, false, 42))) {
                                                    // line 43
                                                    echo "\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"oct-mm-item-see-all\"><a href=\"";
                                                    echo twig_get_attribute($this->env, $this->source, $context["children_inner"], "href", [], "any", false, false, false, 43);
                                                    echo "\">";
                                                    echo ($context["text_all_category"] ?? null);
                                                    echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                                }
                                                // line 45
                                                echo "\t\t\t\t\t\t\t\t\t\t\t";
                                            }
                                            $_parent = $context['_parent'];
                                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                                            $context = array_intersect_key($context, $_parent) + $_parent;
                                            // line 46
                                            echo "\t\t\t\t\t\t                    </ul>
\t\t\t\t\t\t                    ";
                                        }
                                        // line 48
                                        echo "\t\t\t\t\t\t                </div>
\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    $_parent = $context['_parent'];
                                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['children_inner'], $context['_parent'], $context['loop']);
                                    $context = array_intersect_key($context, $_parent) + $_parent;
                                    // line 50
                                    echo "\t\t\t\t\t\t\t\t\t";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['children'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 51
                                echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t";
                            } else {
                                // line 54
                                echo "\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                // line 56
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 56);
                                echo "\" ";
                                echo ((twig_get_attribute($this->env, $this->source, $context["item"], "open_link_type", [], "any", false, false, false, 56)) ? ("target=\"_blank\"") : (""));
                                echo " class=\"oct-menu-a";
                                if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 56)) {
                                    echo " d-flex align-items-center";
                                }
                                echo "\">";
                                if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 56)) {
                                    echo "<img class=\"oct-menu-cat-icon\" src=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 56);
                                    echo "\" alt=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 56);
                                    echo "\" />";
                                }
                                echo "<span class=\"oct-menu-item-name\">";
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 56);
                                echo "</span></a>";
                                if (twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 56)) {
                                    echo "<span class=\"oct-menu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                                }
                                // line 57
                                echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul\">
\t\t\t\t\t\t\t\t\t\t<ul class=\"oct-menu-ul list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t";
                                // line 60
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 60));
                                foreach ($context['_seq'] as $context["_key"] => $context["children"]) {
                                    // line 61
                                    echo "\t\t\t\t\t\t\t\t\t\t\t\t";
                                    if (twig_get_attribute($this->env, $this->source, $context["children"], "children", [], "any", false, false, false, 61)) {
                                        // line 62
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                        // line 64
                                        echo twig_get_attribute($this->env, $this->source, $context["children"], "href", [], "any", false, false, false, 64);
                                        echo "\"><span class=\"oct-menu-item-name\">";
                                        echo twig_get_attribute($this->env, $this->source, $context["children"], "name", [], "any", false, false, false, 64);
                                        echo "</span></a>";
                                        if (twig_get_attribute($this->env, $this->source, $context["children"], "children", [], "any", false, false, false, 64)) {
                                            echo "<span class=\"oct-childmenu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                                        }
                                        // line 65
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul oct-menu-third-child-ul\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"oct-menu-ul list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                        // line 68
                                        $context['_parent'] = $context;
                                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["children"], "children", [], "any", false, false, false, 68));
                                        foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                                            // line 69
                                            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                                            // line 70
                                            echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 70);
                                            echo "\"><span class=\"oct-menu-item-name\">";
                                            echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 70);
                                            echo "</span></a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                        }
                                        $_parent = $context['_parent'];
                                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                                        $context = array_intersect_key($context, $_parent) + $_parent;
                                        // line 73
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                    } else {
                                        // line 77
                                        echo "\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\"><a href=\"";
                                        echo twig_get_attribute($this->env, $this->source, $context["children"], "href", [], "any", false, false, false, 77);
                                        echo "\"><span class=\"oct-menu-item-name\">";
                                        echo twig_get_attribute($this->env, $this->source, $context["children"], "name", [], "any", false, false, false, 77);
                                        echo "</span></a></li>
\t\t\t\t\t\t\t\t\t\t\t\t";
                                    }
                                    // line 79
                                    echo "\t\t\t\t\t\t\t\t\t\t\t";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['children'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 80
                                echo "\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t";
                            }
                            // line 84
                            echo "\t\t\t\t\t\t";
                        }
                        // line 85
                        echo "\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["item"], "item_type", [], "any", false, false, false, 85) == 3)) {
                            // line 86
                            echo "\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t<a href=\"";
                            // line 88
                            echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 88);
                            echo "\" ";
                            echo ((twig_get_attribute($this->env, $this->source, $context["item"], "open_link_type", [], "any", false, false, false, 88)) ? ("target=\"_blank\"") : (""));
                            echo " class=\"oct-menu-a";
                            if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 88)) {
                                echo " d-flex align-items-center";
                            }
                            echo "\">";
                            if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 88)) {
                                echo "<img class=\"oct-menu-cat-icon\" src=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 88);
                                echo "\" alt=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 88);
                                echo "\" />";
                            }
                            echo "<span class=\"oct-menu-item-name\">";
                            echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 88);
                            echo "</span></a>";
                            if (twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 88)) {
                                echo "<span class=\"oct-menu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                            }
                            // line 89
                            echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul oct-mm-box\">
\t\t\t\t\t\t\t\t\t";
                            // line 91
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 91));
                            foreach ($context['_seq'] as $context["_key"] => $context["children"]) {
                                // line 92
                                echo "\t\t\t\t\t\t\t\t\t<div class=\"oct-mm-item d-flex flex-column with-img\">
\t\t\t\t\t                    <a class=\"oct-mm-item-title d-flex flex-column\" href=\"";
                                // line 93
                                echo twig_get_attribute($this->env, $this->source, $context["children"], "href", [], "any", false, false, false, 93);
                                echo "\">
\t\t\t\t\t                    \t";
                                // line 94
                                if (twig_get_attribute($this->env, $this->source, $context["children"], "thumb", [], "any", false, false, false, 94)) {
                                    // line 95
                                    echo "\t\t\t\t\t\t\t\t\t\t\t<img src=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["children"], "thumb", [], "any", false, false, false, 95);
                                    echo "\" alt=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["children"], "name", [], "any", false, false, false, 95);
                                    echo "\" title=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["children"], "name", [], "any", false, false, false, 95);
                                    echo "\" />
\t\t\t\t\t\t\t\t\t\t\t";
                                }
                                // line 97
                                echo "\t\t\t\t\t\t\t\t\t\t\t<span>";
                                echo twig_get_attribute($this->env, $this->source, $context["children"], "name", [], "any", false, false, false, 97);
                                echo "</span>
\t\t\t\t\t                    </a>
\t\t\t\t\t                </div>
\t\t\t\t\t\t\t\t\t";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['children'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 101
                            echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
                        }
                        // line 104
                        echo "\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["item"], "item_type", [], "any", false, false, false, 104) == 8)) {
                            // line 105
                            echo "\t\t\t\t\t\t\t<li class=\"oct-menu-li\">
\t\t\t\t\t\t\t\t<div class=\"d-flex align-items-center justify-content-between\">
\t\t\t\t\t\t\t\t\t<a href=\"";
                            // line 107
                            echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 107);
                            echo "\" ";
                            echo ((twig_get_attribute($this->env, $this->source, $context["item"], "open_link_type", [], "any", false, false, false, 107)) ? ("target=\"_blank\"") : (""));
                            echo " class=\"oct-menu-a";
                            if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 107)) {
                                echo " d-flex align-items-center";
                            }
                            echo "\">";
                            if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 107)) {
                                echo "<img class=\"oct-menu-cat-icon\" src=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 107);
                                echo "\" alt=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 107);
                                echo "\" />";
                            }
                            echo "<span class=\"oct-menu-item-name\">";
                            echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 107);
                            echo "</span></a>";
                            if (twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 107)) {
                                echo "<span class=\"oct-menu-toggle\"><i class=\"fas fa-chevron-right\"></i></span>";
                            }
                            // line 108
                            echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"oct-menu-child-ul\">
\t\t\t\t\t\t\t\t\t<ul class=\"oct-menu-ul list-unstyled\">
\t\t\t\t\t\t\t\t\t\t";
                            // line 111
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["item"], "children", [], "any", false, false, false, 111));
                            foreach ($context['_seq'] as $context["_key"] => $context["children"]) {
                                // line 112
                                echo "\t\t\t\t\t\t\t\t\t\t<li class=\"oct-menu-li\"><a href=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["children"], "href", [], "any", false, false, false, 112);
                                echo "\"><span class=\"oct-menu-item-name\">";
                                echo twig_get_attribute($this->env, $this->source, $context["children"], "name", [], "any", false, false, false, 112);
                                echo "</span></a></li>
\t\t\t\t\t\t\t\t\t\t";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['children'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 114
                            echo "\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
                        }
                        // line 118
                        echo "\t\t\t\t\t";
                    } else {
                        // line 119
                        echo "\t\t\t\t\t\t<li class=\"oct-menu-li\"><a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 119);
                        echo "\" ";
                        echo ((twig_get_attribute($this->env, $this->source, $context["item"], "open_link_type", [], "any", false, false, false, 119)) ? ("target=\"_blank\"") : (""));
                        if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 119)) {
                            echo " class=\"d-flex align-items-center\"";
                        }
                        echo ">";
                        if (twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 119)) {
                            echo "<img class=\"oct-menu-cat-icon\" src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["item"], "image", [], "any", false, false, false, 119);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 119);
                            echo "\" />";
                        }
                        echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 119);
                        echo "</a></li>
\t\t\t\t\t";
                    }
                    // line 121
                    echo "\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 122
                echo "\t\t\t";
            }
            // line 123
            echo "\t\t</ul>
\t</nav>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/menu/oct_megamenu.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  479 => 123,  476 => 122,  470 => 121,  450 => 119,  447 => 118,  441 => 114,  430 => 112,  426 => 111,  421 => 108,  399 => 107,  395 => 105,  392 => 104,  387 => 101,  376 => 97,  366 => 95,  364 => 94,  360 => 93,  357 => 92,  353 => 91,  349 => 89,  327 => 88,  323 => 86,  320 => 85,  317 => 84,  311 => 80,  305 => 79,  297 => 77,  291 => 73,  280 => 70,  277 => 69,  273 => 68,  268 => 65,  260 => 64,  256 => 62,  253 => 61,  249 => 60,  244 => 57,  222 => 56,  218 => 54,  213 => 51,  207 => 50,  200 => 48,  196 => 46,  190 => 45,  182 => 43,  180 => 42,  173 => 41,  170 => 40,  165 => 39,  163 => 38,  160 => 37,  158 => 36,  152 => 34,  142 => 32,  140 => 31,  132 => 30,  122 => 29,  117 => 28,  112 => 27,  110 => 26,  106 => 24,  84 => 23,  80 => 21,  77 => 20,  74 => 19,  71 => 18,  66 => 17,  63 => 16,  57 => 14,  55 => 13,  48 => 9,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/menu/oct_megamenu.twig", "");
    }
}
