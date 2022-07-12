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

/* oct_feelmart/template/common/header.twig */
class __TwigTemplate_25071a68cfe420f3ca5493ceb1396c33c355a75eef1fa980deca203e078b27be extends \Twig\Template
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
        echo "<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir=\"";
        // line 3
        echo ($context["direction"] ?? null);
        echo "\" lang=\"";
        echo ($context["lang"] ?? null);
        echo "\" class=\"ie8\"><![endif]-->
<!--[if IE 9 ]><html dir=\"";
        // line 4
        echo ($context["direction"] ?? null);
        echo "\" lang=\"";
        echo ($context["lang"] ?? null);
        echo "\" class=\"ie9\"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir=\"";
        // line 6
        echo ($context["direction"] ?? null);
        echo "\" lang=\"";
        echo ($context["lang"] ?? null);
        echo "\">
<!--<![endif]-->
<head>
<meta charset=\"UTF-8\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=0\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">

            ";
        // line 13
        if ((array_key_exists("oct_analytics_google_webmaster_code", $context) &&  !twig_test_empty(($context["oct_analytics_google_webmaster_code"] ?? null)))) {
            // line 14
            echo "            \t<meta name=\"google-site-verification\" content=\"";
            echo ($context["oct_analytics_google_webmaster_code"] ?? null);
            echo "\" />
            ";
        }
        // line 16
        echo "
            ";
        // line 17
        if ((array_key_exists("oct_analytics_yandex_webmaster_code", $context) &&  !twig_test_empty(($context["oct_analytics_yandex_webmaster_code"] ?? null)))) {
            // line 18
            echo "            \t<meta name=\"yandex-verification\" content=\"";
            echo ($context["oct_analytics_yandex_webmaster_code"] ?? null);
            echo "\" />
            ";
        }
        // line 20
        echo "\t\t\t
<title>";
        // line 21
        echo ($context["title"] ?? null);
        echo "</title>

