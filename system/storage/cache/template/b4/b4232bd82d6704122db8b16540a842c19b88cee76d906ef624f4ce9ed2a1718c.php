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

/* octemplates/theme/oct_feelmart.twig */
class __TwigTemplate_2056932b1f7ff3e8ed2fc3b8a34d17df6c263821a50f582e2985a623e21dc2ca extends \Twig\Template
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
        echo ($context["column_left"] ?? null);
        echo "
<div id=\"content\">
\t<div class=\"page-header\">
\t\t<div class=\"container-fluid\">
\t\t\t<div class=\"pull-right\">
\t\t\t\t";
        // line 6
        if (($context["update"] ?? null)) {
            // line 7
            echo "\t\t\t\t<a href=\"";
            echo ($context["update"] ?? null);
            echo "\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_update"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa fa-refresh\"></i></a>
\t\t\t\t";
        } else {
            // line 9
            echo "\t\t\t\t<a href=\"";
            echo ($context["clear_modification"] ?? null);
            echo "\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_refresh"] ?? null);
            echo "\" class=\"btn btn-info\"><i class=\"fa fa-refresh\"></i></a>
\t\t\t\t<button type=\"submit\" form=\"form-theme\" data-toggle=\"tooltip\" title=\"";
            // line 10
            echo ($context["button_save"] ?? null);
            echo "\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i></button>
\t\t\t\t<a href=\"";
            // line 11
            echo ($context["cache_delete"] ?? null);
            echo "\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_clear_cache"] ?? null);
            echo "\" class=\"btn btn-warning\"><i class=\"fa fa-trash-o\"></i></a>