";
        // line 23
        if (((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "open_graph", [], "any", true, true, false, 23) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "open_graph", [], "any", false, false, false, 23)) &&  !twig_test_empty(($context["octOpenGraphs"] ?? null)))) {
            // line 24
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["octOpenGraphs"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["octOpenGraph"]) {
                // line 25
                if ( !twig_test_empty(twig_get_attribute($this->env, $this->source, $context["octOpenGraph"], "content", [], "any", false, false, false, 25))) {
                    // line 26
                    echo "<meta property=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["octOpenGraph"], "property", [], "any", false, false, false, 26);
                    echo "\" content=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["octOpenGraph"], "content", [], "any", false, false, false, 26);
                    echo "\" />
";
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['octOpenGraph'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        }
        // line 30
        echo "\t\t\t
<base href=\"";
        // line 31
        echo ($context["base"] ?? null);
        echo "\" />
";
        // line 32
        if (($context["description"] ?? null)) {
            // line 33
            echo "<meta name=\"description\" content=\"";
            echo ($context["description"] ?? null);
            echo "\" />
";
        }
        // line 35
        if (($context["keywords"] ?? null)) {
            // line 36
            echo "<meta name=\"keywords\" content=\"";
            echo ($context["keywords"] ?? null);
            echo "\" />
";
        }
        // line 38
        if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "preload", [], "any", true, true, false, 38) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "preload", [], "any", false, false, false, 38))) {
            // line 39
            echo "<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/stylesheet/fonts/mem8YaGs126MiZpBA-UFVZ0bf8pkAg.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/stylesheet/fonts/mem5YaGs126MiZpBA-UNirkOUuhpKKSTjw.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/stylesheet/fonts/mem5YaGs126MiZpBA-UN7rgOUuhpKKSTjw.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/stylesheet/fonts/mem5YaGs126MiZpBA-UNirkOVuhpKKSTj5PW.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/stylesheet/fonts/mem5YaGs126MiZpBA-UN7rgOVuhpKKSTj5PW.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/stylesheet/fonts/mem8YaGs126MiZpBA-UFUZ0bf8pkAp6a.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/webfonts/fa-regular-400.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/webfonts/fa-solid-900.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
<link rel=\"preload\" href=\"catalog/view/theme/oct_feelmart/webfonts/fa-brands-400.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>
";
        }
        // line 49
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["styles"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["style"]) {
            // line 50
            echo "<link href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["style"], "href", [], "any", false, false, false, 50);
            echo "\" rel=\"stylesheet\" media=\"";
            echo twig_get_attribute($this->env, $this->source, $context["style"], "media", [], "any", false, false, false, 50);
            echo "\" />
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['style'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 52
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["scripts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 53
            echo "<script src=\"";
            echo $context["script"];
            echo "\"></script>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['script'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 55
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["links"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
            // line 56
            echo "<link href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["link"], "href", [], "any", false, false, false, 56);
            echo "\" rel=\"";
            echo twig_get_attribute($this->env, $this->source, $context["link"], "rel", [], "any", false, false, false, 56);
            echo "\" />
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 58
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["analytics"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["analytic"]) {
            // line 59
            echo $context["analytic"];
            echo "
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['analytic'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 61
        echo "</head>
<body class=\"padding-";
        // line 62
        echo ($context["sidebar_position"] ?? null);
        echo "\">
<div id=\"fm_sidebar_overlay\"></div>
<div id=\"fm_sidebar\">
    <div class=\"fm_sidebar-title d-flex alig-items-center justify-content-between\">
      <span class=\"fm_sidebar-title-text\">";
        // line 66
        echo ($context["oct_menu"] ?? null);
        echo "</span>
      <span class=\"fm_sidebar-title-close\"></span>
    </div>
    <div id=\"fm_sidebar_content\" class=\"fm_sidebar-content\"></div>
</div>
";
        // line 71
        echo ($context["oct_sidebar_mobile"] ?? null);
        echo "
<nav id=\"top\" class=\"top d-none d-lg-block\">
\t<div class=\"container d-flex justify-content-between\">
\t  \t";
        // line 74
        if ((array_key_exists("header_informations", $context) &&  !twig_test_empty(($context["header_informations"] ?? null)))) {
            // line 75
            echo "\t\t<ul class=\"info-list list-unstyled d-flex\">
\t\t\t";
            // line 76
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["header_informations"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["header_link"]) {
                // line 77
                echo "\t\t\t<li class=\"info-item\"><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["header_link"], "href", [], "any", false, false, false, 77);
                echo "\" class=\"info-link\">";
                echo twig_get_attribute($this->env, $this->source, $context["header_link"], "title", [], "any", false, false, false, 77);
                echo "</a></li>
\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['header_link'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 79
            echo "\t\t</ul>
\t\t";
        }
        // line 81
        echo "\t\t<div id=\"top-links\" class=\"nav d-flex\">
\t\t\t";
        // line 82
        echo ($context["language"] ?? null);
        echo "
\t\t\t";
        // line 83
        echo ($context["currency"] ?? null);
        echo "
\t\t\t<div class=\"dropdown\" id=\"fm-account-dropdown\">
\t\t\t\t";
        // line 85
        if (($context["logged"] ?? null)) {
            // line 86
            echo "\t\t\t\t<a href=\"";
            echo ($context["account"] ?? null);
            echo "\" title=\"";
            echo ($context["text_account"] ?? null);
            echo "\" class=\"btn btn-user btn-link dropdown-toggle btn-block h-100 d-flex align-items-center\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">";
            echo ($context["text_account"] ?? null);
            echo " <i class=\"fas fa-chevron-down\" ></i></a>
\t\t\t\t<ul class=\"dropdown-menu nav-dropdown-menu user-dropdown-menu\">
\t\t            <li class=\"dropdown-item my-dropdown-item\"><a href=\"";
            // line 88
            echo ($context["account"] ?? null);
            echo "\">";
            echo ($context["text_account"] ?? null);
            echo "</a></li>
\t\t            <li class=\"dropdown-item my-dropdown-item\"><a href=\"";
            // line 89
            echo ($context["order"] ?? null);
            echo "\">";
            echo ($context["text_order"] ?? null);
            echo "</a></li>
\t\t            <li class=\"dropdown-item my-dropdown-item\"><a href=\"";
            // line 90
            echo ($context["transaction"] ?? null);
            echo "\">";
            echo ($context["text_transaction"] ?? null);
            echo "</a></li>
\t\t            <li class=\"dropdown-item my-dropdown-item\"><a href=\"";
            // line 91
            echo ($context["download"] ?? null);
            echo "\">";
            echo ($context["text_download"] ?? null);
            echo "</a></li>
\t\t            <li class=\"dropdown-item my-dropdown-item\"><a href=\"";
            // line 92
            echo ($context["logout"] ?? null);
            echo "\">";
            echo ($context["text_logout"] ?? null);
            echo "</a></li>
\t\t\t\t</ul>
\t\t\t\t";
        } else {
            // line 95
            echo "\t\t\t\t<a href=\"javascript:;\" onclick=\"octPopupLogin();\" title=\"";
            echo ($context["text_account"] ?? null);
            echo "\" class=\"btn btn-user btn-link btn-block h-100 d-flex align-items-center\" role=\"button\" aria-haspopup=\"true\">";
            echo ($context["text_account"] ?? null);
            echo "</a>
\t\t\t\t";
        }
        // line 97
        echo "\t        </div>
\t\t</div>
\t</div>
</nav>
<header>
  <div class=\"container\">
    <div class=\"row align-items-center\">
\t\t";
        // line 104
        if (($context["logo"] ?? null)) {
            // line 105
            echo "    \t<div id=\"logo\" class=\"col-6 col-md-2 col-lg-3 col-xl-3\">
\t\t\t";
            // line 106
            if ((array_key_exists("oct_home", $context) && ($context["oct_home"] ?? null))) {
                // line 107
                echo "\t\t\t<div class=\"fm-logo\"><img src=\"";
                echo ($context["logo"] ?? null);
                echo "\" title=\"";
                echo ($context["name"] ?? null);
                echo "\" alt=\"";
                echo ($context["name"] ?? null);
                echo "\" class=\"img-fluid\" /></div>
\t\t\t";
            } else {
                // line 109
                echo "\t\t\t<div class=\"fm-logo\">
\t\t\t<a href=\"";
                // line 110
                echo ($context["home"] ?? null);
                echo "\">
\t\t\t\t<img src=\"";
                // line 111
                echo ($context["logo"] ?? null);
                echo "\" title=\"";
                echo ($context["name"] ?? null);
                echo "\" alt=\"";
                echo ($context["name"] ?? null);
                echo "\" class=\"img-fluid\" />
\t\t\t</a>
\t\t\t</div>
\t\t\t";
            }
            // line 115
            echo "\t\t</div>
\t\t";
        } else {
            // line 117
            echo "\t\t<h1><a href=\"";
            echo ($context["home"] ?? null);
            echo "\">";
            echo ($context["name"] ?? null);
            echo "</a></h1>
\t\t";
        }
        // line 119
        echo "\t\t";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, true, false, 119), ($context["oct_lang_id"] ?? null), [], "array", true, true, false, 119) && (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, false, false, 119)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4[($context["oct_lang_id"] ?? null)] ?? null) : null))) {
            // line 120
            echo "\t\t<div class=\"d-none d-md-flex col-md-7 col-lg-6 col-xl-5 fm-header-address\">
\t        <div class=\"header-dropdown-box\">
\t\t\t\t<a class=\"header-dropdown-toggle btn btn-header btn-link d-flex align-items-center h-100\" href=\"javascript:;\" role=\"button\"><i class=\"fas fa-map-marker-alt\"></i> <span>";
            // line 122
            echo (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, false, false, 122)) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144[($context["oct_lang_id"] ?? null)] ?? null) : null);
            echo "</span> <i class=\"fas fa-chevron-down\"></i></a>