\t\t\t\t";
            // line 12
            if ((twig_length_filter($this->env, ($context["stores"] ?? null)) > 1)) {
                // line 13
                echo "\t\t\t\t<div class=\"dropdown\" style=\"display:inline-block;\">
\t\t\t\t\t<a href=\"javascript:;\" data-toggle=\"dropdown\" title=\"";
                // line 14
                echo ($context["button_multistore"] ?? null);
                echo "\" class=\"dropdown-toggle btn btn-info\"><i class=\"fas fa-store\"></i></a>
\t\t\t\t\t<ul class=\"dropdown-menu dropdown-menu-right\">
\t\t\t\t\t\t";
                // line 16
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["stores"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["store"]) {
                    // line 17
                    echo "\t\t\t\t\t\t<li><a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["store"], "href", [], "any", false, false, false, 17);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["store"], "name", [], "any", false, false, false, 17);
                    echo "</li>
\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['store'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 19
                echo "\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t\t";
            }
            // line 22
            echo "\t\t\t\t";
        }
        // line 23
        echo "\t\t\t\t<a href=\"";
        echo ($context["cancel"] ?? null);
        echo "\" data-toggle=\"tooltip\" title=\"";
        echo ($context["button_cancel"] ?? null);
        echo "\" class=\"btn btn-default\"><i class=\"fa fa-reply\"></i></a>
\t\t\t</div>
\t\t\t<h1>";
        // line 25
        echo ($context["heading_title"] ?? null);
        echo "</h1>
\t\t\t<ul class=\"breadcrumb\">
\t\t\t\t";
        // line 27
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 28
            echo "\t\t\t\t<li><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 28);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 28);
            echo "</a></li>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 30
        echo "\t\t\t</ul>
\t\t</div>
\t</div>
\t<div class=\"container-fluid\">
\t\t";
        // line 34
        if (($context["error_warning"] ?? null)) {
            // line 35
            echo "\t\t<script>
\t\t\tusNotify('warning', '";
            // line 36
            echo ($context["error_warning"] ?? null);
            echo "');
\t\t</script>
\t\t";
        }
        // line 39
        echo "\t\t";
        if (($context["success"] ?? null)) {
            // line 40
            echo "\t    <script>
\t\t\tusNotify('success', '";
            // line 41
            echo ($context["success"] ?? null);
            echo "');
\t\t</script>
\t    ";
        }
        // line 44
        echo "\t\t<div class=\"panel panel-default\">
\t\t\t<div class=\"panel-heading\">
\t\t\t\t<h3 class=\"panel-title\"><i class=\"fa fa-pencil\"></i> ";
        // line 46
        echo ($context["text_edit"] ?? null);
        echo "</h3>
\t\t\t\t<div class=\"pull-right oct-version\">v.<span>";
        // line 47
        echo ($context["theme_oct_feelmart_version"] ?? null);
        echo "</span></div>
\t\t\t</div>
\t\t\t<div class=\"panel-body\">
\t\t\t\t<form action=\"";
        // line 50
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-theme\" class=\"form-horizontal\">
\t\t\t\t\t<ul class=\"nav nav-tabs\">
\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-general\" data-toggle=\"tab\"><i class=\"fa fa-cog fw\"></i> ";
        // line 52
        echo ($context["tab_general"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t<li><a href=\"#tab-image\" data-toggle=\"tab\"><i class=\"fa fa-picture-o fw\"></i> ";
        // line 53
        echo ($context["tab_image"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t<li><a href=\"#tab-widgets\" data-toggle=\"tab\"><i class=\"fa fa-cog fw\"></i> ";
        // line 54
        echo ($context["tab_widgets"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t<li><a href=\"#tab-module\" data-toggle=\"tab\"><i class=\"fa fa-cog fw\"></i> ";
        // line 55
        echo ($context["tab_module"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t<li><a href=\"#tab-seo_title\" data-toggle=\"tab\"><i class=\"fa fa-info fw\"></i> ";
        // line 56
        echo ($context["text_seo_title"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t<li><a href=\"#tab-help\" data-toggle=\"tab\"><i class=\"fas fa-info-circle\"></i> ";
        // line 57
        echo ($context["tab_help"] ?? null);
        echo "</a></li>
\t\t            </ul>
\t\t            <div class=\"tab-content\">
\t\t\t\t\t\t<div class=\"tab-pane active\" id=\"tab-general\">
\t\t\t\t\t\t\t<div class=\"col-sm-2\">
\t\t\t\t\t\t\t\t<ul class=\"nav nav-pills nav-stacked\" id=\"settings\">
\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-settings\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-cog fw\"></i> ";
        // line 63
        echo ($context["text_general"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-header\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-arrow-up fw\"></i> ";
        // line 64
        echo ($context["tab_header"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-footer\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-arrow-down fw\"></i> ";
        // line 65
        echo ($context["tab_footer"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-contacts\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-users fw\"></i> ";
        // line 66
        echo ($context["tab_contacts"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-category\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-folder-open fw\"></i> ";
        // line 67
        echo ($context["tab_category"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-product\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-tv fw\"></i> ";
        // line 68
        echo ($context["tab_product"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-orders\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"far fa-check-circle fw\"></i> ";
        // line 69
        echo ($context["tab_order"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-contacts-page\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-phone fw\"></i> ";
        // line 70
        echo ($context["tab_contacts_page"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-mobile\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-phone-square fw\"></i> ";
        // line 71
        echo ($context["tab_mobile"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-modal\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-window-maximize fw\"></i> ";
        // line 72
        echo ($context["tab_modal"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a id=\"code_mir\" href=\"#tab-css_js\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-cog fw\"></i> ";
        // line 73
        echo ($context["tab_css_js"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-orders\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 80
        echo ($context["tab_order"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"theme_oct_feelmart_data_osucsess_status\">";
        // line 82
        echo ($context["entry_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data_osucsess[status]\" ";
        // line 85
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "status", [], "any", false, false, false, 85)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"theme_oct_feelmart_data_osucsess_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"theme_oct_feelmart_data_osucsess_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 98
        echo ($context["text_order_register_account"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-3 control-label\" style=\"padding-top:80px;text-align:left;\">
\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 100
        echo ($context["entry_order_register_dop"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-9\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding-top:0;padding-bottom:0;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"order_register_account-language\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 105
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 106
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#order_register_account-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 106);
            echo "\" data-toggle=\"tab\"><img src=\"language/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 106);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 106);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 106);
            echo "\" /> ";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 106);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 108
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 111
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 112
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"order_register_account-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 112);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">";
            // line 115
            echo ($context["entry_order_register_account_title"] ?? null);
            echo "</span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_osucsess[reg][title][";
            // line 116
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 116);
            echo "]\" value=\"";
            echo ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "reg", [], "any", false, true, false, 116), "title", [], "any", false, true, false, 116), twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 116), [], "array", true, true, false, 116)) ? ((($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "reg", [], "any", false, false, false, 116), "title", [], "any", false, false, false, 116)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 116)] ?? null) : null)) : (""));
            echo "\" placeholder=\"";
            echo ($context["entry_order_register_account_title"] ?? null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"order_register_account";
            // line 120
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 120);
            echo "\" data-toggle=\"summernote\" data-lang=\"";
            echo ($context["summernote"] ?? null);
            echo "\" name=\"theme_oct_feelmart_data_osucsess[reg][text][";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 120);
            echo "]\" rows=\"5\" placeholder=\"";
            echo ($context["entry_product_dop_tab_text"] ?? null);
            echo "\" class=\"form-control\">";
            echo ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "reg", [], "any", false, true, false, 120), "text", [], "any", false, true, false, 120), twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 120), [], "array", true, true, false, 120)) ? ((($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "reg", [], "any", false, false, false, 120), "text", [], "any", false, false, false, 120)) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 120)] ?? null) : null)) : (""));
            echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 124
        echo "\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 128
        echo ($context["text_order_no_register_account"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-3 control-label\" style=\"padding-top:80px;text-align:left;\">
\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 130
        echo ($context["entry_order_no_register_dop"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-9\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"padding-top:0;padding-bottom:0;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"order_no_register_account-language\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 135
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 136
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#order_no_register_account-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 136);
            echo "\" data-toggle=\"tab\"><img src=\"language/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 136);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 136);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 136);
            echo "\" /> ";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 136);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 138
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 141
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 142
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"order_no_register_account-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 142);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">";
            // line 145
            echo ($context["entry_order_register_account_title"] ?? null);
            echo "</span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_osucsess[noreg][title][";
            // line 146
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 146);
            echo "]\" value=\"";
            echo ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "noreg", [], "any", false, true, false, 146), "title", [], "any", false, true, false, 146), twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 146), [], "array", true, true, false, 146)) ? ((($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "noreg", [], "any", false, false, false, 146), "title", [], "any", false, false, false, 146)) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 146)] ?? null) : null)) : (""));
            echo "\" placeholder=\"";
            echo ($context["entry_order_register_account_title"] ?? null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"order_no_register_account";
            // line 150
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 150);
            echo "\" data-toggle=\"summernote\" data-lang=\"";
            echo ($context["summernote"] ?? null);
            echo "\" name=\"theme_oct_feelmart_data_osucsess[noreg][text][";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 150);
            echo "]\" rows=\"5\" placeholder=\"";
            echo ($context["entry_product_dop_tab_text"] ?? null);
            echo "\" class=\"form-control\">";
            echo ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "noreg", [], "any", false, true, false, 150), "text", [], "any", false, true, false, 150), twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 150), [], "array", true, true, false, 150)) ? ((($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_osucsess"] ?? null), "noreg", [], "any", false, false, false, 150), "text", [], "any", false, false, false, 150)) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 150)] ?? null) : null)) : (""));
            echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 154
        echo "\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane active\" id=\"tab-settings\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 160
        echo ($context["text_general"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_directory\" value=\"";
        // line 161
        echo ($context["theme_oct_feelmart_directory"] ?? null);
        echo "\" />
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"theme_oct_feelmart_status\">";
        // line 163
        echo ($context["entry_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_status\" ";
        // line 166
        if (($context["theme_oct_feelmart_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"theme_oct_feelmart_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"theme_oct_feelmart_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-license\">";
        // line 178
        echo ($context["entry_license"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"input-license\" name=\"theme_oct_feelmart_license\" value=\"";
        // line 180
        echo ($context["theme_oct_feelmart_license"] ?? null);
        echo "\" class=\"form-control\" placeholder=\"XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 181
        if (($context["error_license"] ?? null)) {
            // line 182
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 184
            echo ($context["error_license"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        // line 188
        echo "\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-minify\">";
        // line 192
        echo ($context["entry_minify"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[minify]\" ";
        // line 195
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "minify", [], "any", false, false, false, 195)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-minify\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-minify\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-micro\">";
        // line 207
        echo ($context["entry_micro"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[micro]\" ";
        // line 210
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "micro", [], "any", false, false, false, 210)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-micro\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-micro\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-webp\">";
        // line 224
        echo ($context["entry_webp"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_webp\" ";
        // line 227
        if (($context["theme_oct_feelmart_webp"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-webp\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-webp\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-open_graph\">";
        // line 239
        echo ($context["entry_open_graph"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[open_graph]\" ";
        // line 242
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "open_graph", [], "any", false, false, false, 242)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-open_graph\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-open_graph\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-logo_width\">";
        // line 256
        echo ($context["entry_logo_width"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data_colors[logo_width]\" ";
        // line 259
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "logo_width", [], "any", false, false, false, 259)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-logo_width\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-logo_width\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-no_quantity_last\">";
        // line 271
        echo ($context["entry_no_quantity_last"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_no_quantity_last\" ";
        // line 274
        if (($context["theme_oct_feelmart_no_quantity_last"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-no_quantity_last\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-no_quantity_last\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-header_compare\">";
        // line 288
        echo ($context["entry_header_compare"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data_colors[compare]\" ";
        // line 291
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "compare", [], "any", false, false, false, 291)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-header_compare\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-header_compare\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-header_wishlist\">";
        // line 303
        echo ($context["entry_header_wishlist"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data_colors[wishlist]\" ";
        // line 306
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "wishlist", [], "any", false, false, false, 306)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-header_wishlist\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-header_wishlist\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-preload\">";
        // line 320
        echo ($context["entry_preload"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[preload]\" ";
        // line 323
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "preload", [], "any", false, false, false, 323)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-preload\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-preload\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 337
        echo ($context["entry_lazyload"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-lazyload_mobile\">";
        // line 340
        echo ($context["entry_lazyload_mobile"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_lazyload_mobile\" ";
        // line 343
        if (($context["theme_oct_feelmart_lazyload_mobile"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-lazyload_mobile\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-lazyload_mobile\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-lazyload_tablet\">";
        // line 355
        echo ($context["entry_lazyload_tablet"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_lazyload_tablet\" ";
        // line 358
        if (($context["theme_oct_feelmart_lazyload_tablet"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-lazyload_tablet\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-lazyload_tablet\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-lazyload_desktop\">";
        // line 372
        echo ($context["entry_lazyload_desktop"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_lazyload_desktop\" ";
        // line 375
        if (($context["theme_oct_feelmart_lazyload_desktop"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-lazyload_desktop\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-lazyload_desktop\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-lazyload_image\">";
        // line 387
        echo ($context["entry_lazyload_image"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"\" id=\"thumb-image\" data-toggle=\"image\" class=\"img-thumbnail\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img style=\"width:30px;height:30px;\" src=\"";
        // line 390
        echo ($context["thumb_lazy"] ?? null);
        echo "\" alt=\"\" title=\"\" data-placeholder=\"";
        echo ($context["placeholder"] ?? null);
        echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_lazyload_image\" value=\"";
        // line 392
        echo ($context["image_lazy"] ?? null);
        echo "\" id=\"input-image\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 398
        echo ($context["text_product_limits"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-catalog-limit\"><span data-toggle=\"tooltip\" title=\"";
        // line 401
        echo ($context["help_product_limit"] ?? null);
        echo "\">";
        echo ($context["entry_product_limit"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_product_limit\" value=\"";
        // line 403
        echo ($context["theme_oct_feelmart_product_limit"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_product_limit"] ?? null);
        echo "\" id=\"input-catalog-limit\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 404
        if (($context["error_product_limit"] ?? null)) {
            // line 405
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 407
            echo ($context["error_product_limit"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        // line 411
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-description-limit\"><span data-toggle=\"tooltip\" title=\"";
        // line 414
        echo ($context["help_product_description_length"] ?? null);
        echo "\">";
        echo ($context["entry_product_description_length"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_product_description_length\" value=\"";
        // line 416
        echo ($context["theme_oct_feelmart_product_description_length"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_product_description_length"] ?? null);
        echo "\" id=\"input-description-limit\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 417
        if (($context["error_product_description_length"] ?? null)) {
            // line 418
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 420
            echo ($context["error_product_description_length"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        // line 424
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 429
        echo ($context["text_main_colors"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-main_color\">";
        // line 432
        echo ($context["entry_main_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[main_color]\" value=\"";
        // line 434
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "main_color", [], "any", false, false, false, 434);
        echo "\" placeholder=\"";
        echo ($context["entry_main_color"] ?? null);
        echo "\" id=\"input-main_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-fon_color\">";
        // line 438
        echo ($context["entry_fon_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[fon_color]\" value=\"";
        // line 440
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "fon_color", [], "any", false, false, false, 440);
        echo "\" placeholder=\"";
        echo ($context["entry_fon_color"] ?? null);
        echo "\" id=\"input-fon_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-main_link_color\">";
        // line 446
        echo ($context["entry_main_link_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[main_link_color]\" value=\"";
        // line 448
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "main_link_color", [], "any", true, true, false, 448) && twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "main_link_color", [], "any", false, false, false, 448))) {
            echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "main_link_color", [], "any", false, false, false, 448);
        } else {
            echo "rgb(24, 164, 225)";
        }
        echo "\" placeholder=\"";
        echo ($context["entry_main_link_color"] ?? null);
        echo "\" id=\"input-main_link_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-modal\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 456
        echo ($context["tab_modal"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-modal_fon_title_color\">";
        // line 459
        echo ($context["entry_modal_fon_title_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[modal_fon_title_color]\" value=\"";
        // line 461
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "modal_fon_title_color", [], "any", false, false, false, 461);
        echo "\" placeholder=\"";
        echo ($context["entry_modal_fon_title_color"] ?? null);
        echo "\" id=\"input-modal_fon_title_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-modal_text_title_color\">";
        // line 465
        echo ($context["entry_modal_text_title_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[modal_text_title_color]\" value=\"";
        // line 467
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "modal_text_title_color", [], "any", false, false, false, 467);
        echo "\" placeholder=\"";
        echo ($context["entry_modal_text_title_color"] ?? null);
        echo "\" id=\"input-modal_text_title_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-modal_fon_icon_color\">";
        // line 472
        echo ($context["entry_modal_fon_icon_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[modal_fon_icon_color]\" value=\"";
        // line 474
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "modal_fon_icon_color", [], "any", false, false, false, 474);
        echo "\" placeholder=\"";
        echo ($context["entry_modal_fon_icon_color"] ?? null);
        echo "\" id=\"input-modal_fon_icon_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-header\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 481
        echo ($context["tab_header"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-header_product_views\">";
        // line 484
        echo ($context["entry_header_product_views"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[header_product_views]\" ";
        // line 487
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "header_product_views", [], "any", false, false, false, 487)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-header_product_views\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-header_product_views\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-header_information_links\"><span data-toggle=\"tooltip\" title=\"";
        // line 500
        echo ($context["help_links"] ?? null);
        echo "\">";
        echo ($context["entry_footer_information_links"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"header_advantages\" class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t    <div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t\t        <table class=\"table table-striped table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t            <thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <th>Заголовок / Ссылка</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <th>Действие</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t            </thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t            <tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        // line 512
        $context["header_advantages_row"] = 0;
        // line 513
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "header_links", [], "any", false, false, false, 513));
        foreach ($context['_seq'] as $context["_key"] => $context["header_link"]) {
            // line 514
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr id=\"header_advantage-row";
            echo ($context["header_advantages_row"] ?? null);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-12\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                            <input type=\"text\" name=\"header_advantage_link\" value=\"\" placeholder=\"";
            // line 517
            echo ($context["entry_footer_information_links"] ?? null);
            echo "\" id=\"header_advantage-";
            echo ($context["header_advantages_row"] ?? null);
            echo "\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            // line 520
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 521
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                    <img src=\"language/";
                // line 523
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 523);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 523);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 523);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                                </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[header_links][";
                // line 525
                echo ($context["header_advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 525);
                echo "][title]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = $context["header_link"]) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 525)] ?? null) : null), "title", [], "any", false, false, false, 525);
                echo "\" id=\"header_advantages_row-title-";
                echo ($context["header_advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 525);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 528
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            // line 530
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 531
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                    <img src=\"language/";
                // line 533
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 533);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 533);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 533);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                                </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[header_links][";
                // line 535
                echo ($context["header_advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 535);
                echo "][link]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["header_link"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 535)] ?? null) : null), "link", [], "any", false, false, false, 535);
                echo "\" id=\"header_advantages_row-href-";
                echo ($context["header_advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 535);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 538
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    </td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\" style=\"width:5%;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <button type=\"button\" onclick=\"\$('#header_advantage-row";
            // line 541
            echo ($context["header_advantages_row"] ?? null);
            echo "').remove()\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_remove"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    </td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
            // line 544
            $context["header_advantages_row"] = (($context["header_advantages_row"] ?? null) + 1);
            // line 545
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['header_link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 546
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t            </tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t            <tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\" style=\"width:5%;\"><button type=\"button\" onclick=\"addHeaderAdvantage();\" data-toggle=\"tooltip\" title=\"";
        // line 550
        echo ($context["button_add"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t            </tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t        </table>
\t\t\t\t\t\t\t\t\t\t\t\t\t    </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-top_fon_color\">";
        // line 560
        echo ($context["entry_top_fon_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[top_fon_color]\" value=\"";
        // line 562
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "top_fon_color", [], "any", false, false, false, 562);
        echo "\" placeholder=\"";
        echo ($context["entry_top_fon_color"] ?? null);
        echo "\" id=\"input-top_fon_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-search_bg\">";
        // line 566
        echo ($context["entry_search_bg"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[search_bg]\" value=\"";
        // line 568
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "search_bg", [], "any", true, true, false, 568) && twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "search_bg", [], "any", false, false, false, 568))) {
            echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "search_bg", [], "any", false, false, false, 568);
        } else {
            echo "rgb(28, 100, 187);";
        }
        echo "\" placeholder=\"";
        echo ($context["entry_search_bg"] ?? null);
        echo "\" id=\"input-search_bg\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-top_link_color\">";
        // line 574
        echo ($context["entry_top_link_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[top_link_color]\" value=\"";
        // line 576
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "top_link_color", [], "any", false, false, false, 576);
        echo "\" placeholder=\"";
        echo ($context["entry_top_link_color"] ?? null);
        echo "\" id=\"input-top_link_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-top_link_color_hover\">";
        // line 580
        echo ($context["entry_top_link_color_hover"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[top_link_color_hover]\" value=\"";
        // line 582
        echo ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "top_link_color_hover", [], "any", false, false, false, 582)) ? (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "top_link_color_hover", [], "any", false, false, false, 582)) : ("#e5e5e5"));
        echo "\" placeholder=\"";
        echo ($context["entry_top_link_color_hover"] ?? null);
        echo "\" id=\"input-top_link_color_hover\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 588
        echo ($context["entry_menu"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-menu_fon_color\">";
        // line 591
        echo ($context["entry_menu_fon_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[menu_fon_color]\" value=\"";
        // line 593
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "menu_fon_color", [], "any", false, false, false, 593);
        echo "\" placeholder=\"";
        echo ($context["entry_menu_fon_color"] ?? null);
        echo "\" id=\"input-menu_fon_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-menu_fon_cat_color\">";
        // line 597
        echo ($context["entry_menu_fon_cat_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[menu_fon_cat_color]\" value=\"";
        // line 599
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "menu_fon_cat_color", [], "any", false, false, false, 599);
        echo "\" placeholder=\"";
        echo ($context["entry_menu_fon_cat_color"] ?? null);
        echo "\" id=\"input-menu_fon_cat_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-menu_fon_cat_hover_color\">";
        // line 605
        echo ($context["entry_menu_fon_cat_hover_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[menu_fon_cat_hover_color]\" value=\"";
        // line 607
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "menu_fon_cat_hover_color", [], "any", false, false, false, 607);
        echo "\" placeholder=\"";
        echo ($context["entry_menu_fon_cat_hover_color"] ?? null);
        echo "\" id=\"input-menu_fon_cat_hover_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-menu_fon_cat_text_color\">";
        // line 611
        echo ($context["entry_menu_fon_cat_text_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[menu_fon_cat_text_color]\" value=\"";
        // line 613
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "menu_fon_cat_text_color", [], "any", false, false, false, 613);
        echo "\" placeholder=\"";
        echo ($context["entry_menu_fon_cat_text_color"] ?? null);
        echo "\" id=\"input-menu_fon_cat_text_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-menu_fon_cat_elements_color\">";
        // line 619
        echo ($context["entry_menu_fon_cat_elements_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[menu_fon_cat_elements_color]\" value=\"";
        // line 621
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "menu_fon_cat_elements_color", [], "any", false, false, false, 621);
        echo "\" placeholder=\"";
        echo ($context["entry_menu_fon_cat_elements_color"] ?? null);
        echo "\" id=\"input-menu_fon_cat_elements_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-menu_fon_cat_link_color\">";
        // line 625
        echo ($context["entry_menu_fon_cat_link_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[menu_fon_cat_link_color]\" value=\"";
        // line 627
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "menu_fon_cat_link_color", [], "any", false, false, false, 627);
        echo "\" placeholder=\"";
        echo ($context["entry_menu_fon_cat_link_color"] ?? null);
        echo "\" id=\"input-menu_fon_cat_link_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-footer\">
\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"contacts-block\">
\t\t\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-footer-settings\" data-toggle=\"tab\">";
        // line 635
        echo ($context["tab_main_settings"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-payments-settings\" data-toggle=\"tab\">";
        // line 636
        echo ($context["text_paymant_systems"] ?? null);
        echo "</a></li>
\t\t\t\t\t                    </ul>
\t\t\t\t\t                    <div class=\"tab-content\">
\t\t\t\t\t                    \t<div class=\"tab-pane active\" id=\"tab-footer-settings\">
\t\t\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 641
        echo ($context["tab_main_settings"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_totop\">";
        // line 644
        echo ($context["entry_footer_totop"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_totop]\" ";
        // line 647
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_totop", [], "any", false, false, false, 647)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_totop\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_totop\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_subscribe\">";
        // line 659
        echo ($context["entry_footer_subscribe"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_subscribe]\" ";
        // line 662
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_subscribe", [], "any", false, false, false, 662)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_subscribe\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_subscribe\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-footer_information_links\"><span data-toggle=\"tooltip\" title=\"";
        // line 675
        echo ($context["help_links"] ?? null);
        echo "\">";
        echo ($context["entry_footer_information_links"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"footer_advantages\" class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t    <div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t        <table class=\"table table-striped table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t            <thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    <th>Заголовок / Ссылка</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    <th>Действие</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t            </thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t            <tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        // line 687
        $context["footer_advantages_row"] = 0;
        // line 688
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_links", [], "any", false, false, false, 688));
        foreach ($context['_seq'] as $context["_key"] => $context["footer_link"]) {
            // line 689
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr id=\"footer_advantage-row";
            echo ($context["footer_advantages_row"] ?? null);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-12\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            <input type=\"text\" name=\"footer_advantage_link\" value=\"\" placeholder=\"";
            // line 692
            echo ($context["entry_footer_information_links"] ?? null);
            echo "\" id=\"footer_advantage-";
            echo ($context["footer_advantages_row"] ?? null);
            echo "\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            // line 695
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 696
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                    <img src=\"language/";
                // line 698
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 698);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 698);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 698);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                <input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[footer_links][";
                // line 700
                echo ($context["footer_advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 700);
                echo "][title]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["footer_link"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 700)] ?? null) : null), "title", [], "any", false, false, false, 700);
                echo "\" id=\"footer_advantages_row-title-";
                echo ($context["footer_advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 700);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 703
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            // line 705
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 706
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                    <img src=\"language/";
                // line 708
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 708);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 708);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 708);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                                <input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[footer_links][";
                // line 710
                echo ($context["footer_advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 710);
                echo "][link]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 = $context["footer_link"]) && is_array($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52) || $__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 instanceof ArrayAccess ? ($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 710)] ?? null) : null), "link", [], "any", false, false, false, 710);
                echo "\" id=\"footer_advantages_row-href-";
                echo ($context["footer_advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 710);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 713
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    </td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\" style=\"width:5%;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                        <button type=\"button\" onclick=\"\$('#footer_advantage-row";
            // line 716
            echo ($context["footer_advantages_row"] ?? null);
            echo "').remove()\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_remove"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    </td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
            // line 719
            $context["footer_advantages_row"] = (($context["footer_advantages_row"] ?? null) + 1);
            // line 720
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['footer_link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 721
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t            </tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t            <tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\" style=\"width:5%;\"><button type=\"button\" onclick=\"addFooterAdvantage();\" data-toggle=\"tooltip\" title=\"";
        // line 725
        echo ($context["button_add"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t            </tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t        </table>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t    </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_contact\">";
        // line 735
        echo ($context["entry_footer_link_contact"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_link_contact]\" ";
        // line 738
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_link_contact", [], "any", false, false, false, 738)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_link_contact\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_link_contact\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_return\">";
        // line 750
        echo ($context["entry_footer_link_return"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_link_return]\" ";
        // line 753
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_link_return", [], "any", false, false, false, 753)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_link_return\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_link_return\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_sitemap\">";
        // line 767
        echo ($context["entry_footer_link_sitemap"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_link_sitemap]\" ";
        // line 770
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_link_sitemap", [], "any", false, false, false, 770)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_link_sitemap\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_link_sitemap\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_man\">";
        // line 782
        echo ($context["entry_footer_link_man"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_link_man]\" ";
        // line 785
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_link_man", [], "any", false, false, false, 785)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_link_man\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_link_man\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_cert\">";
        // line 799
        echo ($context["entry_footer_link_cert"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_link_cert]\" ";
        // line 802
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_link_cert", [], "any", false, false, false, 802)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_link_cert\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_link_cert\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_specials\">";
        // line 814
        echo ($context["entry_footer_link_specials"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[footer_link_specials]\" ";
        // line 817
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "footer_link_specials", [], "any", false, false, false, 817)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-footer_link_specials\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-footer_link_specials\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"";
        // line 830
        echo ($context["help_links"] ?? null);
        echo "\">";
        echo ($context["entry_footer_category_links"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"category\" value=\"\" placeholder=\"";
        // line 832
        echo ($context["entry_footer_category_links"] ?? null);
        echo "\" id=\"input-category\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"product-category\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 834
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["links_categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 835
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"product-category";
            echo twig_get_attribute($this->env, $this->source, ($context["product_category"] ?? null), "category_id", [], "any", false, false, false, 835);
            echo "\"><i class=\"fa fa-minus-circle\"></i> ";
            echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 835);
            echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_data[footer_category_links][]\" value=\"";
            // line 836
            echo twig_get_attribute($this->env, $this->source, $context["category"], "category_id", [], "any", false, false, false, 836);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 839
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 844
        echo ($context["tab_footer"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_fon_color\">";
        // line 847
        echo ($context["entry_footer_fon_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[footer_fon_color]\" value=\"";
        // line 849
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "footer_fon_color", [], "any", false, false, false, 849);
        echo "\" placeholder=\"";
        echo ($context["entry_footer_fon_color"] ?? null);
        echo "\" id=\"input-footer_fon_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_text_color\">";
        // line 853
        echo ($context["entry_footer_text_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[footer_text_color]\" value=\"";
        // line 855
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "footer_text_color", [], "any", false, false, false, 855);
        echo "\" placeholder=\"";
        echo ($context["entry_footer_text_color"] ?? null);
        echo "\" id=\"input-footer_text_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_color\">";
        // line 861
        echo ($context["entry_footer_link_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[footer_link_color]\" value=\"";
        // line 863
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "footer_link_color", [], "any", false, false, false, 863);
        echo "\" placeholder=\"";
        echo ($context["entry_footer_link_color"] ?? null);
        echo "\" id=\"input-footer_link_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-footer_link_hover_color\">";
        // line 867
        echo ($context["entry_footer_link_hover_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[footer_link_hover_color]\" value=\"";
        // line 869
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "footer_link_hover_color", [], "any", false, false, false, 869);
        echo "\" placeholder=\"";
        echo ($context["entry_footer_link_hover_color"] ?? null);
        echo "\" id=\"input-footer_link_hover_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-payments-settings\">
\t\t\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 877
        echo ($context["text_paymant_systems"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"payments_block\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_sber\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/sberbank.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][sber]\" ";
        // line 885
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 885), "sber", [], "any", false, false, false, 885)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_sber\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_sber\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_privat24\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/privat.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][privat24]\" ";
        // line 902
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 902), "privat24", [], "any", false, false, false, 902)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_privat24\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_privat24\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_ym\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/yamoney.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][ym]\" ";
        // line 919
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 919), "ym", [], "any", false, false, false, 919)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_ym\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_ym\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_wm\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/webmoney.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][wm]\" ";
        // line 936
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 936), "wm", [], "any", false, false, false, 936)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_wm\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_wm\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_visa\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/visa.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][visa]\" ";
        // line 953
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 953), "visa", [], "any", false, false, false, 953)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_visa\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_visa\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_qw\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/qiwi.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][qw]\" ";
        // line 970
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 970), "qw", [], "any", false, false, false, 970)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_qw\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_qw\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_skrill\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/skrill.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][skrill]\" ";
        // line 987
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 987), "skrill", [], "any", false, false, false, 987)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_skrill\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_skrill\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_interkassa\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/interkassa.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][interkassa]\" ";
        // line 1004
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1004), "interkassa", [], "any", false, false, false, 1004)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_interkassa\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_interkassa\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_lp\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/liqpay.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][lp]\" ";
        // line 1021
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1021), "lp", [], "any", false, false, false, 1021)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_lp\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_lp\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_pp\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/paypal.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][pp]\" ";
        // line 1038
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1038), "pp", [], "any", false, false, false, 1038)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_pp\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_pp\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_robo\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/robokassa.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][robo]\" ";
        // line 1055
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1055), "robo", [], "any", false, false, false, 1055)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_robo\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_robo\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_mc\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/mastercard.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][mc]\" ";
        // line 1072
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1072), "mc", [], "any", false, false, false, 1072)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_mc\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_mc\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_maestro\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"view/image/pay/maestro.png\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][maestro]\" ";
        // line 1089
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1089), "maestro", [], "any", false, false, false, 1089)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-payments_maestro\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_maestro\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1100
        $context["payment_row"] = 0;
        // line 1101
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1101), "customers", [], "any", false, false, false, 1101));
        foreach ($context['_seq'] as $context["_key"] => $context["payment"]) {
            // line 1102
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"payments-row-";
            echo ($context["payment_row"] ?? null);
            echo "\" class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a class=\"btnr\" href=\"javascript:;\" onclick=\"\$('#payments-row-";
            // line 1103
            echo ($context["payment_row"] ?? null);
            echo "').remove()\"><i class=\"fa fa-minus-circle\"></i></a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_customers_";
            // line 1104
            echo ($context["payment_row"] ?? null);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-thumbnail\" src=\"";
            // line 1105
            echo twig_get_attribute($this->env, $this->source, $context["payment"], "thumb_image", [], "any", false, false, false, 1105);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" value=\"";
            // line 1106
            echo twig_get_attribute($this->env, $this->source, $context["payment"], "image", [], "any", false, false, false, 1106);
            echo "\" name=\"theme_oct_feelmart_data[payments][customers][";
            echo ($context["payment_row"] ?? null);
            echo "][image]\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][customers][";
            // line 1110
            echo ($context["payment_row"] ?? null);
            echo "][status]\" ";
            if (twig_get_attribute($this->env, $this->source, (($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 1110), "customers", [], "any", false, false, false, 1110)) && is_array($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136) || $__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 instanceof ArrayAccess ? ($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136[($context["payment_row"] ?? null)] ?? null) : null), "status", [], "any", false, false, false, 1110)) {
                echo "checked=\"checked\"";
            }
            echo " id=\"input-payments_customers_";
            echo ($context["payment_row"] ?? null);
            echo "\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-payments_customers_";
            // line 1111
            echo ($context["payment_row"] ?? null);
            echo "\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 1121
            $context["payment_row"] = (($context["payment_row"] ?? null) + 1);
            // line 1122
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['payment'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1123
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"add_new_block\" class=\"col-sm-2 payments\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"add_block_in\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<button type=\"button\" onclick=\"addPayment();\" data-toggle=\"tooltip\" title=\"";
        // line 1125
        echo ($context["button_add"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t                    \t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-contacts\">
\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"contacts-block\">
\t\t\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-contacts-settings\" data-toggle=\"tab\">";
        // line 1135
        echo ($context["tab_contacts"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-socials-settings\" data-toggle=\"tab\">";
        // line 1136
        echo ($context["text_socials"] ?? null);
        echo "</a></li>
\t\t\t\t\t                    </ul>
\t\t\t\t\t                    <div class=\"tab-content\">
\t\t\t\t\t                    \t<div class=\"tab-pane active\" id=\"tab-contacts-settings\">
\t\t\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1141
        echo ($context["tab_contacts"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-contact_address\">";
        // line 1143
        echo ($context["entry_contact_address"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"address-language\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1146
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1147
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#address-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1147);
            echo "\" data-toggle=\"tab\"><img src=\"language/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1147);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1147);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1147);
            echo "\" /> ";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1147);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1149
        echo "\t\t\t\t\t\t\t\t\t\t                    </ul>
\t\t\t\t\t\t\t\t\t\t                    <div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t                        \t";
        // line 1151
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1152
            echo "\t\t\t\t\t\t\t\t\t                            <div class=\"tab-pane\" id=\"address-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1152);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"contact_address\" name=\"theme_oct_feelmart_data[contact_address][";
            // line 1153
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1153);
            echo "]\" rows=\"5\" class=\"form-control\">";
            echo (($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_address", [], "any", false, false, false, 1153)) && is_array($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386) || $__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 instanceof ArrayAccess ? ($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1153)] ?? null) : null);
            echo "</textarea>
\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1156
        echo "\t\t\t\t\t\t\t\t\t\t                    </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-contact_telephone\">";
        // line 1160
        echo ($context["entry_contact_telephone"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"contact_telephone\" name=\"theme_oct_feelmart_data[contact_telephone]\" rows=\"5\" class=\"form-control\">";
        // line 1162
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_telephone", [], "any", false, false, false, 1162);
        echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-contact_open\">";
        // line 1166
        echo ($context["entry_contact_open"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"open-language\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1169
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1170
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#open-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1170);
            echo "\" data-toggle=\"tab\"><img src=\"language/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1170);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1170);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1170);
            echo "\" /> ";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1170);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1172
        echo "\t\t\t\t\t\t\t\t\t\t                    </ul>
\t\t\t\t\t\t\t\t\t\t                    <div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t                        \t";
        // line 1174
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1175
            echo "\t\t\t\t\t\t\t\t\t                            <div class=\"tab-pane\" id=\"open-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1175);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"contact_address\" name=\"theme_oct_feelmart_data[contact_open][";
            // line 1176
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1176);
            echo "]\" rows=\"5\" class=\"form-control\">";
            echo (($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_open", [], "any", false, false, false, 1176)) && is_array($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9) || $__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 instanceof ArrayAccess ? ($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1176)] ?? null) : null);
            echo "</textarea>
\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1179
        echo "\t\t\t\t\t\t\t\t\t\t                    </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-contact_map\">";
        // line 1183
        echo ($context["entry_contact_map"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"contact_map\" name=\"theme_oct_feelmart_data[contact_map]\" rows=\"5\" class=\"form-control\">";
        // line 1185
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_map", [], "any", false, false, false, 1185);
        echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-contact_email\">";
        // line 1190
        echo ($context["entry_contact_email"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"email\" id=\"contact_email\" name=\"theme_oct_feelmart_data[contact_email]\" value=\"";
        // line 1192
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 1192);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-contact_skype\">";
        // line 1196
        echo ($context["entry_contact_skype"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"contact_skype\" name=\"theme_oct_feelmart_data[contact_skype]\" value=\"";
        // line 1198
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_skype", [], "any", false, false, false, 1198);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-contact_whatsapp\">";
        // line 1204
        echo ($context["entry_contact_whatsapp"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"contact_whatsapp\" name=\"theme_oct_feelmart_data[contact_whatsapp]\" value=\"";
        // line 1206
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_whatsapp", [], "any", false, false, false, 1206);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-contact_viber\">";
        // line 1210
        echo ($context["entry_contact_viber"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"contact_viber\" name=\"theme_oct_feelmart_data[contact_viber]\" value=\"";
        // line 1212
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_viber", [], "any", false, false, false, 1212);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-contact_telegram\">";
        // line 1218
        echo ($context["entry_contact_telegram"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"contact_telegram\" name=\"theme_oct_feelmart_data[contact_telegram]\" value=\"";
        // line 1220
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_telegram", [], "any", false, false, false, 1220);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-contact_messenger\">";
        // line 1224
        echo ($context["entry_contact_messenger"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"contact_messenger\" name=\"theme_oct_feelmart_data[contact_messenger]\" value=\"";
        // line 1226
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_messenger", [], "any", false, false, false, 1226);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t                    \t</div>
\t\t\t\t\t\t                    <div class=\"tab-pane\" id=\"tab-socials-settings\">
\t\t\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1234
        echo ($context["text_socials"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-striped table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1238
        $context["social_row"] = 0;
        // line 1239
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "socials", [], "any", false, false, false, 1239));
        foreach ($context['_seq'] as $context["_key"] => $context["social"]) {
            // line 1240
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr id=\"social-row";
            echo ($context["social_row"] ?? null);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-btn\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        \t<button onClick=\"fontIcons('social_icone-";
            // line 1244
            echo ($context["social_row"] ?? null);
            echo "', 'social_input_icone-";
            echo ($context["social_row"] ?? null);
            echo "');\" class=\"btn btn-default social_icone\" type=\"button\"><i id=\"social_icone-";
            echo ($context["social_row"] ?? null);
            echo "\" class=\"";
            echo twig_get_attribute($this->env, $this->source, $context["social"], "icone", [], "any", false, false, false, 1244);
            echo "\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t\t                        \t<input type=\"hidden\" name=\"theme_oct_feelmart_data[socials][";
            // line 1245
            echo ($context["social_row"] ?? null);
            echo "][icone]\" id=\"social_input_icone-";
            echo ($context["social_row"] ?? null);
            echo "\" value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["social"], "icone", [], "any", false, false, false, 1245);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <input type=\"text\" name=\"theme_oct_feelmart_data[socials][";
            // line 1247
            echo ($context["social_row"] ?? null);
            echo "][title]\" value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["social"], "title", [], "any", false, false, false, 1247);
            echo "\" placeholder=\"";
            echo ($context["entry_social_title"] ?? null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data[socials][";
            // line 1251
            echo ($context["social_row"] ?? null);
            echo "][link]\" value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["social"], "link", [], "any", false, false, false, 1251);
            echo "\" placeholder=\"";
            echo ($context["entry_social_link"] ?? null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\"><button type=\"button\" onclick=\"\$('#social-row";
            // line 1253
            echo ($context["social_row"] ?? null);
            echo "').remove()\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_remove"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 1255
            $context["social_row"] = (($context["social_row"] ?? null) + 1);
            // line 1256
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['social'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1257
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\"></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\" style=\"width:5%;\"><button type=\"button\" onclick=\"addSocial();\" data-toggle=\"tooltip\" title=\"";
        // line 1261
        echo ($context["button_add"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t                    \t</div>
\t\t\t\t\t                    </div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-category\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1272
        echo ($context["text_general"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_product_desc\">";
        // line 1275
        echo ($context["entry_category_product_desc"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_product_desc]\" ";
        // line 1278
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_product_desc", [], "any", false, false, false, 1278)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_product_desc\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_product_desc\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_model\">";
        // line 1290
        echo ($context["entry_product_model"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data_model\" ";
        // line 1293
        if (($context["theme_oct_feelmart_data_model"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_model\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_model\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-atributes_category\">";
        // line 1307
        echo ($context["text_atributes"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data_atributes\" ";
        // line 1310
        if (($context["theme_oct_feelmart_data_atributes"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-atributes_category\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-atributes_category\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-atributes_category_limit\">";
        // line 1322
        echo ($context["text_atributes_limit"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"input-atributes_category_limit\" name=\"theme_oct_feelmart_data_cat_atr_limit\" value=\"";
        // line 1324
        echo ($context["theme_oct_feelmart_data_cat_atr_limit"] ?? null);
        echo "\" class=\"form-control\" placeholder=\"";
        echo ($context["text_atributes_limit"] ?? null);
        echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_view_sort_oder\">";
        // line 1330
        echo ($context["entry_category_view_sort_oder"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_view_sort_oder]\" ";
        // line 1333
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_view_sort_oder", [], "any", false, false, false, 1333)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_view_sort_oder\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_view_sort_oder\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_view_quantity\">";
        // line 1345
        echo ($context["entry_category_view_quantity"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_view_quantity]\" ";
        // line 1348
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_view_quantity", [], "any", false, false, false, 1348)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_view_quantity\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_view_quantity\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-category_view_sort_oder\">";
        // line 1361
        echo ($context["entry_category_sorts"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-bordered\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">";
        // line 1367
        echo ($context["col_status_sort_order"] ?? null);
        echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">";
        // line 1368
        echo ($context["col_status_name"] ?? null);
        echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">";
        // line 1369
        echo ($context["col_status_deff"] ?? null);
        echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.sort_order-ASC\" ";
        // line 1375
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1375) && twig_in_filter("p.sort_order-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1375)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_sort_order-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1378
        echo ($context["text_p_sort_order_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.sort_order-ASC\" ";
        // line 1381
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1381) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1381) == "p.sort_order-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.sort_order-DESC\" ";
        // line 1386
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1386) && twig_in_filter("p.sort_order-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1386)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_sort_order-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1389
        echo ($context["text_p_sort_order_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.sort_order-DESC\" ";
        // line 1392
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1392) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1392) == "p.sort_order-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"pd.name-ASC\" ";
        // line 1397
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1397) && twig_in_filter("pd.name-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1397)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-pd_name-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1400
        echo ($context["text_pd_name_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"pd.name-ASC\" ";
        // line 1403
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1403) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1403) == "pd.name-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"pd.name-DESC\" ";
        // line 1408
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1408) && twig_in_filter("pd.name-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1408)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-pd_name-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1411
        echo ($context["text_pd_name_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"pd.name-DESC\" ";
        // line 1414
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1414) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1414) == "pd.name-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.price-ASC\" ";
        // line 1419
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1419) && twig_in_filter("p.price-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1419)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_price-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1422
        echo ($context["text_p_price_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.price-ASC\" ";
        // line 1425
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1425) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1425) == "p.price-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.price-DESC\" ";
        // line 1430
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1430) && twig_in_filter("p.price-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1430)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_price-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1433
        echo ($context["text_p_price_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.price-DESC\" ";
        // line 1436
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1436) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1436) == "p.price-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.model-ASC\" ";
        // line 1441
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1441) && twig_in_filter("p.model-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1441)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_model-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1444
        echo ($context["text_p_model_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.model-ASC\" ";
        // line 1447
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1447) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1447) == "p.model-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.model-DESC\" ";
        // line 1452
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1452) && twig_in_filter("p.model-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1452)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_model-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1455
        echo ($context["text_p_model_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.model-DESC\" ";
        // line 1458
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1458) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1458) == "p.model-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.quantity-ASC\" ";
        // line 1463
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1463) && twig_in_filter("p.quantity-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1463)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_quantity-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1466
        echo ($context["text_p_quantity_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.quantity-ASC\" ";
        // line 1469
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1469) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1469) == "p.quantity-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.quantity-DESC\" ";
        // line 1474
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1474) && twig_in_filter("p.quantity-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1474)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_quantity-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1477
        echo ($context["text_p_quantity_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.quantity-DESC\" ";
        // line 1480
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1480) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1480) == "p.quantity-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.viewed-ASC\" ";
        // line 1485
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1485) && twig_in_filter("p.viewed-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1485)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_viewed-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1488
        echo ($context["text_p_viewed_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.viewed-ASC\" ";
        // line 1491
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1491) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1491) == "p.viewed-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.viewed-DESC\" ";
        // line 1496
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1496) && twig_in_filter("p.viewed-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1496)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_viewed-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1499
        echo ($context["text_p_viewed_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.viewed-DESC\" ";
        // line 1502
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1502) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1502) == "p.viewed-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.date_added-ASC\" ";
        // line 1507
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1507) && twig_in_filter("p.date_added-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1507)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_date_added-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1510
        echo ($context["text_p_date_added_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.date_added-ASC\" ";
        // line 1513
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1513) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1513) == "p.date_added-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"p.date_added-DESC\" ";
        // line 1518
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1518) && twig_in_filter("p.date_added-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1518)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-p_date_added-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1521
        echo ($context["text_p_date_added_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"p.date_added-DESC\" ";
        // line 1524
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1524) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1524) == "p.date_added-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"rating-ASC\" ";
        // line 1529
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1529) && twig_in_filter("rating-ASC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1529)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-rating-ASC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1532
        echo ($context["text_rating_ASC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"rating-ASC\" ";
        // line 1535
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1535) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1535) == "rating-ASC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_sort_data[sort][]\" value=\"rating-DESC\" ";
        // line 1540
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", true, true, false, 1540) && twig_in_filter("rating-DESC", twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "sort", [], "any", false, false, false, 1540)))) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-rating-DESC\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1543
        echo ($context["text_rating_DESC"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" name=\"theme_oct_feelmart_sort_data[deff_sort]\" value=\"rating-DESC\" ";
        // line 1546
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", true, true, false, 1546) && (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_sort_data"] ?? null), "deff_sort", [], "any", false, false, false, 1546) == "rating-DESC"))) {
            echo "checked=\"checked\"";
        }
        echo " />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript:;\" onclick=\"\$(this).prev().find(':checkbox').attr('checked', true);\">";
        // line 1551
        echo ($context["text_all_select"] ?? null);
        echo "</a> / <a href=\"javascript:;\" onclick=\"\$(this).prev().prev().find(':checkbox').attr('checked', false);\">";
        echo ($context["text_remove_select"] ?? null);
        echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1557
        echo ($context["text_categoty_page"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_desc_in_page\">";
        // line 1560
        echo ($context["entry_category_desc_in_page"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_desc_in_page]\" ";
        // line 1563
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_desc_in_page", [], "any", false, false, false, 1563)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_desc_in_page\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_desc_in_page\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"select-category_desc_position\">";
        // line 1575
        echo ($context["entry_category_desc_position"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<select id=\"select-category_desc_position\" name=\"theme_oct_feelmart_data[category_desc_position]\" class=\"form-control\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"top\" ";
        // line 1578
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_desc_position", [], "any", false, false, false, 1578) == "top")) {
            echo "selected=\"selected\"";
        }
        echo ">";
        echo ($context["entry_category_desc_position_top"] ?? null);
        echo "</option>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"bottom\" ";
        // line 1579
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_desc_position", [], "any", false, false, false, 1579) == "bottom")) {
            echo "selected=\"selected\"";
        }
        echo ">";
        echo ($context["entry_category_desc_position_bottom"] ?? null);
        echo "</option>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</select>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_view_subcats\">";
        // line 1586
        echo ($context["entry_category_view_subcats"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_view_subcats]\" ";
        // line 1589
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_view_subcats", [], "any", false, false, false, 1589)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_view_subcats\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_view_subcats\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_subcat_products\">";
        // line 1601
        echo ($context["entry_category_subcat_products"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_subcat_products]\" ";
        // line 1604
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_subcat_products", [], "any", false, false, false, 1604)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_subcat_products\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_subcat_products\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_cat_image\">";
        // line 1618
        echo ($context["entry_category_cat_image"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_cat_image]\" ";
        // line 1621
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_cat_image", [], "any", false, false, false, 1621)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_cat_image\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_cat_image\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_cat_image\">";
        // line 1633
        echo ($context["entry_category_page"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[category_page]\" ";
        // line 1636
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "category_page", [], "any", false, false, false, 1636)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-category_page\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-category_page\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1650
        echo ($context["text_manufacture_page"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-man_logo\">";
        // line 1652
        echo ($context["entry_man_logo"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[man_logo]\" ";
        // line 1655
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "man_logo", [], "any", false, false, false, 1655)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-man_logo\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-man_logo\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1668
        echo ($context["text_category_module_color"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_module_fon_color\">";
        // line 1671
        echo ($context["entry_category_module_fon_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[category_module_fon_color]\" value=\"";
        // line 1673
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "category_module_fon_color", [], "any", false, false, false, 1673);
        echo "\" placeholder=\"";
        echo ($context["entry_category_module_fon_color"] ?? null);
        echo "\" id=\"input-mobile_fon_top_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-category_module_link_color\">";
        // line 1677
        echo ($context["entry_category_module_link_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[category_module_link_color]\" value=\"";
        // line 1679
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "category_module_link_color", [], "any", false, false, false, 1679);
        echo "\" placeholder=\"";
        echo ($context["entry_category_module_link_color"] ?? null);
        echo "\" id=\"input-category_module_link_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-category_module_link_hover_color\">";
        // line 1684
        echo ($context["entry_category_module_link_hover_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[category_module_link_hover_color]\" value=\"";
        // line 1686
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "category_module_link_hover_color", [], "any", false, false, false, 1686);
        echo "\" placeholder=\"";
        echo ($context["entry_category_module_link_hover_color"] ?? null);
        echo "\" id=\"input-category_module_link_hover_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-contacts-page\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1693
        echo ($context["tab_contacts_page"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-contact_view_map\">";
        // line 1695
        echo ($context["entry_contact_view_map"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[contact_view_map]\" ";
        // line 1698
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_view_map", [], "any", false, false, false, 1698)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-contact_view_map\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-contact_view_map\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-contact_view_html\">";
        // line 1710
        echo ($context["entry_contact_view_html"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"contact_view_html-language\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1713
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1714
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#contact_view_html-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1714);
            echo "\" data-toggle=\"tab\"><img src=\"language/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1714);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1714);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1714);
            echo "\" /> ";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1714);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1716
        echo "\t\t\t\t\t\t\t\t                    </ul>
\t\t\t\t\t\t\t\t                    <div class=\"tab-content\">
\t\t\t\t\t\t\t                        \t";
        // line 1718
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1719
            echo "\t\t\t\t\t\t\t                            <div class=\"tab-pane\" id=\"contact_view_html-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1719);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"contact_view_html";
            // line 1720
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1720);
            echo "\" data-toggle=\"summernote\" data-lang=\"";
            echo ($context["summernote"] ?? null);
            echo "\" name=\"theme_oct_feelmart_data[contact_view_html][";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1720);
            echo "]\" rows=\"5\" class=\"form-control\">";
            echo (($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "contact_view_html", [], "any", false, false, false, 1720)) && is_array($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae) || $__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae instanceof ArrayAccess ? ($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1720)] ?? null) : null);
            echo "</textarea>
\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1723
        echo "\t\t\t\t\t\t\t\t                    </div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-product\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1730
        echo ($context["tab_product"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-product_model\">";
        // line 1733
        echo ($context["entry_product_model"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_model]\" ";
        // line 1736
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_model", [], "any", false, false, false, 1736)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-product_model\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-product_model\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-product_dop_tab\">";
        // line 1750
        echo ($context["entry_product_dop_tab"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_dop_tab]\" ";
        // line 1753
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab", [], "any", false, false, false, 1753)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-product_dop_tab\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-product_dop_tab\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-product_gallery\"><span data-toggle=\"tooltip\" title=\"";
        // line 1765
        echo ($context["help_product_gallery"] ?? null);
        echo "\">";
        echo ($context["entry_product_gallery"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_gallery]\" ";
        // line 1768
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_gallery", [], "any", false, false, false, 1768)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-product_gallery\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-product_gallery\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-product_zoom\">";
        // line 1782
        echo ($context["entry_product_zoom"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_zoom]\" ";
        // line 1785
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_zoom", [], "any", false, false, false, 1785)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-product_zoom\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-product_zoom\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div id=\"product_dop_tabs_text\" class=\"form-group\"";
        // line 1797
        if (( !twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab", [], "any", true, true, false, 1797) || (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab", [], "any", true, true, false, 1797) &&  !twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab", [], "any", false, false, false, 1797)))) {
            echo "style=\"display:none\"";
        }
        echo ">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-product_dop_tab_ttt\">";
        // line 1798
        echo ($context["entry_product_dop_tab_ttt"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"product_dop_tab-language\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1801
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1802
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#product_dop_tab-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1802);
            echo "\" data-toggle=\"tab\"><img src=\"language/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1802);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1802);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1802);
            echo "\" /> ";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1802);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1804
        echo "\t\t\t\t\t\t\t\t                    </ul>
\t\t\t\t\t\t\t\t                    <div class=\"tab-content\">
\t\t\t\t\t\t\t                        \t";
        // line 1806
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 1807
            echo "\t\t\t\t\t\t\t                            <div class=\"tab-pane\" id=\"product_dop_tab-language";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1807);
            echo "\">
\t\t\t\t\t\t\t                            \t<div class=\"form-group\">
\t\t\t\t\t\t\t                            \t\t<input type=\"text\" name=\"theme_oct_feelmart_data[product_dop_tab_title][";
            // line 1809
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1809);
            echo "]\" value=\"";
            echo ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab_title", [], "any", false, true, false, 1809), twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1809), [], "array", true, true, false, 1809)) ? ((($__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab_title", [], "any", false, false, false, 1809)) && is_array($__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f) || $__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f instanceof ArrayAccess ? ($__internal_25c0fab8152b8dd6b90603159c0f2e8a936a09ab76edb5e4d7bc95d9a8d2dc8f[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1809)] ?? null) : null)) : (""));
            echo "\" placeholder=\"";
            echo ($context["entry_product_dop_tab_title"] ?? null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t                            \t</div>
\t\t\t\t\t\t\t                            \t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"product_dop_tab";
            // line 1812
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1812);
            echo "\" data-toggle=\"summernote\" data-lang=\"";
            echo ($context["summernote"] ?? null);
            echo "\" name=\"theme_oct_feelmart_data[product_dop_tab_text][";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1812);
            echo "]\" rows=\"5\" placeholder=\"";
            echo ($context["entry_product_dop_tab_text"] ?? null);
            echo "\" class=\"form-control\">";
            echo ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab_text", [], "any", false, true, false, 1812), twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1812), [], "array", true, true, false, 1812)) ? ((($__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40 = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_dop_tab_text", [], "any", false, false, false, 1812)) && is_array($__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40) || $__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40 instanceof ArrayAccess ? ($__internal_f769f712f3484f00110c86425acea59f5af2752239e2e8596bcb6effeb425b40[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1812)] ?? null) : null)) : (""));
            echo "</textarea>
\t\t\t\t\t\t\t                            \t</div>
\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1816
        echo "\t\t\t\t\t\t\t\t                    </div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-product_js_button\">";
        // line 1820
        echo ($context["entry_product_js_button"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea rows=\"5\" name=\"theme_oct_feelmart_data[product_js_button]\" placeholder=\"";
        // line 1822
        echo ($context["entry_product_js_button"] ?? null);
        echo "\" id=\"input-product_js_button\" class=\"form-control\">";
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_js_button", [], "any", false, false, false, 1822);
        echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1825
        echo ($context["entry_product_garantii"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-product_advantage\">";
        // line 1827
        echo ($context["entry_product_advantages"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_advantage]\" ";
        // line 1830
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_advantage", [], "any", false, false, false, 1830)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-product_advantage\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-product_advantage\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div id=\"product_advantages\" class=\"form-group\"";
        // line 1841
        if (( !twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_advantage", [], "any", true, true, false, 1841) || (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_advantage", [], "any", true, true, false, 1841) &&  !twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_advantage", [], "any", false, false, false, 1841)))) {
            echo "style=\"display:none\"";
        }
        echo ">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-striped table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<th></th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<th>Заголовок / Ссылка</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<th>Описание</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<th></th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<th></th>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 1854
        $context["advantages_row"] = 0;
        // line 1855
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_advantages", [], "any", false, false, false, 1855));
        foreach ($context['_seq'] as $context["_key"] => $context["advantage"]) {
            // line 1856
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr id=\"advantage-row";
            echo ($context["advantages_row"] ?? null);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-btn\">
\t\t\t\t\t\t\t\t\t\t\t\t                        \t<button onClick=\"fontIcons('advantages_icone-";
            // line 1860
            echo ($context["advantages_row"] ?? null);
            echo "', 'advantages_input_icone-";
            echo ($context["advantages_row"] ?? null);
            echo "');\" class=\"btn btn-default social_icone\" type=\"button\"><i id=\"advantages_icone-";
            echo ($context["advantages_row"] ?? null);
            echo "\" class=\"";
            echo twig_get_attribute($this->env, $this->source, $context["advantage"], "icone", [], "any", false, false, false, 1860);
            echo "\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t                        \t<input type=\"hidden\" name=\"theme_oct_feelmart_data[product_advantages][";
            // line 1861
            echo ($context["advantages_row"] ?? null);
            echo "][icone]\" id=\"advantages_input_icone-";
            echo ($context["advantages_row"] ?? null);
            echo "\" value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["advantage"], "icone", [], "any", false, false, false, 1861);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t                        \t<input type=\"hidden\" name=\"theme_oct_feelmart_data[product_advantages][";
            // line 1862
            echo ($context["advantages_row"] ?? null);
            echo "][information_id]\" id=\"advantages_id-";
            echo ($context["advantages_row"] ?? null);
            echo "\" value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["advantage"], "information_id", [], "any", false, false, false, 1862);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-12\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"advantage_link\" value=\"\" placeholder=\"";
            // line 1868
            echo ($context["entry_footer_information_links"] ?? null);
            echo "\" id=\"advantage_link-";
            echo ($context["advantages_row"] ?? null);
            echo "\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 1871
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 1872
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
                // line 1874
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1874);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1874);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1874);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data[product_advantages][";
                // line 1876
                echo ($context["advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1876);
                echo "][title]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f = $context["advantage"]) && is_array($__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f) || $__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f instanceof ArrayAccess ? ($__internal_98e944456c0f58b2585e4aa36e3a7e43f4b7c9038088f0f056004af41f4a007f[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1876)] ?? null) : null), "title", [], "any", false, false, false, 1876);
                echo "\" id=\"advantage-title-";
                echo ($context["advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1876);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1879
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 1881
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 1882
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
                // line 1884
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1884);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1884);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1884);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data[product_advantages][";
                // line 1886
                echo ($context["advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1886);
                echo "][link]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760 = $context["advantage"]) && is_array($__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760) || $__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760 instanceof ArrayAccess ? ($__internal_a06a70691a7ca361709a372174fa669f5ee1c1e4ed302b3a5b61c10c80c02760[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1886)] ?? null) : null), "link", [], "any", false, false, false, 1886);
                echo "\" id=\"advantage-href-";
                echo ($context["advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1886);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1889
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 1892
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 1893
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
                // line 1895
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1895);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1895);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1895);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea name=\"theme_oct_feelmart_data[product_advantages][";
                // line 1897
                echo ($context["advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1897);
                echo "][text]\" class=\"form-control\">";
                echo twig_get_attribute($this->env, $this->source, (($__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce = $context["advantage"]) && is_array($__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce) || $__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce instanceof ArrayAccess ? ($__internal_653499042eb14fd8415489ba6fa87c1e85cff03392e9f57b26d0da09b9be82ce[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1897)] ?? null) : null), "text", [], "any", false, false, false, 1897);
                echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1900
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\" style=\"width:10%;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-12\" for=\"input-product_advantage_popup-";
            // line 1902
            echo ($context["advantages_row"] ?? null);
            echo "\">";
            echo ($context["entry_product_advantage_popup"] ?? null);
            echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-12\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_advantages][";
            // line 1905
            echo ($context["advantages_row"] ?? null);
            echo "][popup]\" ";
            if (twig_get_attribute($this->env, $this->source, (($__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "product_advantages", [], "any", false, false, false, 1905)) && is_array($__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b) || $__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b instanceof ArrayAccess ? ($__internal_ba9f0a3bb95c082f61c9fbf892a05514d732703d52edc77b51f2e6284135900b[($context["advantages_row"] ?? null)] ?? null) : null), "popup", [], "any", false, false, false, 1905)) {
                echo "checked=\"checked\"";
            }
            echo " id=\"input-product_advantage_popup-";
            echo ($context["advantages_row"] ?? null);
            echo "\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-product_advantage_popup-";
            // line 1906
            echo ($context["advantages_row"] ?? null);
            echo "\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<button type=\"button\" onclick=\"\$('#advantage-row";
            // line 1917
            echo ($context["advantages_row"] ?? null);
            echo "').remove()\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_remove"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 1920
            $context["advantages_row"] = (($context["advantages_row"] ?? null) + 1);
            // line 1921
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['advantage'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 1922
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\"></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\" style=\"width:5%;\"><button type=\"button\" onclick=\"addAdvantage();\" data-toggle=\"tooltip\" title=\"";
        // line 1926
        echo ($context["button_add"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-mobile\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 1936
        echo ($context["tab_mobile"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_fon_top_color\">";
        // line 1939
        echo ($context["entry_mobile_fon_top_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[mobile_fon_top_color]\" value=\"";
        // line 1941
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "mobile_fon_top_color", [], "any", false, false, false, 1941);
        echo "\" placeholder=\"";
        echo ($context["entry_mobile_fon_top_color"] ?? null);
        echo "\" id=\"input-mobile_fon_top_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_fon_icon_c_color\">";
        // line 1945
        echo ($context["entry_mobile_fon_icon_c_color"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data_colors[mobile_fon_icon_c_color]\" value=\"";
        // line 1947
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data_colors"] ?? null), "mobile_fon_icon_c_color", [], "any", false, false, false, 1947);
        echo "\" placeholder=\"";
        echo ($context["entry_mobile_fon_icon_c_color"] ?? null);
        echo "\" id=\"input-mobile_fon_icon_c_color\" class=\"form-control spectrum\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"select-mobile_sidebar_position\">";
        // line 1953
        echo ($context["entry_mobile_sidebar_position"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<select id=\"select-category_desc_position\" name=\"theme_oct_feelmart_data[mobile_sidebar_position]\" class=\"form-control\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"top\" ";
        // line 1956
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_sidebar_position", [], "any", false, false, false, 1956) == "top")) {
            echo "selected=\"selected\"";
        }
        echo ">";
        echo ($context["entry_mobile_sidebar_position_top"] ?? null);
        echo "</option>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"bottom\" ";
        // line 1957
        if ((twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_sidebar_position", [], "any", false, false, false, 1957) == "bottom")) {
            echo "selected=\"selected\"";
        }
        echo ">";
        echo ($context["entry_mobile_sidebar_position_bottom"] ?? null);
        echo "</option>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</select>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-mobile_information_links\"><span data-toggle=\"tooltip\" title=\"";
        // line 1963
        echo ($context["help_links"] ?? null);
        echo "\">";
        echo ($context["entry_footer_information_links"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div id=\"mobile_advantages\" class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t    <div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t\t        <table class=\"table table-striped table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t            <thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <th>Заголовок / Ссылка</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <th>Действие</th>
\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t            </thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t            <tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        // line 1975
        $context["mobile_advantages_row"] = 0;
        // line 1976
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_links", [], "any", false, false, false, 1976));
        foreach ($context['_seq'] as $context["_key"] => $context["mobile_link"]) {
            // line 1977
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr id=\"mobile_advantage-row";
            echo ($context["mobile_advantages_row"] ?? null);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-12\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                            <input type=\"text\" name=\"mobile_advantage_link\" value=\"\" placeholder=\"";
            // line 1980
            echo ($context["entry_footer_information_links"] ?? null);
            echo "\" id=\"mobile_advantage-";
            echo ($context["mobile_advantages_row"] ?? null);
            echo "\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            // line 1983
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 1984
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                    <img src=\"language/";
                // line 1986
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1986);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1986);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1986);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                                </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[mobile_links][";
                // line 1988
                echo ($context["mobile_advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1988);
                echo "][title]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c = $context["mobile_link"]) && is_array($__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c) || $__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c instanceof ArrayAccess ? ($__internal_73db8eef4d2582468dab79a6b09c77ce3b48675a610afd65a1f325b68804a60c[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1988)] ?? null) : null), "title", [], "any", false, false, false, 1988);
                echo "\" id=\"mobile_advantages_row-title-";
                echo ($context["mobile_advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1988);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1991
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            // line 1993
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 1994
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                                    <img src=\"language/";
                // line 1996
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1996);
                echo "/";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 1996);
                echo ".png\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 1996);
                echo "\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                                </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t                                <input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[mobile_links][";
                // line 1998
                echo ($context["mobile_advantages_row"] ?? null);
                echo "][";
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1998);
                echo "][link]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, (($__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972 = $context["mobile_link"]) && is_array($__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972) || $__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972 instanceof ArrayAccess ? ($__internal_d8ad5934f1874c52fa2ac9a4dfae52038b39b8b03cfc82eeb53de6151d883972[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1998)] ?? null) : null), "link", [], "any", false, false, false, 1998);
                echo "\" id=\"mobile_advantages_row-href-";
                echo ($context["mobile_advantages_row"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 1998);
                echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 2001
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    </td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\" style=\"width:5%;\">
\t\t\t\t\t\t\t\t\t\t\t\t\t                        <button type=\"button\" onclick=\"\$('#mobile_advantage-row";
            // line 2004
            echo ($context["mobile_advantages_row"] ?? null);
            echo "').remove()\" data-toggle=\"tooltip\" title=\"";
            echo ($context["button_remove"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    </td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
            // line 2007
            $context["mobile_advantages_row"] = (($context["mobile_advantages_row"] ?? null) + 1);
            // line 2008
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mobile_link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 2009
        echo "\t\t\t\t\t\t\t\t\t\t\t\t\t            </tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t            <tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t                <tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                    <td class=\"text-left\" style=\"width:5%;\"><button type=\"button\" onclick=\"addMobileAdvantage();\" data-toggle=\"tooltip\" title=\"";
        // line 2013
        echo ($context["button_add"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t                </tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t            </tfoot>
\t\t\t\t\t\t\t\t\t\t\t\t\t        </table>
\t\t\t\t\t\t\t\t\t\t\t\t\t    </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 2023
        echo ($context["tab_mobile_menu"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_time\">";
        // line 2026
        echo ($context["entry_mobile_menu_time"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][time]\" ";
        // line 2029
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2029), "time", [], "any", false, false, false, 2029)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_time\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_time\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_currency\">";
        // line 2041
        echo ($context["entry_mobile_menu_currency"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][currency]\" ";
        // line 2044
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2044), "currency", [], "any", false, false, false, 2044)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_currency\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_currency\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_address\">";
        // line 2058
        echo ($context["entry_mobile_menu_address"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][address]\" ";
        // line 2061
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2061), "address", [], "any", false, false, false, 2061)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_address\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_address\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_languages\">";
        // line 2073
        echo ($context["entry_mobile_menu_languages"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][languages]\" ";
        // line 2076
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2076), "languages", [], "any", false, false, false, 2076)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_languages\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_languages\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_phones\">";
        // line 2090
        echo ($context["entry_mobile_menu_phones"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][phones]\" ";
        // line 2093
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2093), "phones", [], "any", false, false, false, 2093)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_phones\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_phones\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_email\">";
        // line 2107
        echo ($context["entry_mobile_menu_email"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][email]\" ";
        // line 2110
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2110), "email", [], "any", false, false, false, 2110)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_email\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_email\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_telegram\">";
        // line 2122
        echo ($context["entry_mobile_menu_telegram"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][telegram]\" ";
        // line 2125
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2125), "telegram", [], "any", false, false, false, 2125)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_telegram\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_telegram\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_viber\">";
        // line 2139
        echo ($context["entry_mobile_menu_viber"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][viber]\" ";
        // line 2142
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2142), "viber", [], "any", false, false, false, 2142)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_viber\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_viber\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_skype\">";
        // line 2154
        echo ($context["entry_mobile_menu_skype"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][skype]\" ";
        // line 2157
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2157), "skype", [], "any", false, false, false, 2157)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_skype\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_skype\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_whatsapp\">";
        // line 2171
        echo ($context["entry_mobile_menu_whatsapp"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][whatsapp]\" ";
        // line 2174
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2174), "whatsapp", [], "any", false, false, false, 2174)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_whatsapp\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_whatsapp\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-mobile_menu_messenger\">";
        // line 2186
        echo ($context["entry_mobile_menu_messenger"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[mobile_menu][messenger]\" ";
        // line 2189
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_data"] ?? null), "mobile_menu", [], "any", false, false, false, 2189), "messenger", [], "any", false, false, false, 2189)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-mobile_menu_messenger\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-mobile_menu_messenger\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-css_js\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 2205
        echo ($context["tab_css_js"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-css_code\">";
        // line 2207
        echo ($context["entry_css_code"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"css_code\" name=\"theme_oct_feelmart_css_code\" rows=\"15\" class=\"form-control\">";
        // line 2209
        echo ($context["theme_oct_feelmart_css_code"] ?? null);
        echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-js_code\">";
        // line 2213
        echo ($context["entry_js_code"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<textarea id=\"js_code\" name=\"theme_oct_feelmart_js_code\" rows=\"15\" class=\"form-control\">";
        // line 2215
        echo ($context["theme_oct_feelmart_js_code"] ?? null);
        echo "</textarea>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-image\">
\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t<legend>";
        // line 2225
        echo ($context["text_image"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-category-width\">";
        // line 2227
        echo ($context["entry_image_sub_category"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_sub_category_width\" value=\"";
        // line 2232
        echo ($context["theme_oct_feelmart_image_sub_category_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-category-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_sub_category_height\" value=\"";
        // line 2238
        echo ($context["theme_oct_feelmart_image_sub_category_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2243
        if (($context["error_image_category"] ?? null)) {
            // line 2244
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2246
            echo ($context["error_image_sub_category"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2250
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-category-width\">";
        // line 2253
        echo ($context["entry_image_category"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_category_width\" value=\"";
        // line 2258
        echo ($context["theme_oct_feelmart_image_category_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-category-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_category_height\" value=\"";
        // line 2264
        echo ($context["theme_oct_feelmart_image_category_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2269
        if (($context["error_image_category"] ?? null)) {
            // line 2270
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2272
            echo ($context["error_image_category"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2276
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-category-width\">";
        // line 2279
        echo ($context["entry_image_manufacturer"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_manufacturer_width\" value=\"";
        // line 2284
        echo ($context["theme_oct_feelmart_image_manufacturer_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-category-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_manufacturer_height\" value=\"";
        // line 2290
        echo ($context["theme_oct_feelmart_image_manufacturer_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2295
        if (($context["error_image_category"] ?? null)) {
            // line 2296
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2298
            echo ($context["error_image_manufacturer"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2302
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-thumb-width\">";
        // line 2305
        echo ($context["entry_image_thumb"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_thumb_width\" value=\"";
        // line 2310
        echo ($context["theme_oct_feelmart_image_thumb_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-thumb-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_image_popup_width\" value=\"";
        // line 2311
        echo ($context["theme_oct_feelmart_image_popup_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-popup-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_thumb_height\" value=\"";
        // line 2317
        echo ($context["theme_oct_feelmart_image_thumb_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_image_popup_height\" value=\"";
        // line 2318
        echo ($context["theme_oct_feelmart_image_popup_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2323
        if (($context["error_image_thumb"] ?? null)) {
            // line 2324
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2326
            echo ($context["error_image_thumb"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2330
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-thumb-width\">";
        // line 2333
        echo ($context["entry_image_popup"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_popup_width\" value=\"";
        // line 2338
        echo ($context["theme_oct_feelmart_image_popup_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-popup-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_popup_height\" value=\"";
        // line 2344
        echo ($context["theme_oct_feelmart_image_popup_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2349
        if (($context["error_image_popup"] ?? null)) {
            // line 2350
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2352
            echo ($context["error_image_thumb"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2356
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-product-width\">";
        // line 2359
        echo ($context["entry_image_product"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_product_width\" value=\"";
        // line 2364
        echo ($context["theme_oct_feelmart_image_product_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-product-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_product_height\" value=\"";
        // line 2370
        echo ($context["theme_oct_feelmart_image_product_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2375
        if (($context["error_image_product"] ?? null)) {
            // line 2376
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2378
            echo ($context["error_image_product"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2382
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-additional-width\">";
        // line 2385
        echo ($context["entry_image_additional"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_additional_width\" value=\"";
        // line 2390
        echo ($context["theme_oct_feelmart_image_additional_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-additional-width\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_additional_height\" value=\"";
        // line 2396
        echo ($context["theme_oct_feelmart_image_additional_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2401
        if (($context["error_image_additional"] ?? null)) {
            // line 2402
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2404
            echo ($context["error_image_additional"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2408
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-related\">";
        // line 2411
        echo ($context["entry_image_related"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_related_width\" value=\"";
        // line 2416
        echo ($context["theme_oct_feelmart_image_related_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-related\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_related_height\" value=\"";
        // line 2422
        echo ($context["theme_oct_feelmart_image_related_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2427
        if (($context["error_image_related"] ?? null)) {
            // line 2428
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2430
            echo ($context["error_image_related"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2434
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-compare\">";
        // line 2437
        echo ($context["entry_image_compare"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_compare_width\" value=\"";
        // line 2442
        echo ($context["theme_oct_feelmart_image_compare_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-compare\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_compare_height\" value=\"";
        // line 2448
        echo ($context["theme_oct_feelmart_image_compare_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2453
        if (($context["error_image_compare"] ?? null)) {
            // line 2454
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2456
            echo ($context["error_image_compare"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2460
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-wishlist\">";
        // line 2463
        echo ($context["entry_image_wishlist"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_wishlist_width\" value=\"";
        // line 2468
        echo ($context["theme_oct_feelmart_image_wishlist_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-wishlist\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_wishlist_height\" value=\"";
        // line 2474
        echo ($context["theme_oct_feelmart_image_wishlist_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2479
        if (($context["error_image_wishlist"] ?? null)) {
            // line 2480
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2482
            echo ($context["error_image_wishlist"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2486
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-cart\">";
        // line 2489
        echo ($context["entry_image_cart"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_cart_width\" value=\"";
        // line 2494
        echo ($context["theme_oct_feelmart_image_cart_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-cart\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_cart_height\" value=\"";
        // line 2500
        echo ($context["theme_oct_feelmart_image_cart_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2505
        if (($context["error_image_cart"] ?? null)) {
            // line 2506
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2508
            echo ($context["error_image_cart"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2512
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-image-location\">";
        // line 2515
        echo ($context["entry_image_location"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_location_width\" value=\"";
        // line 2520
        echo ($context["theme_oct_feelmart_image_location_width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-image-location\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_image_location_height\" value=\"";
        // line 2526
        echo ($context["theme_oct_feelmart_image_location_height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"input-group-addon\">px</span>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        // line 2531
        if (($context["error_image_location"] ?? null)) {
            // line 2532
            echo "\t\t\t\t\t\t\t\t\t\t<div class=\"text-danger\">
\t\t\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\t\t\tusNotify('warning', '";
            // line 2534
            echo ($context["error_image_location"] ?? null);
            echo "');
\t\t\t\t\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 2538
        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-widgets\">
\t\t\t\t\t\t\t<div class=\"col-sm-2\">
\t\t\t\t\t\t\t\t<ul class=\"nav nav-pills nav-stacked\" id=\"widgets\">
\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-popup_cart\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-arrow-up fw\"></i> ";
        // line 2545
        echo ($context["text_popup_cart"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-live_search\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-search fw\"></i> ";
        // line 2546
        echo ($context["text_live_search"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-feedback\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-phone-square fw\"></i> ";
        // line 2547
        echo ($context["text_feedback"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-alert\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-bell fw\"></i> ";
        // line 2548
        echo ($context["text_alert"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-alert\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 2555
        echo ($context["text_alert"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-alert_status\">";
        // line 2557
        echo ($context["entry_show_widget_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_alert_status\" ";
        // line 2560
        if (($context["theme_oct_feelmart_alert_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-alert_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-alert_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-alert_products\">";
        // line 2573
        echo ($context["entry_show_alert_products"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_alert_data[products]\" ";
        // line 2576
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_alert_data"] ?? null), "products", [], "any", false, false, false, 2576)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-alert_products\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-alert_products\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-alert_orders\">";
        // line 2588
        echo ($context["entry_show_alert_orders"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_alert_data[orders]\" ";
        // line 2591
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_alert_data"] ?? null), "orders", [], "any", false, false, false, 2591)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-alert_orders\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-alert_orders\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-alert_oct_modules\">";
        // line 2605
        echo ($context["entry_show_alert_octemplates"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_alert_data[oct_modules]\" ";
        // line 2608
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_alert_data"] ?? null), "oct_modules", [], "any", false, false, false, 2608)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-alert_oct_modules\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-alert_oct_modules\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-feedback\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 2624
        echo ($context["text_feedback"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback-status\">";
        // line 2626
        echo ($context["entry_show_widget_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_status\" ";
        // line 2629
        if (($context["theme_oct_feelmart_feedback_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback-status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback-status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_messenger\">";
        // line 2641
        echo ($context["entry_show_feedback_messenger"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_messenger]\" ";
        // line 2644
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_messenger", [], "any", false, false, false, 2644)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_messenger\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_messenger\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_viber\">";
        // line 2656
        echo ($context["entry_show_feedback_viber"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_viber]\" ";
        // line 2659
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_viber", [], "any", false, false, false, 2659)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_viber\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_viber\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_telegram\">";
        // line 2671
        echo ($context["entry_show_feedback_telegram"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_telegram]\" ";
        // line 2674
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_telegram", [], "any", false, false, false, 2674)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_telegram\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_telegram\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_skype\">";
        // line 2686
        echo ($context["entry_show_feedback_skype"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_skype]\" ";
        // line 2689
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_skype", [], "any", false, false, false, 2689)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_skype\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_skype\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_whatsapp\">";
        // line 2701
        echo ($context["entry_show_feedback_whatsapp"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_whatsapp]\" ";
        // line 2704
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_whatsapp", [], "any", false, false, false, 2704)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_whatsapp\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_whatsapp\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_email\">";
        // line 2716
        echo ($context["entry_show_feedback_email"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_email]\" ";
        // line 2719
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_email", [], "any", false, false, false, 2719)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_email\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_email\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-feedback_callback\">";
        // line 2731
        echo ($context["entry_show_feedback_callback"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_feedback_data[feedback_callback]\" ";
        // line 2734
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_feedback_data"] ?? null), "feedback_callback", [], "any", false, false, false, 2734)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-feedback_callback\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-feedback_callback\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane active\" id=\"tab-popup_cart\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 2749
        echo ($context["text_popup_cart"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-popupcart-status\">";
        // line 2751
        echo ($context["entry_show_widget_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_popup_cart_status\" ";
        // line 2754
        if (($context["theme_oct_feelmart_popup_cart_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-popupcart-status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-popupcart-status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-popupcart-is\">";
        // line 2766
        echo ($context["entry_popup_is"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_isPopup\" ";
        // line 2769
        if (($context["theme_oct_feelmart_isPopup"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-popupcart-is\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-popupcart-is\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-live_search\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 2784
        echo ($context["text_live_search"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-live_search_status\">";
        // line 2786
        echo ($context["entry_show_widget_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_live_search_status\" ";
        // line 2789
        if (($context["theme_oct_feelmart_live_search_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-live_search_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-live_search_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-live_search_price\">";
        // line 2801
        echo ($context["entry_show_live_price"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_live_search_data[price]\" ";
        // line 2804
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_live_search_data"] ?? null), "price", [], "any", false, false, false, 2804)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-live_search_price\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-live_search_price\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-live_search_model\">";
        // line 2816
        echo ($context["entry_show_live_model"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_live_search_data[model]\" ";
        // line 2819
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_live_search_data"] ?? null), "model", [], "any", false, false, false, 2819)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-live_search_model\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-live_search_model\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-live_search_sku\">";
        // line 2831
        echo ($context["entry_show_live_sku"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_live_search_data[sku]\" ";
        // line 2834
        if (twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_live_search_data"] ?? null), "sku", [], "any", false, false, false, 2834)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-live_search_sku\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-live_search_sku\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-live_search_sku\">";
        // line 2846
        echo ($context["entry_live_search_delay"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_live_search_data[delay]\" value=\"";
        // line 2848
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_live_search_data"] ?? null), "delay", [], "any", false, false, false, 2848);
        echo "\" placeholder=\"";
        echo ($context["entry_live_search_delay"] ?? null);
        echo "\" id=\"input-live_search_delay\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-live_search_sku\">";
        // line 2852
        echo ($context["entry_live_search_symbols"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_live_search_data[count_symbol]\" value=\"";
        // line 2854
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_live_search_data"] ?? null), "count_symbol", [], "any", false, false, false, 2854);
        echo "\" placeholder=\"";
        echo ($context["entry_live_search_symbols"] ?? null);
        echo "\" id=\"input-live_search_delay\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        // line 2862
        if (($context["oct_modules"] ?? null)) {
            // line 2863
            echo "\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-module\">
\t\t\t\t\t\t\t<div class=\"col-sm-2\">
\t\t\t\t\t\t\t\t<ul class=\"nav nav-pills nav-stacked\" id=\"oct_modules\">
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-all_blog\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-code fw\"></i> ";
            // line 2866
            echo ($context["tab_blog"] ?? null);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-all_modules\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-code fw\"></i> ";
            // line 2867
            echo ($context["tab_module"] ?? null);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-all_banners\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-code fw\"></i> ";
            // line 2868
            echo ($context["tab_banner"] ?? null);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-all_stickers\" data-toggle=\"tab\" aria-expanded=\"true\"><i class=\"fa fa-code fw\"></i> ";
            // line 2869
            echo ($context["tab_stickers"] ?? null);
            echo "</a></li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane active\" id=\"tab-all_modules\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>FeelMart - ";
            // line 2876
            echo ($context["tab_module"] ?? null);
            echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">";
            // line 2881
            echo ($context["column_name"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">";
            // line 2882
            echo ($context["column_action"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t</thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 2886
            if (($context["oct_modules"] ?? null)) {
                // line 2887
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["oct_modules"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["oct_module"]) {
                    // line 2888
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td><b>";
                    // line 2889
                    echo twig_get_attribute($this->env, $this->source, $context["oct_module"], "name", [], "any", false, false, false, 2889);
                    echo "</b></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                    // line 2891
                    echo twig_get_attribute($this->env, $this->source, $context["oct_module"], "edit", [], "any", false, false, false, 2891);
                    echo "\" data-toggle=\"tooltip\" title=\"";
                    echo ($context["button_edit"] ?? null);
                    echo "\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_module'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 2895
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 2896
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\" colspan=\"2\">";
                // line 2897
                echo ($context["text_no_results"] ?? null);
                echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 2900
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-all_banners\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>FeelMart - ";
            // line 2907
            echo ($context["tab_banner"] ?? null);
            echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">";
            // line 2912
            echo ($context["column_name"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">";
            // line 2913
            echo ($context["column_action"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t</thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 2917
            if (($context["oct_banners"] ?? null)) {
                // line 2918
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["oct_banners"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["oct_banner"]) {
                    // line 2919
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td><b>";
                    // line 2920
                    echo twig_get_attribute($this->env, $this->source, $context["oct_banner"], "name", [], "any", false, false, false, 2920);
                    echo "</b></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                    // line 2922
                    echo twig_get_attribute($this->env, $this->source, $context["oct_banner"], "edit", [], "any", false, false, false, 2922);
                    echo "\" data-toggle=\"tooltip\" title=\"";
                    echo ($context["button_edit"] ?? null);
                    echo "\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_banner'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 2926
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 2927
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\" colspan=\"2\">";
                // line 2928
                echo ($context["text_no_results"] ?? null);
                echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 2931
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-all_blog\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>FeelMart - ";
            // line 2938
            echo ($context["tab_blog"] ?? null);
            echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">";
            // line 2943
            echo ($context["column_name"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">";
            // line 2944
            echo ($context["column_action"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t</thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 2948
            if (($context["oct_blogs"] ?? null)) {
                // line 2949
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["oct_blogs"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["oct_blog"]) {
                    // line 2950
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td><b>";
                    // line 2951
                    echo twig_get_attribute($this->env, $this->source, $context["oct_blog"], "name", [], "any", false, false, false, 2951);
                    echo "</b></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                    // line 2953
                    echo twig_get_attribute($this->env, $this->source, $context["oct_blog"], "edit", [], "any", false, false, false, 2953);
                    echo "\" data-toggle=\"tooltip\" title=\"";
                    echo ($context["button_edit"] ?? null);
                    echo "\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_blog'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 2957
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 2958
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\" colspan=\"2\">";
                // line 2959
                echo ($context["text_no_results"] ?? null);
                echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 2962
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-all_stickers\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>FeelMart - ";
            // line 2969
            echo ($context["tab_stickers"] ?? null);
            echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"table-responsive\">
\t\t\t\t\t\t\t\t\t\t\t\t<table class=\"table table-bordered table-hover\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-left\">";
            // line 2974
            echo ($context["column_name"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">";
            // line 2975
            echo ($context["column_action"] ?? null);
            echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t</thead>
\t\t\t\t\t\t\t\t\t\t\t\t\t<tbody>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            // line 2979
            if (($context["oct_stickers"] ?? null)) {
                // line 2980
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["oct_stickers"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["oct_sticker"]) {
                    // line 2981
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td><b>";
                    // line 2982
                    echo twig_get_attribute($this->env, $this->source, $context["oct_sticker"], "name", [], "any", false, false, false, 2982);
                    echo "</b></td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-right\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                    // line 2984
                    echo twig_get_attribute($this->env, $this->source, $context["oct_sticker"], "edit", [], "any", false, false, false, 2984);
                    echo "\" data-toggle=\"tooltip\" title=\"";
                    echo ($context["button_edit"] ?? null);
                    echo "\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_sticker'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 2988
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 2989
                echo "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<td class=\"text-center\" colspan=\"2\">";
                // line 2990
                echo ($context["text_no_results"] ?? null);
                echo "</td>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</tr>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 2993
            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t</tbody>
\t\t\t\t\t\t\t\t\t\t\t\t</table>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        }
        // line 3002
        echo "\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-seo_title\">
\t\t\t\t\t\t\t<div class=\"col-sm-2\">
\t\t\t\t\t\t\t\t<ul class=\"nav nav-pills nav-stacked\" id=\"settings\">
\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-seo_titles\" data-toggle=\"tab\"  aria-expanded=\"true\">SEO Titles</a></li>
\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-seo_urls\" data-toggle=\"tab\"  aria-expanded=\"true\">";
        // line 3006
        echo ($context["text_seo_url"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane active\" id=\"tab-seo_titles\">
\t\t\t\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t\t\t\t<legend>SEO Titles</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_title_status\">";
        // line 3015
        echo ($context["entry_show_widget_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_status\" ";
        // line 3018
        if (($context["theme_oct_feelmart_seo_title_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_title_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_title_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\" style=\"margin-left:0;margin-right:0;\">
\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-tabs\" id=\"seo_title-block\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#tab-seo_title-product\" data-toggle=\"tab\">";
        // line 3031
        echo ($context["text_seo_title_product"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-seo_title-category\" data-toggle=\"tab\">";
        // line 3032
        echo ($context["text_seo_title_category"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#tab-seo_title-manufacturer\" data-toggle=\"tab\">";
        // line 3033
        echo ($context["text_seo_title_manufacturer"] ?? null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-content\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-pane active\" id=\"tab-seo_title-product\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_product_title_status\">";
        // line 3040
        echo ($context["entry_seo_title_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[product][title_status]\" ";
        // line 3043
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "product", [], "any", false, false, false, 3043), "title_status", [], "any", false, false, false, 3043)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_product_title_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_product_title_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_product_title_empty\"><span data-toggle=\"tooltip\" title=\"\" data-original-title=\"";
        // line 3057
        echo ($context["help_seo_title_empty"] ?? null);
        echo "\">";
        echo ($context["entry_seo_title_empty"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[product][title_empty]\" ";
        // line 3060
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "product", [], "any", false, false, false, 3060), "title_empty", [], "any", false, false, false, 3060)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_product_title_empty\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_product_title_empty\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\">";
        // line 3073
        echo ($context["entry_seo_title"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t                    ";
        // line 3075
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3076
            echo "\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3078
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3078);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3078);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3078);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_title_data[product][title][";
            // line 3080
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3080);
            echo "]\" value=\"";
            echo (($__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "product", [], "any", false, false, false, 3080), "title", [], "any", false, false, false, 3080)) && is_array($__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216) || $__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216 instanceof ArrayAccess ? ($__internal_df39c71428eaf37baa1ea2198679e0077f3699bdd31bb5ba10d084710b9da216[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3080)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3083
        echo "\t\t\t\t\t\t\t\t                            <div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3084
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[price]<br />[model]<br />[sku]<br />[store]<br />[category]<br />[manufacturer]<br />[address]<br />[phone]<br />[time]
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_product_description_status\">";
        // line 3090
        echo ($context["entry_seo_description_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[product][description_status]\" ";
        // line 3093
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "product", [], "any", false, false, false, 3093), "description_status", [], "any", false, false, false, 3093)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_product_description_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_product_description_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_product_description_empty\">";
        // line 3107
        echo ($context["entry_seo_title_empty"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[product][description_empty]\" ";
        // line 3110
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "product", [], "any", false, false, false, 3110), "description_empty", [], "any", false, false, false, 3110)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_product_description_empty\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_product_description_empty\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\">";
        // line 3123
        echo ($context["entry_seo_description"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t                        \t";
        // line 3125
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3126
            echo "\t\t\t\t\t\t\t\t                        \t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3128
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3128);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3128);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3128);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_title_data[product][description][";
            // line 3130
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3130);
            echo "]\" value=\"";
            echo (($__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "product", [], "any", false, false, false, 3130), "description", [], "any", false, false, false, 3130)) && is_array($__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0) || $__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0 instanceof ArrayAccess ? ($__internal_bf0e189d688dc2ad611b50a437a32d3692fb6b8be90d2228617cfa6db44e75c0[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3130)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3133
        echo "\t\t\t\t\t\t\t\t                            <div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3134
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[price]<br />[model]<br />[sku]<br />[store]<br />[category]<br />[manufacturer]<br />[address]<br />[phone]<br />[time]
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-seo_title-category\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_category_title_status\">";
        // line 3142
        echo ($context["entry_seo_title_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[category][title_status]\" ";
        // line 3145
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "category", [], "any", false, false, false, 3145), "title_status", [], "any", false, false, false, 3145)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_category_title_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_category_title_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_category_title_empty\"><span data-toggle=\"tooltip\" title=\"\" data-original-title=\"";
        // line 3159
        echo ($context["help_seo_title_empty"] ?? null);
        echo "\">";
        echo ($context["entry_seo_title_empty"] ?? null);
        echo "</span></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[category][title_empty]\" ";
        // line 3162
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "category", [], "any", false, false, false, 3162), "title_empty", [], "any", false, false, false, 3162)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_category_title_empty\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_category_title_empty\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\">";
        // line 3175
        echo ($context["entry_seo_title"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t                    ";
        // line 3177
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3178
            echo "\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3180
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3180);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3180);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3180);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_title_data[category][title][";
            // line 3182
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3182);
            echo "]\" value=\"";
            echo (($__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "category", [], "any", false, false, false, 3182), "title", [], "any", false, false, false, 3182)) && is_array($__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c) || $__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c instanceof ArrayAccess ? ($__internal_674c0abf302105af78b0a38907d86c5dd0028bdc3ee5f24bf52771a16487760c[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3182)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3185
        echo "\t\t\t\t\t\t\t\t                            <div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3186
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[store]<br />[address]<br />[phone]<br />[time]
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_category_description_status\">";
        // line 3192
        echo ($context["entry_seo_description_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[category][description_status]\" ";
        // line 3195
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "category", [], "any", false, false, false, 3195), "description_status", [], "any", false, false, false, 3195)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_category_description_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_category_description_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-4 control-label\" for=\"input-seo_category_description_empty\">";
        // line 3209
        echo ($context["entry_seo_title_empty"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-8\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[category][description_empty]\" ";
        // line 3212
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "category", [], "any", false, false, false, 3212), "description_empty", [], "any", false, false, false, 3212)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_category_description_empty\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_category_description_empty\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\">";
        // line 3225
        echo ($context["entry_seo_description"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t                        \t";
        // line 3227
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3228
            echo "\t\t\t\t\t\t\t\t                        \t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3230
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3230);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3230);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3230);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_title_data[category][description][";
            // line 3232
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3232);
            echo "]\" value=\"";
            echo (($__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "category", [], "any", false, false, false, 3232), "description", [], "any", false, false, false, 3232)) && is_array($__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f) || $__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f instanceof ArrayAccess ? ($__internal_dd839fbfcab68823c49af471c7df7659a500fe72e71b58d6b80d896bdb55e75f[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3232)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3235
        echo "\t\t\t\t\t\t\t\t                            <div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3236
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[store]<br />[address]<br />[phone]<br />[time]
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-seo_title-manufacturer\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_manufacturer_title_status\">";
        // line 3243
        echo ($context["entry_seo_title_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[manufacturer][title_status]\" ";
        // line 3246
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "manufacturer", [], "any", false, false, false, 3246), "title_status", [], "any", false, false, false, 3246)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_manufacturer_title_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_manufacturer_title_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\">";
        // line 3258
        echo ($context["entry_seo_title"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t                    ";
        // line 3260
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3261
            echo "\t\t\t\t\t\t\t\t                            <div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3263
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3263);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3263);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3263);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_title_data[manufacturer][title][";
            // line 3265
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3265);
            echo "]\" value=\"";
            echo (($__internal_a7ed47878554bdc32b70e1ba5ccc67d2302196876fbf62b4c853b20cb9e029fc = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "manufacturer", [], "any", false, false, false, 3265), "title", [], "any", false, false, false, 3265)) && is_array($__internal_a7ed47878554bdc32b70e1ba5ccc67d2302196876fbf62b4c853b20cb9e029fc) || $__internal_a7ed47878554bdc32b70e1ba5ccc67d2302196876fbf62b4c853b20cb9e029fc instanceof ArrayAccess ? ($__internal_a7ed47878554bdc32b70e1ba5ccc67d2302196876fbf62b4c853b20cb9e029fc[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3265)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3268
        echo "\t\t\t\t\t\t\t\t                            <div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3269
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[store]<br />[address]<br />[phone]<br />[time]
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_manufacturer_description_status\">";
        // line 3274
        echo ($context["entry_seo_description_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_title_data[manufacturer][description_status]\" ";
        // line 3277
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "manufacturer", [], "any", false, false, false, 3277), "description_status", [], "any", false, false, false, 3277)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_manufacturer_description_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_manufacturer_description_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\">";
        // line 3289
        echo ($context["entry_seo_description"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t                        \t";
        // line 3291
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3292
            echo "\t\t\t\t\t\t\t\t                        \t<div class=\"input-group\">
\t\t\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3294
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3294);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3294);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3294);
            echo "\" />
\t\t\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_title_data[manufacturer][description][";
            // line 3296
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3296);
            echo "]\" value=\"";
            echo (($__internal_e5d7b41e16b744b68da1e9bb49047b8028ced86c782900009b4b4029b83d4b55 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_title_data"] ?? null), "manufacturer", [], "any", false, false, false, 3296), "description", [], "any", false, false, false, 3296)) && is_array($__internal_e5d7b41e16b744b68da1e9bb49047b8028ced86c782900009b4b4029b83d4b55) || $__internal_e5d7b41e16b744b68da1e9bb49047b8028ced86c782900009b4b4029b83d4b55 instanceof ArrayAccess ? ($__internal_e5d7b41e16b744b68da1e9bb49047b8028ced86c782900009b4b4029b83d4b55[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3296)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t                            </div>
\t\t\t\t\t\t\t\t                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3299
        echo "\t\t\t\t\t\t\t\t                            <div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3300
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[store]<br />[address]<br />[phone]<br />[time]
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-seo_urls\">
\t\t\t\t\t\t\t\t\t\t<fildset>
\t\t\t\t\t\t\t\t\t\t\t<legend>SEO URL</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-12\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group text_seo_url_danger\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3314
        echo ($context["text_seo_url_danger"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_status\">";
        // line 3319
        echo ($context["entry_show_widget_status"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_seo_url_status\" ";
        // line 3322
        if (($context["theme_oct_feelmart_seo_url_status"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " id=\"input-seo_url_status\" tabindex=\"1\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"input-seo_url_status\"></label>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_status\">";
        // line 3334
        echo ($context["entry_seo_url_lang_prefix"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3336
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3337
            echo "\t\t\t\t\t\t\t                    \t<div class=\"input-group\">
\t\t\t\t\t\t\t\t                        <span class=\"input-group-addon\">
\t\t\t\t\t\t\t\t                        \t<img src=\"language/";
            // line 3339
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3339);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3339);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3339);
            echo "\" />
\t\t\t\t\t\t\t\t                        </span>
\t\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[lang_prefix][";
            // line 3341
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3341);
            echo "]\" value=\"";
            echo (($__internal_9e93f398968fa0576dce82fd00f280e95c734ad3f84e7816ff09158ae224f5ba = twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "lang_prefix", [], "any", false, false, false, 3341)) && is_array($__internal_9e93f398968fa0576dce82fd00f280e95c734ad3f84e7816ff09158ae224f5ba) || $__internal_9e93f398968fa0576dce82fd00f280e95c734ad3f84e7816ff09158ae224f5ba instanceof ArrayAccess ? ($__internal_9e93f398968fa0576dce82fd00f280e95c734ad3f84e7816ff09158ae224f5ba[twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3341)] ?? null) : null);
            echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t                        </div>
\t\t\t\t\t\t\t                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3344
        echo "\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fildset>
\t\t\t\t\t\t\t\t\t\t<fildset>
\t\t\t\t\t\t\t\t\t\t\t<legend>";
        // line 3348
        echo ($context["entry_seo_url_product"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_product\">";
        // line 3350
        echo ($context["entry_seo_url_product"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[product]\" value=\"";
        // line 3352
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "product", [], "any", false, false, false, 3352);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3354
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[model]<br />[sku]<br />[brand]<br />[lang_prefix]
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_category\">";
        // line 3359
        echo ($context["entry_seo_url_category"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[category]\" value=\"";
        // line 3361
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "category", [], "any", false, false, false, 3361);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3363
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[lang_prefix]
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_manufacturer\">";
        // line 3368
        echo ($context["entry_seo_url_manufacturer"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[manufacturer]\" value=\"";
        // line 3370
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "manufacturer", [], "any", false, false, false, 3370);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3372
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[lang_prefix]
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_information\">";
        // line 3377
        echo ($context["entry_seo_url_information"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[information]\" value=\"";
        // line 3379
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "information", [], "any", false, false, false, 3379);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3381
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[lang_prefix]
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_blog_category\">";
        // line 3386
        echo ($context["entry_seo_url_blog_category"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[blog_category]\" value=\"";
        // line 3388
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "blog_category", [], "any", false, false, false, 3388);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3390
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[lang_prefix]
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t\t\t<label class=\"col-sm-2 control-label\" for=\"input-seo_url_blog_article\">";
        // line 3395
        echo ($context["entry_seo_url_blog_article"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-10\">
\t\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"theme_oct_feelmart_seo_url_data[blog_article]\" value=\"";
        // line 3397
        echo twig_get_attribute($this->env, $this->source, ($context["theme_oct_feelmart_seo_url_data"] ?? null), "blog_article", [], "any", false, false, false, 3397);
        echo "\" class=\"form-control\" />
\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"seo-variant\">
\t\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 3399
        echo ($context["entry_seo_variants"] ?? null);
        echo ":<br />[name]<br />[lang_prefix]
\t\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</fildset>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"tab-pane\" id=\"tab-help\">
\t\t\t\t\t\t\t<fieldset>
\t\t\t\t\t\t\t\t<legend>";
        // line 3410
        echo ($context["tab_help"] ?? null);
        echo "</legend>
\t\t\t\t\t\t\t</fieldset>
\t\t\t\t\t\t\t";
        // line 3412
        echo ($context["entry_help_text"] ?? null);
        echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_version\" value=\"";
        // line 3415
        echo ($context["theme_oct_feelmart_version"] ?? null);
        echo "\" />
\t\t\t\t</form>
\t\t\t</div>
\t\t</div>
\t</div>
</div>
<script>
\$('input[name=\\'advantage_link\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3425
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\tdataType: 'json',
\t\t\tcache: false,
\t\t\tsuccess: function(json) {
\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\treturn {
\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\tvalue: item['information_id'],
\t\t\t\t\t\tdescr: item['description'],
\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t}
\t\t\t\t}));
\t\t\t}
\t\t});
\t},
\t'select': function(item) {
\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\$('input[name=\\'advantage_link\\']').val('');
\t\t\$('#advantages_id-' + in_id[1]).val(item.value);

\t\t\$.each(item.descr, function(i, val) {
\t\t\t\$('#advantage-title-' + in_id[1] + i).val(val['title']);
\t\t});

\t\t\$.each(item.href[";
        // line 3450
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\$('#advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t});
\t}
});

\$('input[name=\\'header_advantage_link\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3459
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\tdataType: 'json',
\t\t\tcache: false,
\t\t\tsuccess: function(json) {
\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\treturn {
\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t}
\t\t\t\t}));
\t\t\t}
\t\t});
\t},
\t'select': function(item) {
\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\$('input[name=\\'header_advantage_link\\']').val('');

\t\t\$.each(item.descr, function(i, val) {
\t\t\t\$('#header_advantage-title-' + in_id[1] + i).val(val['title']);
\t\t});

\t\t\$.each(item.href[";
        // line 3481
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\$('#header_advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t});
\t}
});

\$('input[name=\\'footer_advantage_link\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3490
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\tdataType: 'json',
\t\t\tcache: false,
\t\t\tsuccess: function(json) {
\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\treturn {
\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t}
\t\t\t\t}));
\t\t\t}
\t\t});
\t},
\t'select': function(item) {
\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\$('input[name=\\'footer_advantage_link\\']').val('');

\t\t\$.each(item.descr, function(i, val) {
\t\t\t\$('#footer_advantage-title-' + in_id[1] + i).val(val['title']);
\t\t});

\t\t\$.each(item.href[";
        // line 3512
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\$('#footer_advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t});
\t}
});

\$('input[name=\\'mobile_advantage_link\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3521
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\tdataType: 'json',
\t\t\tcache: false,
\t\t\tsuccess: function(json) {
\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\treturn {
\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t}
\t\t\t\t}));
\t\t\t}
\t\t});
\t},
\t'select': function(item) {
\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\$('input[name=\\'mobile_advantage_link\\']').val('');

\t\t\$.each(item.descr, function(i, val) {
\t\t\t\$('#mobile_advantage-title-' + in_id[1] + i).val(val['title']);
\t\t});

\t\t\$.each(item.href[";
        // line 3543
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\$('#mobile_advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t});
\t}
});

// Category
\$('input[name=\\'category\\']').autocomplete({
\t'source': function(request, response) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=catalog/category/autocomplete&user_token=";
        // line 3553
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\tdataType: 'json',
\t\t\tcache: false,
\t\t\tsuccess: function(json) {
\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\treturn {
\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\tvalue: item['category_id']
\t\t\t\t\t}
\t\t\t\t}));
\t\t\t}
\t\t});
\t},
\t'select': function(item) {
\t\t\$('input[name=\\'category\\']').val('');

\t\t\$('#product-category' + item['value']).remove();

\t\t\$('#product-category').append(`<div id=\"product-category\${ item['value'] }\"><i class=\"fa fa-minus-circle\"></i> \${ item['label'] }<input type=\"hidden\" name=\"theme_oct_feelmart_data[footer_category_links][]\" value=\"\${ item['value'] }\" /></div>`);
\t}
});

\$('#product-category').delegate('.fa-minus-circle', 'click', function() {
\t\$(this).parent().remove();
});

\$(\".spectrum\").spectrum({
\tpreferredFormat: \"rgb\",
\tshowInitial: true,
\tshowInput: true,
\tshowAlpha: true,
\tshowPalette: true,
\tpalette: [[\"red\", \"rgba(0, 255, 0, .5)\", \"rgb(0, 0, 255)\"]]
});
</script>
<script>
const codemirror = CodeMirror.fromTextArea(document.getElementById('css_code'), {
\tmode : 'css',
\theight: '100%',
\tlineNumbers: true,
\tautofocus: true,
\tlineWrapping: true
});

const codemirror2 = CodeMirror.fromTextArea(document.getElementById('js_code'), {
\tmode : 'javascript',
\theight: '100%',
\tlineNumbers: true,
\tautofocus: true,
\tlineWrapping: true
});

\$('a#code_mir').on('shown.bs.tab', function () {
\t\$('.CodeMirror').each(function(i, el){
\t\tel.CodeMirror.refresh();
\t});
});

\$('#input-product_dop_tab').change(function() {
    let \$input = \$(this);

    if (\$input.is(\":checked\")) {
        \$(\"#product_dop_tabs_text\").slideDown('slow');
    } else {
        \$(\"#product_dop_tabs_text\").slideUp('slow');
    }
});

\$('#input-product_advantage').change(function() {
    let \$input = \$(this);

    if (\$input.is(\":checked\")) {
        \$(\"#product_advantages\").slideDown('slow');
    } else {
        \$(\"#product_advantages\").slideUp('slow');
    }
});

\$('#address-language a:first').tab('show');
\$('#open-language a:first').tab('show');
\$('#contact_view_html-language a:first').tab('show');
\$('#product_dop_tab-language a:first').tab('show');
\$('#order_register_account-language a:first').tab('show');
\$('#order_no_register_account-language a:first').tab('show');
</script>
<script>
let social_row = ";
        // line 3639
        echo ($context["social_row"] ?? null);
        echo ";

function addSocial() {
\tconst html = `
\t<tr id=\"social-row\${ social_row }\">
\t\t<td class=\"left\">
\t\t\t<div class=\"input-group\">
\t\t\t\t<span class=\"input-group-btn\">
\t\t\t\t<button onClick=\"fontIcons('social_icone-\${ social_row }', 'social_input_icone-\${ social_row }');\" class=\"btn btn-default\" type=\"button\"><i id=\"social_icone-\${ social_row }\" class=\"fas fa-asterisk\"></i></button>
\t\t\t\t<input type=\"hidden\" name=\"theme_oct_feelmart_data[socials][\${ social_row }][icone]\" id=\"social_input_icone-\${ social_row }\" value=\"\" />
\t\t\t\t</span>
\t\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data[socials][\${ social_row }][title]\" value=\"\" placeholder=\"";
        // line 3650
        echo ($context["entry_social_title"] ?? null);
        echo "\" class=\"form-control\" />
\t\t\t</div>
\t\t</td>
\t\t<td class=\"left\">
\t\t\t<input type=\"text\" name=\"theme_oct_feelmart_data[socials][\${ social_row }][link]\" value=\"\" placeholder=\"";
        // line 3654
        echo ($context["entry_social_link"] ?? null);
        echo "\" class=\"form-control\" />
\t\t</td>
\t\t<td class=\"left\">
\t\t\t<a onclick=\"\$('#social-row\${ social_row }').remove()\" data-toggle=\"tooltip\" title=\"";
        // line 3657
        echo ($context["button_remove"] ?? null);
        echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></a>
\t\t</td>
\t</tr>
\t`;

\t\$('#tab-socials-settings table tbody').append(html);

\tsocial_row++;
}
</script>
<script>
let header_advantages_row = ";
        // line 3668
        echo ($context["header_advantages_row"] ?? null);
        echo ";

function addHeaderAdvantage() {
\tconst html = `
\t<tr id=\"header_advantage-row\${ header_advantages_row }\">
\t\t<td class=\"text-left\">
\t\t\t<div class=\"col-sm-12\">
\t\t\t\t<input type=\"text\" name=\"header_advantage_link\" value=\"\" placeholder=\"";
        // line 3675
        echo ($context["entry_footer_information_links"] ?? null);
        echo "\" id=\"advantage_link-\${ header_advantages_row }\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3678
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3679
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3681
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3681);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3681);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3681);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[header_links][\${ header_advantages_row }][";
            // line 3683
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3683);
            echo "][title]\" value=\"\" id=\"header_advantage-title-\${ header_advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3683);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3686
        echo "\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3688
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3689
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3691
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3691);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3691);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3691);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[header_links][\${ header_advantages_row }][";
            // line 3693
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3693);
            echo "][link]\" value=\"\" id=\"header_advantage-href-\${ header_advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3693);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3696
        echo "\t\t\t</div>
\t\t</td>
\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t<button type=\"button\" onclick=\"\$('#header_advantage-row\${ header_advantages_row }').remove()\" data-toggle=\"tooltip\" title=\"";
        // line 3699
        echo ($context["button_remove"] ?? null);
        echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t</td>
\t</tr>
\t`;

\t\$('#header_advantages table tbody').append(html);

\theader_advantages_row++;

\t\$('input[name=\\'header_advantage_link\\']').autocomplete({
\t\t'source': function(request, response) {
\t\t\t\$.ajax({
\t\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3711
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\t\tdataType: 'json',
\t\t\t\tcache: false,
\t\t\t\tsuccess: function(json) {
\t\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\t\treturn {
\t\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\t\tvalue: item['information_id'],
\t\t\t\t\t\t\tdescr: item['description'],
\t\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t\t}
\t\t\t\t\t}));
\t\t\t\t}
\t\t\t});
\t\t},
\t\t'select': function(item) {
\t\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\t\$('input[name=\\'header_advantage_link\\']').val('');

\t\t\t\$.each(item.descr, function(i, val) {
\t\t\t\t\$('#header_advantage-title-' + in_id[1] + i).val(val['title']);

\t\t\t\tif (Object.keys(item.href).length == 0) {
\t\t\t\t\t\$('#header_advantage-href-' + in_id[1] + i).val('/index.php?route=information/information&information_id='+ item.value);
\t\t\t\t}
\t\t\t});

\t\t\tif (Object.keys(item.href).length != 0) {
\t\t\t\t\$.each(item.href[";
        // line 3740
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\t\t\$('#header_advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t\t\t});
\t\t\t}
\t\t}
\t});
}
</script>
<script>
let footer_advantages_row = ";
        // line 3749
        echo ($context["footer_advantages_row"] ?? null);
        echo ";

function addFooterAdvantage() {
\tconst html = `
\t<tr id=\"footer_advantage-row\${ footer_advantages_row }\">
\t\t<td class=\"text-left\">
\t\t\t<div class=\"col-sm-12\">
\t\t\t\t<input type=\"text\" name=\"footer_advantage_link\" value=\"\" placeholder=\"";
        // line 3756
        echo ($context["entry_footer_information_links"] ?? null);
        echo "\" id=\"advantage_link-\${ footer_advantages_row }\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3759
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3760
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3762
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3762);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3762);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3762);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[footer_links][\${ footer_advantages_row }][";
            // line 3764
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3764);
            echo "][title]\" value=\"\" id=\"footer_advantage-title-\${ footer_advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3764);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3767
        echo "\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3769
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3770
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3772
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3772);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3772);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3772);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[footer_links][\${ footer_advantages_row }][";
            // line 3774
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3774);
            echo "][link]\" value=\"\" id=\"footer_advantage-href-\${ footer_advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3774);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3777
        echo "\t\t\t</div>
\t\t</td>
\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t<button type=\"button\" onclick=\"\$('#footer_advantage-row\${ footer_advantages_row }').remove()\" data-toggle=\"tooltip\" title=\"";
        // line 3780
        echo ($context["button_remove"] ?? null);
        echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t</td>
\t</tr>
\t`;

\t\$('#footer_advantages table tbody').append(html);

\tfooter_advantages_row++;

\t\$('input[name=\\'footer_advantage_link\\']').autocomplete({
\t\t'source': function(request, response) {
\t\t\t\$.ajax({
\t\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3792
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\t\tdataType: 'json',
\t\t\t\tcache: false,
\t\t\t\tsuccess: function(json) {
\t\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\t\treturn {
\t\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\t\tvalue: item['information_id'],
\t\t\t\t\t\t\tdescr: item['description'],
\t\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t\t}
\t\t\t\t\t}));
\t\t\t\t}
\t\t\t});
\t\t},
\t\t'select': function(item) {
\t\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\t\$('input[name=\\'footer_advantage_link\\']').val('');

\t\t\t\$.each(item.descr, function(i, val) {
\t\t\t\t\$('#footer_advantage-title-' + in_id[1] + i).val(val['title']);

\t\t\t\tif (Object.keys(item.href).length == 0) {
\t\t\t\t\t\$('#footer_advantage-href-' + in_id[1] + i).val('/index.php?route=information/information&information_id='+ item.value);
\t\t\t\t}
\t\t\t});

\t\t\tif (Object.keys(item.href).length != 0) {
\t\t\t\t\$.each(item.href[";
        // line 3821
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\t\t\$('#footer_advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t\t\t});
\t\t\t}
\t\t}
\t});
}
</script>
<script>
let mobile_advantages_row = ";
        // line 3830
        echo ($context["mobile_advantages_row"] ?? null);
        echo ";

function addMobileAdvantage() {
\tconst html = `
\t<tr id=\"mobile_advantage-row\${ mobile_advantages_row }\">
\t\t<td class=\"text-left\">
\t\t\t<div class=\"col-sm-12\">
\t\t\t\t<input type=\"text\" name=\"mobile_advantage_link\" value=\"\" placeholder=\"";
        // line 3837
        echo ($context["entry_footer_information_links"] ?? null);
        echo "\" id=\"mobile_advantage_link-\${ mobile_advantages_row }\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3840
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3841
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3843
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3843);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3843);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3843);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[mobile_links][\${ mobile_advantages_row }][";
            // line 3845
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3845);
            echo "][title]\" value=\"\" id=\"mobile_advantage-title-\${ mobile_advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3845);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3848
        echo "\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3850
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3851
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3853
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3853);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3853);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3853);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[mobile_links][\${ mobile_advantages_row }][";
            // line 3855
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3855);
            echo "][link]\" value=\"\" id=\"mobile_advantage-href-\${ mobile_advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3855);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3858
        echo "\t\t\t</div>
\t\t</td>
\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t<button type=\"button\" onclick=\"\$('#mobile_advantage-row\${ mobile_advantages_row }').remove()\" data-toggle=\"tooltip\" title=\"";
        // line 3861
        echo ($context["button_remove"] ?? null);
        echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t</td>
\t</tr>
\t`;

\t\$('#mobile_advantages table tbody').append(html);

\tmobile_advantages_row++;

\t\$('input[name=\\'mobile_advantage_link\\']').autocomplete({
\t\t'source': function(request, response) {
\t\t\t\$.ajax({
\t\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3873
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\t\tdataType: 'json',
\t\t\t\tcache: false,
\t\t\t\tsuccess: function(json) {
\t\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\t\treturn {
\t\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\t\tvalue: item['information_id'],
\t\t\t\t\t\t\tdescr: item['description'],
\t\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t\t}
\t\t\t\t\t}));
\t\t\t\t}
\t\t\t});
\t\t},
\t\t'select': function(item) {
\t\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\t\$('input[name=\\'mobile_advantage_link\\']').val('');

\t\t\t\$.each(item.descr, function(i, val) {
\t\t\t\t\$('#mobile_advantage-title-' + in_id[1] + i).val(val['title']);

\t\t\t\tif (Object.keys(item.href).length == 0) {
\t\t\t\t\t\$('#mobile_advantage-href-' + in_id[1] + i).val('/index.php?route=information/information&information_id='+ item.value);
\t\t\t\t}
\t\t\t});

\t\t\tif (Object.keys(item.href).length != 0) {
\t\t\t\t\$.each(item.href[";
        // line 3902
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\t\t\$('#mobile_advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t\t\t});
\t\t\t}
\t\t}
\t});
}
</script>
<script>
let advantages_row = ";
        // line 3911
        echo ($context["advantages_row"] ?? null);
        echo ";

function addAdvantage() {
\tconst html = `
\t<tr id=\"advantage-row\${ advantages_row }\">
\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t<div class=\"input-group\">
\t            <span class=\"input-group-btn\">
\t            \t<button onClick=\"fontIcons('advantages_icone-\${ advantages_row }', 'advantages_input_icone-\${ advantages_row }');\" class=\"btn btn-default social_icone\" type=\"button\"><i id=\"advantages_icone-\${ advantages_row }\" class=\"fas fa-asterisk\"></i></button>
\t            \t<input type=\"hidden\" name=\"theme_oct_feelmart_data[product_advantages][\${ advantages_row }][icone]\" id=\"advantages_input_icone-\${ advantages_row }\" value=\"\" />
\t            \t<input type=\"hidden\" name=\"theme_oct_feelmart_data[product_advantages][\${ advantages_row }][information_id]\" id=\"advantages_id-\${ advantages_row }\" value=\"\" />
\t            </span>
\t       </div>
\t\t</td>
\t\t<td class=\"text-left\">
\t\t\t<div class=\"col-sm-12\">
\t\t\t\t<input type=\"text\" name=\"advantage_link\" value=\"\" placeholder=\"";
        // line 3927
        echo ($context["entry_footer_information_links"] ?? null);
        echo "\" id=\"advantage_link-\${ advantages_row }\" class=\"form-control\" autocomplete=\"off\" /><hr />
\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3930
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3931
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3933
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3933);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3933);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3933);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Title\" name=\"theme_oct_feelmart_data[product_advantages][\${ advantages_row }][";
            // line 3935
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3935);
            echo "][title]\" value=\"\" id=\"advantage-title-\${ advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3935);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3938
        echo "\t\t\t</div>
\t\t\t<div class=\"col-sm-6\">
\t\t\t\t";
        // line 3940
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3941
            echo "\t\t\t\t<div class=\"input-group\">
\t                <span class=\"input-group-addon\">
\t                \t<img src=\"language/";
            // line 3943
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3943);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3943);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3943);
            echo "\" />
\t                </span>
\t\t\t\t\t<input type=\"text\" placeholder=\"Link\" name=\"theme_oct_feelmart_data[product_advantages][\${ advantages_row }][";
            // line 3945
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3945);
            echo "][link]\" value=\"\" id=\"advantage-href-\${ advantages_row }";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3945);
            echo "\" class=\"form-control\" />
\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3948
        echo "\t\t\t</div>
\t\t</td>
\t\t<td class=\"text-left\">
\t\t\t";
        // line 3951
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
            // line 3952
            echo "\t\t\t<div class=\"input-group\">
\t            <span class=\"input-group-addon\">
\t            \t<img src=\"language/";
            // line 3954
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3954);
            echo "/";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "code", [], "any", false, false, false, 3954);
            echo ".png\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["language"], "name", [], "any", false, false, false, 3954);
            echo "\" />
\t            </span>
\t\t\t\t<textarea name=\"theme_oct_feelmart_data[product_advantages][\${ advantages_row }][";
            // line 3956
            echo twig_get_attribute($this->env, $this->source, $context["language"], "language_id", [], "any", false, false, false, 3956);
            echo "][text]\" class=\"form-control\"></textarea>
\t\t\t</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 3959
        echo "\t\t</td>
\t\t<td class=\"text-left\" style=\"width:10%;\">
\t\t\t<label class=\"col-sm-12\" for=\"input-product_advantage_popup-\${ advantages_row }\">";
        // line 3961
        echo ($context["entry_product_advantage_popup"] ?? null);
        echo "</label>
\t\t\t<div class=\"col-sm-12\">
\t\t\t\t<div class=\"toggle-group\">
\t\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[product_advantages][\${ advantages_row }][popup]\" id=\"input-product_advantage_popup-\${ advantages_row }\" tabindex=\"1\">
\t\t\t\t\t<label for=\"input-product_advantage_popup-\${ advantages_row }\"></label>
\t\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</td>
\t\t<td class=\"text-left\" style=\"width:5%;\">
\t\t\t<button type=\"button\" onclick=\"\$('#advantage-row\${ advantages_row }').remove()\" data-toggle=\"tooltip\" title=\"";
        // line 3976
        echo ($context["button_remove"] ?? null);
        echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button>
\t\t</td>
\t</tr>
\t`;

\t\$('#product_advantages table tbody').append(html);

\tadvantages_row++;

\t\$('input[name=\\'advantage_link\\']').autocomplete({
\t\t'source': function(request, response) {
\t\t\t\$.ajax({
\t\t\t\turl: 'index.php?route=catalog/information/octAutocomplete&user_token=";
        // line 3988
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
\t\t\t\tdataType: 'json',
\t\t\t\tcache: false,
\t\t\t\tsuccess: function(json) {
\t\t\t\t\tresponse(\$.map(json, function(item) {
\t\t\t\t\t\treturn {
\t\t\t\t\t\t\tlabel: item['name'],
\t\t\t\t\t\t\tvalue: item['information_id'],
\t\t\t\t\t\t\tdescr: item['description'],
\t\t\t\t\t\t\thref: item['href'],
\t\t\t\t\t\t}
\t\t\t\t\t}));
\t\t\t\t}
\t\t\t});
\t\t},
\t\t'select': function(item) {
\t\t\tlet in_id = \$(this).attr('id').split('-');

\t\t\t\$('input[name=\\'advantage_link\\']').val('');

\t\t\t\$('#advantages_id-' + in_id[1]).val(item.value);

\t\t\t\$.each(item.descr, function(i, val) {
\t\t\t\t\$('#advantage-title-' + in_id[1] + i).val(val['title']);

\t\t\t\tif (Object.keys(item.href).length == 0) {
\t\t\t\t\t\$('#advantage-href-' + in_id[1] + i).val('/index.php?route=information/information&information_id='+ item.value);
\t\t\t\t}
\t\t\t});

\t\t\tif (Object.keys(item.href).length != 0) {
\t\t\t\t\$.each(item.href[";
        // line 4019
        echo ($context["store_id"] ?? null);
        echo "], function(i, val) {
\t\t\t\t\t\$('#advantage-href-' + in_id[1] + i).val('/'+ val);
\t\t\t\t});
\t\t\t}
\t\t}
\t});
}
</script>
<script>
let payment_row = ";
        // line 4028
        echo ($context["payment_row"] ?? null);
        echo ";

function addPayment(){
\tconst html = `
\t<div id=\"payments-row-\${ payment_row }\" class=\"col-sm-2 payments\">
\t\t<a href=\"javascript:;\" onclick=\"\$('#payments-row-\${ payment_row }').remove()\" data-toggle=\"tooltip\" title=\"";
        // line 4033
        echo ($context["button_remove"] ?? null);
        echo "\" class=\"btnr\"><i class=\"fa fa-minus-circle\"></i></a>
\t\t<label class=\"col-sm-12 control-label\" for=\"input-payments_customers_\${ payment_row }\">
\t\t\t<a href=\"\" id=\"thumb-image\${ payment_row }\" data-toggle=\"image\">
\t\t\t\t<img class=\"img-thumbnail\" src=\"";
        // line 4036
        echo ($context["placeholder"] ?? null);
        echo "\" data-placeholder=\"";
        echo ($context["placeholder"] ?? null);
        echo "\" />
\t\t\t</a>
\t\t\t<input type=\"hidden\" value=\"\" name=\"theme_oct_feelmart_data[payments][customers][\${ payment_row }][image]\" id=\"input-image\${ payment_row }\" />
\t\t</label>
\t\t<div class=\"col-sm-6\">
\t\t\t<div class=\"toggle-group\">
\t\t\t\t<input type=\"checkbox\" name=\"theme_oct_feelmart_data[payments][customers][\${ payment_row }][status]\" id=\"input-payments_customers_\${ payment_row }\" tabindex=\"1\">
\t\t\t\t<label for=\"input-payments_customers_\${ payment_row }\"></label>
\t\t\t\t<div class=\"onoffswitch pull-left\" aria-hidden=\"true\">
\t\t\t\t\t<div class=\"onoffswitch-label\">
\t\t\t\t\t\t<div class=\"onoffswitch-inner\"></div>
\t\t\t\t\t\t<div class=\"onoffswitch-switch\"></div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t`;

\t\$(\"#add_new_block\").before(html);

\tpayment_row++;
}
</script>
<script>
function fontIcons(icone_id, input_id) {
\t\$.ajax({
\t\turl: 'index.php?route=extension/theme/oct_feelmart/getIcons&user_token=";
        // line 4063
        echo ($context["user_token"] ?? null);
        echo "&icone_id=' + icone_id + '&input_id=' + input_id,
\t\ttype: 'get',
\t\tcache: false,
\t\tdataType: 'html',
\t\tsuccess: function(data) {
\t\t\tconst html = `
\t\t\t<div id=\"modal-icons\" class=\"modal\">
\t\t\t  <div class=\"modal-dialog\" style=\"width:55%;\">
\t\t\t    <div class=\"modal-content\">
\t\t\t      <div class=\"modal-header\">
\t\t\t        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>
\t\t\t        <h4 class=\"modal-title\">Font Awesome Icons</h4>
\t\t\t      </div>
\t\t\t      <div class=\"modal-body\">\${ data }</div>
\t\t\t    </div>
\t\t\t  </div>
\t\t\t</div>
\t\t\t`;

\t\t\t\$('body').append(html);

\t\t\t\$('#modal-icons').modal('show');
\t\t}
\t});
}
</script>
<script>
\tif ('";
        // line 4090
        echo ($context["success"] ?? null);
        echo "' == '";
        echo ($context["text_success"] ?? null);
        echo "'){
\t\tsetTimeout(function() {
\t\t\tif(confirm(\"";
        // line 4092
        echo ($context["auto_clear_cache"] ?? null);
        echo "\")){
\t\t\t\t\$('.fa.fa-trash-o').click();
\t\t\t}
\t\t}, 500);
\t}
</script>
";
        // line 4098
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "octemplates/theme/oct_feelmart.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  7592 => 4098,  7583 => 4092,  7576 => 4090,  7546 => 4063,  7514 => 4036,  7508 => 4033,  7500 => 4028,  7488 => 4019,  7454 => 3988,  7439 => 3976,  7421 => 3961,  7417 => 3959,  7408 => 3956,  7399 => 3954,  7395 => 3952,  7391 => 3951,  7386 => 3948,  7375 => 3945,  7366 => 3943,  7362 => 3941,  7358 => 3940,  7354 => 3938,  7343 => 3935,  7334 => 3933,  7330 => 3931,  7326 => 3930,  7320 => 3927,  7301 => 3911,  7289 => 3902,  7257 => 3873,  7242 => 3861,  7237 => 3858,  7226 => 3855,  7217 => 3853,  7213 => 3851,  7209 => 3850,  7205 => 3848,  7194 => 3845,  7185 => 3843,  7181 => 3841,  7177 => 3840,  7171 => 3837,  7161 => 3830,  7149 => 3821,  7117 => 3792,  7102 => 3780,  7097 => 3777,  7086 => 3774,  7077 => 3772,  7073 => 3770,  7069 => 3769,  7065 => 3767,  7054 => 3764,  7045 => 3762,  7041 => 3760,  7037 => 3759,  7031 => 3756,  7021 => 3749,  7009 => 3740,  6977 => 3711,  6962 => 3699,  6957 => 3696,  6946 => 3693,  6937 => 3691,  6933 => 3689,  6929 => 3688,  6925 => 3686,  6914 => 3683,  6905 => 3681,  6901 => 3679,  6897 => 3678,  6891 => 3675,  6881 => 3668,  6867 => 3657,  6861 => 3654,  6854 => 3650,  6840 => 3639,  6751 => 3553,  6738 => 3543,  6713 => 3521,  6701 => 3512,  6676 => 3490,  6664 => 3481,  6639 => 3459,  6627 => 3450,  6599 => 3425,  6586 => 3415,  6580 => 3412,  6575 => 3410,  6561 => 3399,  6556 => 3397,  6551 => 3395,  6543 => 3390,  6538 => 3388,  6533 => 3386,  6525 => 3381,  6520 => 3379,  6515 => 3377,  6507 => 3372,  6502 => 3370,  6497 => 3368,  6489 => 3363,  6484 => 3361,  6479 => 3359,  6471 => 3354,  6466 => 3352,  6461 => 3350,  6456 => 3348,  6450 => 3344,  6439 => 3341,  6430 => 3339,  6426 => 3337,  6422 => 3336,  6417 => 3334,  6400 => 3322,  6394 => 3319,  6386 => 3314,  6369 => 3300,  6366 => 3299,  6355 => 3296,  6346 => 3294,  6342 => 3292,  6338 => 3291,  6333 => 3289,  6316 => 3277,  6310 => 3274,  6302 => 3269,  6299 => 3268,  6288 => 3265,  6279 => 3263,  6275 => 3261,  6271 => 3260,  6266 => 3258,  6249 => 3246,  6243 => 3243,  6233 => 3236,  6230 => 3235,  6219 => 3232,  6210 => 3230,  6206 => 3228,  6202 => 3227,  6197 => 3225,  6179 => 3212,  6173 => 3209,  6154 => 3195,  6148 => 3192,  6139 => 3186,  6136 => 3185,  6125 => 3182,  6116 => 3180,  6112 => 3178,  6108 => 3177,  6103 => 3175,  6085 => 3162,  6077 => 3159,  6058 => 3145,  6052 => 3142,  6041 => 3134,  6038 => 3133,  6027 => 3130,  6018 => 3128,  6014 => 3126,  6010 => 3125,  6005 => 3123,  5987 => 3110,  5981 => 3107,  5962 => 3093,  5956 => 3090,  5947 => 3084,  5944 => 3083,  5933 => 3080,  5924 => 3078,  5920 => 3076,  5916 => 3075,  5911 => 3073,  5893 => 3060,  5885 => 3057,  5866 => 3043,  5860 => 3040,  5850 => 3033,  5846 => 3032,  5842 => 3031,  5824 => 3018,  5818 => 3015,  5806 => 3006,  5800 => 3002,  5789 => 2993,  5783 => 2990,  5780 => 2989,  5777 => 2988,  5765 => 2984,  5760 => 2982,  5757 => 2981,  5752 => 2980,  5750 => 2979,  5743 => 2975,  5739 => 2974,  5731 => 2969,  5722 => 2962,  5716 => 2959,  5713 => 2958,  5710 => 2957,  5698 => 2953,  5693 => 2951,  5690 => 2950,  5685 => 2949,  5683 => 2948,  5676 => 2944,  5672 => 2943,  5664 => 2938,  5655 => 2931,  5649 => 2928,  5646 => 2927,  5643 => 2926,  5631 => 2922,  5626 => 2920,  5623 => 2919,  5618 => 2918,  5616 => 2917,  5609 => 2913,  5605 => 2912,  5597 => 2907,  5588 => 2900,  5582 => 2897,  5579 => 2896,  5576 => 2895,  5564 => 2891,  5559 => 2889,  5556 => 2888,  5551 => 2887,  5549 => 2886,  5542 => 2882,  5538 => 2881,  5530 => 2876,  5520 => 2869,  5516 => 2868,  5512 => 2867,  5508 => 2866,  5503 => 2863,  5501 => 2862,  5488 => 2854,  5483 => 2852,  5474 => 2848,  5469 => 2846,  5452 => 2834,  5446 => 2831,  5429 => 2819,  5423 => 2816,  5406 => 2804,  5400 => 2801,  5383 => 2789,  5377 => 2786,  5372 => 2784,  5352 => 2769,  5346 => 2766,  5329 => 2754,  5323 => 2751,  5318 => 2749,  5298 => 2734,  5292 => 2731,  5275 => 2719,  5269 => 2716,  5252 => 2704,  5246 => 2701,  5229 => 2689,  5223 => 2686,  5206 => 2674,  5200 => 2671,  5183 => 2659,  5177 => 2656,  5160 => 2644,  5154 => 2641,  5137 => 2629,  5131 => 2626,  5126 => 2624,  5105 => 2608,  5099 => 2605,  5080 => 2591,  5074 => 2588,  5057 => 2576,  5051 => 2573,  5033 => 2560,  5027 => 2557,  5022 => 2555,  5012 => 2548,  5008 => 2547,  5004 => 2546,  5000 => 2545,  4991 => 2538,  4984 => 2534,  4980 => 2532,  4978 => 2531,  4968 => 2526,  4957 => 2520,  4949 => 2515,  4944 => 2512,  4937 => 2508,  4933 => 2506,  4931 => 2505,  4921 => 2500,  4910 => 2494,  4902 => 2489,  4897 => 2486,  4890 => 2482,  4886 => 2480,  4884 => 2479,  4874 => 2474,  4863 => 2468,  4855 => 2463,  4850 => 2460,  4843 => 2456,  4839 => 2454,  4837 => 2453,  4827 => 2448,  4816 => 2442,  4808 => 2437,  4803 => 2434,  4796 => 2430,  4792 => 2428,  4790 => 2427,  4780 => 2422,  4769 => 2416,  4761 => 2411,  4756 => 2408,  4749 => 2404,  4745 => 2402,  4743 => 2401,  4733 => 2396,  4722 => 2390,  4714 => 2385,  4709 => 2382,  4702 => 2378,  4698 => 2376,  4696 => 2375,  4686 => 2370,  4675 => 2364,  4667 => 2359,  4662 => 2356,  4655 => 2352,  4651 => 2350,  4649 => 2349,  4639 => 2344,  4628 => 2338,  4620 => 2333,  4615 => 2330,  4608 => 2326,  4604 => 2324,  4602 => 2323,  4592 => 2318,  4586 => 2317,  4575 => 2311,  4569 => 2310,  4561 => 2305,  4556 => 2302,  4549 => 2298,  4545 => 2296,  4543 => 2295,  4533 => 2290,  4522 => 2284,  4514 => 2279,  4509 => 2276,  4502 => 2272,  4498 => 2270,  4496 => 2269,  4486 => 2264,  4475 => 2258,  4467 => 2253,  4462 => 2250,  4455 => 2246,  4451 => 2244,  4449 => 2243,  4439 => 2238,  4428 => 2232,  4420 => 2227,  4415 => 2225,  4402 => 2215,  4397 => 2213,  4390 => 2209,  4385 => 2207,  4380 => 2205,  4359 => 2189,  4353 => 2186,  4336 => 2174,  4330 => 2171,  4311 => 2157,  4305 => 2154,  4288 => 2142,  4282 => 2139,  4263 => 2125,  4257 => 2122,  4240 => 2110,  4234 => 2107,  4215 => 2093,  4209 => 2090,  4190 => 2076,  4184 => 2073,  4167 => 2061,  4161 => 2058,  4142 => 2044,  4136 => 2041,  4119 => 2029,  4113 => 2026,  4107 => 2023,  4094 => 2013,  4088 => 2009,  4082 => 2008,  4080 => 2007,  4072 => 2004,  4067 => 2001,  4051 => 1998,  4042 => 1996,  4038 => 1994,  4034 => 1993,  4030 => 1991,  4014 => 1988,  4005 => 1986,  4001 => 1984,  3997 => 1983,  3989 => 1980,  3982 => 1977,  3977 => 1976,  3975 => 1975,  3958 => 1963,  3945 => 1957,  3937 => 1956,  3931 => 1953,  3920 => 1947,  3915 => 1945,  3906 => 1941,  3901 => 1939,  3895 => 1936,  3882 => 1926,  3876 => 1922,  3870 => 1921,  3868 => 1920,  3860 => 1917,  3846 => 1906,  3836 => 1905,  3828 => 1902,  3824 => 1900,  3811 => 1897,  3802 => 1895,  3798 => 1893,  3794 => 1892,  3789 => 1889,  3773 => 1886,  3764 => 1884,  3760 => 1882,  3756 => 1881,  3752 => 1879,  3736 => 1876,  3727 => 1874,  3723 => 1872,  3719 => 1871,  3711 => 1868,  3698 => 1862,  3690 => 1861,  3680 => 1860,  3672 => 1856,  3667 => 1855,  3665 => 1854,  3647 => 1841,  3631 => 1830,  3625 => 1827,  3620 => 1825,  3612 => 1822,  3607 => 1820,  3601 => 1816,  3583 => 1812,  3573 => 1809,  3567 => 1807,  3563 => 1806,  3559 => 1804,  3542 => 1802,  3538 => 1801,  3532 => 1798,  3526 => 1797,  3509 => 1785,  3503 => 1782,  3484 => 1768,  3476 => 1765,  3459 => 1753,  3453 => 1750,  3434 => 1736,  3428 => 1733,  3422 => 1730,  3413 => 1723,  3398 => 1720,  3393 => 1719,  3389 => 1718,  3385 => 1716,  3368 => 1714,  3364 => 1713,  3358 => 1710,  3341 => 1698,  3335 => 1695,  3330 => 1693,  3318 => 1686,  3313 => 1684,  3303 => 1679,  3298 => 1677,  3289 => 1673,  3284 => 1671,  3278 => 1668,  3260 => 1655,  3254 => 1652,  3249 => 1650,  3230 => 1636,  3224 => 1633,  3207 => 1621,  3201 => 1618,  3182 => 1604,  3176 => 1601,  3159 => 1589,  3153 => 1586,  3139 => 1579,  3131 => 1578,  3125 => 1575,  3108 => 1563,  3102 => 1560,  3096 => 1557,  3085 => 1551,  3075 => 1546,  3069 => 1543,  3061 => 1540,  3051 => 1535,  3045 => 1532,  3037 => 1529,  3027 => 1524,  3021 => 1521,  3013 => 1518,  3003 => 1513,  2997 => 1510,  2989 => 1507,  2979 => 1502,  2973 => 1499,  2965 => 1496,  2955 => 1491,  2949 => 1488,  2941 => 1485,  2931 => 1480,  2925 => 1477,  2917 => 1474,  2907 => 1469,  2901 => 1466,  2893 => 1463,  2883 => 1458,  2877 => 1455,  2869 => 1452,  2859 => 1447,  2853 => 1444,  2845 => 1441,  2835 => 1436,  2829 => 1433,  2821 => 1430,  2811 => 1425,  2805 => 1422,  2797 => 1419,  2787 => 1414,  2781 => 1411,  2773 => 1408,  2763 => 1403,  2757 => 1400,  2749 => 1397,  2739 => 1392,  2733 => 1389,  2725 => 1386,  2715 => 1381,  2709 => 1378,  2701 => 1375,  2692 => 1369,  2688 => 1368,  2684 => 1367,  2675 => 1361,  2657 => 1348,  2651 => 1345,  2634 => 1333,  2628 => 1330,  2617 => 1324,  2612 => 1322,  2595 => 1310,  2589 => 1307,  2570 => 1293,  2564 => 1290,  2547 => 1278,  2541 => 1275,  2535 => 1272,  2521 => 1261,  2515 => 1257,  2509 => 1256,  2507 => 1255,  2500 => 1253,  2491 => 1251,  2480 => 1247,  2471 => 1245,  2461 => 1244,  2453 => 1240,  2448 => 1239,  2446 => 1238,  2439 => 1234,  2428 => 1226,  2423 => 1224,  2416 => 1220,  2411 => 1218,  2402 => 1212,  2397 => 1210,  2390 => 1206,  2385 => 1204,  2376 => 1198,  2371 => 1196,  2364 => 1192,  2359 => 1190,  2351 => 1185,  2346 => 1183,  2340 => 1179,  2329 => 1176,  2324 => 1175,  2320 => 1174,  2316 => 1172,  2299 => 1170,  2295 => 1169,  2289 => 1166,  2282 => 1162,  2277 => 1160,  2271 => 1156,  2260 => 1153,  2255 => 1152,  2251 => 1151,  2247 => 1149,  2230 => 1147,  2226 => 1146,  2220 => 1143,  2215 => 1141,  2207 => 1136,  2203 => 1135,  2190 => 1125,  2186 => 1123,  2180 => 1122,  2178 => 1121,  2165 => 1111,  2155 => 1110,  2146 => 1106,  2142 => 1105,  2138 => 1104,  2134 => 1103,  2129 => 1102,  2124 => 1101,  2122 => 1100,  2106 => 1089,  2084 => 1072,  2062 => 1055,  2040 => 1038,  2018 => 1021,  1996 => 1004,  1974 => 987,  1952 => 970,  1930 => 953,  1908 => 936,  1886 => 919,  1864 => 902,  1842 => 885,  1831 => 877,  1818 => 869,  1813 => 867,  1804 => 863,  1799 => 861,  1788 => 855,  1783 => 853,  1774 => 849,  1769 => 847,  1763 => 844,  1756 => 839,  1747 => 836,  1740 => 835,  1736 => 834,  1731 => 832,  1724 => 830,  1706 => 817,  1700 => 814,  1683 => 802,  1677 => 799,  1658 => 785,  1652 => 782,  1635 => 770,  1629 => 767,  1610 => 753,  1604 => 750,  1587 => 738,  1581 => 735,  1568 => 725,  1562 => 721,  1556 => 720,  1554 => 719,  1546 => 716,  1541 => 713,  1525 => 710,  1516 => 708,  1512 => 706,  1508 => 705,  1504 => 703,  1488 => 700,  1479 => 698,  1475 => 696,  1471 => 695,  1463 => 692,  1456 => 689,  1451 => 688,  1449 => 687,  1432 => 675,  1414 => 662,  1408 => 659,  1391 => 647,  1385 => 644,  1379 => 641,  1371 => 636,  1367 => 635,  1354 => 627,  1349 => 625,  1340 => 621,  1335 => 619,  1324 => 613,  1319 => 611,  1310 => 607,  1305 => 605,  1294 => 599,  1289 => 597,  1280 => 593,  1275 => 591,  1269 => 588,  1258 => 582,  1253 => 580,  1244 => 576,  1239 => 574,  1224 => 568,  1219 => 566,  1210 => 562,  1205 => 560,  1192 => 550,  1186 => 546,  1180 => 545,  1178 => 544,  1170 => 541,  1165 => 538,  1149 => 535,  1140 => 533,  1136 => 531,  1132 => 530,  1128 => 528,  1112 => 525,  1103 => 523,  1099 => 521,  1095 => 520,  1087 => 517,  1080 => 514,  1075 => 513,  1073 => 512,  1056 => 500,  1038 => 487,  1032 => 484,  1026 => 481,  1014 => 474,  1009 => 472,  999 => 467,  994 => 465,  985 => 461,  980 => 459,  974 => 456,  957 => 448,  952 => 446,  941 => 440,  936 => 438,  927 => 434,  922 => 432,  916 => 429,  909 => 424,  902 => 420,  898 => 418,  896 => 417,  890 => 416,  883 => 414,  878 => 411,  871 => 407,  867 => 405,  865 => 404,  859 => 403,  852 => 401,  846 => 398,  837 => 392,  830 => 390,  824 => 387,  807 => 375,  801 => 372,  782 => 358,  776 => 355,  759 => 343,  753 => 340,  747 => 337,  728 => 323,  722 => 320,  703 => 306,  697 => 303,  680 => 291,  674 => 288,  655 => 274,  649 => 271,  632 => 259,  626 => 256,  607 => 242,  601 => 239,  584 => 227,  578 => 224,  559 => 210,  553 => 207,  536 => 195,  530 => 192,  524 => 188,  517 => 184,  513 => 182,  511 => 181,  507 => 180,  502 => 178,  485 => 166,  479 => 163,  474 => 161,  470 => 160,  462 => 154,  444 => 150,  433 => 146,  429 => 145,  422 => 142,  418 => 141,  413 => 138,  396 => 136,  392 => 135,  384 => 130,  379 => 128,  373 => 124,  355 => 120,  344 => 116,  340 => 115,  333 => 112,  329 => 111,  324 => 108,  307 => 106,  303 => 105,  295 => 100,  290 => 98,  272 => 85,  266 => 82,  261 => 80,  251 => 73,  247 => 72,  243 => 71,  239 => 70,  235 => 69,  231 => 68,  227 => 67,  223 => 66,  219 => 65,  215 => 64,  211 => 63,  202 => 57,  198 => 56,  194 => 55,  190 => 54,  186 => 53,  182 => 52,  177 => 50,  171 => 47,  167 => 46,  163 => 44,  157 => 41,  154 => 40,  151 => 39,  145 => 36,  142 => 35,  140 => 34,  134 => 30,  123 => 28,  119 => 27,  114 => 25,  106 => 23,  103 => 22,  98 => 19,  87 => 17,  83 => 16,  78 => 14,  75 => 13,  73 => 12,  67 => 11,  63 => 10,  56 => 9,  48 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "octemplates/theme/oct_feelmart.twig", "");
    }
}