\t\t\t\t<div class=\"header-dropdown text-center\">
\t\t\t\t\t<div class=\"header-dropdown-inner fm-header-address-dropdown-inner\">
\t\t\t\t\t\t<div class=\"header-dropdown-title\">";
            // line 125
            echo ($context["oct_our_address"] ?? null);
            echo ":</div>
\t\t\t\t\t    <div class=\"header-dropdown-address\">";
            // line 126
            echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, false, false, 126)) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b[($context["oct_lang_id"] ?? null)] ?? null) : null);
            echo "</div>
\t\t\t\t\t    ";
            // line 127
            if ((array_key_exists("contact_map", $context) && ($context["contact_map"] ?? null))) {
                // line 128
                echo "\t\t\t\t\t    <div class=\"header-dropdown-map\">
\t\t\t\t\t    \t<div id=\"oct-contact-map\" class=\"not_in\"></div>
\t\t\t\t\t    </div>
\t\t\t\t\t    <script>
\t\t\t\t\t    \t\$('.header-dropdown-toggle').on('mouseenter mouseleave', function() {
\t\t\t\t\t\t    \toctShowMap('";
                // line 133
                echo ($context["contact_map"] ?? null);
                echo "');
\t\t\t\t\t\t\t});
\t\t\t\t\t    </script>
\t\t\t\t\t    ";
            }
            // line 137
            echo "\t\t\t\t    </div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t\t";
        }
        // line 142
        echo "\t\t";
        if ((array_key_exists("oct_contact_opens", $context) &&  !twig_test_empty(($context["oct_contact_opens"] ?? null)))) {
            // line 143
            echo "\t\t<div class=\"fm-header-shedule d-none col-xl-2 d-xl-flex justify-content-center\">
          <div class=\"header-dropdown-box\">
            <a class=\"header-dropdown-toggle btn btn-header btn-link d-flex align-items-center h-100\" href=\"javascript:;\" role=\"button\">
              <i class=\"far fa-clock\"></i>
              <span>";
            // line 147
            echo ($context["oct_working_hours"] ?? null);
            echo "</span>
              <i class=\"fas fa-chevron-down\"></i>
            </a>
            <div class=\"header-dropdown header-dropdown-shedule text-center\">
              <div class=\"header-dropdown-inner\">
                <div class=\"header-dropdown-title header-dropdown-title-bold\">";
            // line 152
            echo ($context["oct_working_hours_shop"] ?? null);
            echo "</div>
                <ul class=\"list-unstyled\">
                \t";
            // line 154
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["oct_contact_opens"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["oct_contact_open"]) {
                // line 155
                echo "\t\t\t\t\t<li>";
                echo $context["oct_contact_open"];
                echo "</li>
\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_contact_open'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 157
            echo "                </ul>
              </div>
            </div>
          </div>
        </div>
\t\t";
        }
        // line 163
        echo "\t\t";
        if ((array_key_exists("oct_contact_telephones", $context) &&  !twig_test_empty(($context["oct_contact_telephones"] ?? null)))) {
            // line 164
            echo "\t\t<div class=\"col-6 col-md-3 col-xl-2 d-flex fm-header-phones\">
          <div class=\"fm-phone-box d-flex align-items-center\">
            <div class=\"fm-phone-img\">
              <i class=\"fas fa-mobile-alt\"></i>
            </div>
            <div class=\"fm-phone-content text-right\">
            ";
            // line 170
            if ((twig_length_filter($this->env, ($context["oct_contact_telephones"] ?? null)) > 1)) {
                // line 171
                echo "              <div class=\"header-dropdown-box btn-link dropdown-toggle d-flex align-items-center\">
                ";
                // line 172
                echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = ($context["oct_contact_telephones"] ?? null)) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002[0] ?? null) : null);
                echo "
                <i class=\"fas fa-chevron-down\"></i>
\t            <div class=\"header-dropdown text-center\">
\t                <div class=\"header-dropdown-inner\">
\t                  <div class=\"header-dropdown-title header-dropdown-title-bold\">";
                // line 176
                echo ($context["oct_our_telephones"] ?? null);
                echo "</div>
\t                  <ul class=\"list-unstyled\">
\t                    ";
                // line 178
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["oct_contact_telephones"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["oct_contact_telephone"]) {
                    // line 179
                    echo "\t\t\t\t\t\t<li><a href=\"tel:";
                    echo twig_replace_filter($context["oct_contact_telephone"], [" " => "", "-" => "", "(" => "", ")" => ""]);
                    echo "\" class=\"phoneclick\">";
                    echo $context["oct_contact_telephone"];
                    echo "</a></li>
\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_contact_telephone'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 181
                echo "\t                  </ul>
\t                </div>
\t            </div>
              </div>
              ";
            } else {
                // line 186
                echo "\t\t\t\t<a class=\"btn btn-link dropdown-toggle d-flex align-items-center\" href=\"tel:";
                echo twig_replace_filter((($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = ($context["oct_contact_telephones"] ?? null)) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4[0] ?? null) : null), [" " => "", "-" => "", "(" => "", ")" => ""]);
                echo "\" role=\"button\" id=\"us-phones-dropdown\"><span>";
                echo (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = ($context["oct_contact_telephones"] ?? null)) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666[0] ?? null) : null);
                echo "</span></a>
\t\t\t\t";
            }
            // line 188
            echo "
\t\t\t";
            // line 189
            if ((array_key_exists("oct_popup_call_phone_status", $context) && ($context["oct_popup_call_phone_status"] ?? null))) {
                // line 190
                echo "\t\t\t<a href=\"javascript:;\" class=\"fm-phone-link\" onclick=\"octPopupCallPhone()\">";
                echo ($context["oct_call_phone"] ?? null);
                echo "</a>
\t\t\t";
            }
            // line 192
            echo "\t\t\t
            </div>
          </div>
        </div>
        ";
        }
        // line 197
        echo "    </div>
  </div>
</header>
<div class=\"menu-row sticky-top\">
\t<div class=\"container\">
\t\t<div class=\"row\">
\t\t\t";
        // line 203
        echo ($context["menu"] ?? null);
        echo "
\t        <div class=\"col-lg-9 fm-menu-buttons-list-col d-flex justify-content-between\">
\t\t        ";
        // line 205
        echo ($context["search"] ?? null);
        echo "
\t\t        <div class=\"fm-menu-buttons-list d-flex\">
\t\t        \t";
        // line 207
        if (((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "header_product_views", [], "any", true, true, false, 207) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "header_product_views", [], "any", false, false, false, 207)) && (array_key_exists("product_views_count", $context) && ($context["product_views_count"] ?? null)))) {
            // line 208
            echo "\t\t            <button title=\"";
            echo ($context["fixed_bar_views"] ?? null);
            echo "\" type=\"button\" class=\"fm-menu-buttons-item fm-menu-buttons-viewed\" onclick=\"fmSidebar('";
            echo ($context["oct_product_views"] ?? null);
            echo "', 'viewed');\">
\t\t\t            <span class=\"fm-menu-buttons-icon\">
\t\t\t                <img src=\"catalog/view/theme/oct_feelmart/img/viewed-icon.svg\" alt=\"viewed-icon\">
\t\t\t                <span class=\"fm-menu-buttons-index fm-menu-viewed-index\">";
            // line 211
            echo ($context["product_views_count"] ?? null);
            echo "</span>
\t\t\t            </span>
\t\t            </button>
\t\t            ";
        }
        // line 215
        echo "\t\t            <button title=\"";
        echo ($context["fixed_bar_compare"] ?? null);
        echo "\" onclick=\"location.href='";
        echo ($context["compare_link"] ?? null);
        echo "';\" type=\"button\" class=\"fm-menu-buttons-item fm-menu-buttons-compare\">
\t\t\t            <span class=\"fm-menu-buttons-icon\">
\t\t\t                <img src=\"catalog/view/theme/oct_feelmart/img/compare-icon.svg\" alt=\"compare-icon\">
\t\t\t                <span class=\"fm-menu-buttons-index fm-menu-compare-index\">";
        // line 218
        echo ($context["compare_total"] ?? null);
        echo "</span>
\t\t\t            </span>
\t\t            </button>
\t\t            <button title=\"";
        // line 221
        echo ($context["fixed_bar_wishlist"] ?? null);
        echo "\" onclick=\"location.href='";
        echo ($context["wishlist_link"] ?? null);
        echo "';\" type=\"button\" class=\"fm-menu-buttons-item fm-menu-buttons-wishlist\">
\t\t\t            <span class=\"fm-menu-buttons-icon\">
\t\t\t                <img src=\"catalog/view/theme/oct_feelmart/img/heart-icon.svg\" alt=\"heart-icon\">
\t\t\t                <span class=\"fm-menu-buttons-index fm-menu-wishlist-index\">";
        // line 224
        echo ($context["wishlist_total"] ?? null);
        echo "</span>
\t\t\t            </span>
\t\t            </button>
\t\t            ";
        // line 227
        echo ($context["cart"] ?? null);
        echo "
\t\t        </div>
\t        </div>
\t\t</div>
\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/common/header.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  602 => 227,  596 => 224,  588 => 221,  582 => 218,  573 => 215,  566 => 211,  557 => 208,  555 => 207,  550 => 205,  545 => 203,  537 => 197,  530 => 192,  524 => 190,  522 => 189,  519 => 188,  511 => 186,  504 => 181,  493 => 179,  489 => 178,  484 => 176,  477 => 172,  474 => 171,  472 => 170,  464 => 164,  461 => 163,  453 => 157,  444 => 155,  440 => 154,  435 => 152,  427 => 147,  421 => 143,  418 => 142,  411 => 137,  404 => 133,  397 => 128,  395 => 127,  391 => 126,  387 => 125,  381 => 122,  377 => 120,  374 => 119,  366 => 117,  362 => 115,  351 => 111,  347 => 110,  344 => 109,  334 => 107,  332 => 106,  329 => 105,  327 => 104,  318 => 97,  310 => 95,  302 => 92,  296 => 91,  290 => 90,  284 => 89,  278 => 88,  268 => 86,  266 => 85,  261 => 83,  257 => 82,  254 => 81,  250 => 79,  239 => 77,  235 => 76,  232 => 75,  230 => 74,  224 => 71,  216 => 66,  209 => 62,  206 => 61,  198 => 59,  194 => 58,  183 => 56,  179 => 55,  170 => 53,  166 => 52,  155 => 50,  151 => 49,  139 => 39,  137 => 38,  131 => 36,  129 => 35,  123 => 33,  121 => 32,  117 => 31,  114 => 30,  101 => 26,  99 => 25,  95 => 24,  93 => 23,  88 => 21,  85 => 20,  79 => 18,  77 => 17,  74 => 16,  68 => 14,  66 => 13,  54 => 6,  47 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/common/header.twig", "");
    }
}
