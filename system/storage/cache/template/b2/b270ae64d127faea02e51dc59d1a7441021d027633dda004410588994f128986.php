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

/* oct_feelmart/template/account/voucher.twig */
class __TwigTemplate_77ed6581b502758308b57d085c9d14fbe1900569a204251e230ec7660ee59d23 extends \Twig\Template
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
<div id=\"account-voucher\" class=\"container\">
\t";
        // line 3
        echo ($context["oct_breadcrumbs"] ?? null);
        echo "
\t<div class=\"row\">
\t\t<div class=\"col-lg-12\">
\t\t\t<h1 class=\"fm-main-title fm-page-title\">";
        // line 6
        echo ($context["heading_title"] ?? null);
        echo "</h1>
\t\t</div>
\t</div>
\t<div class=\"content-top-box\">";
        // line 9
        echo ($context["content_top"] ?? null);
        echo "</div>
\t";
        // line 10
        if (($context["error_warning"] ?? null)) {
            // line 11
            echo "\t<script>
\tfmNotify('warning', '";
            // line 12
            echo ($context["error_warning"] ?? null);
            echo "');
\t</script>
\t";
        }
        // line 15
        echo "\t<div id=\"content\" class=\"row no-gutters\">
\t\t";
        // line 16
        echo ($context["column_left"] ?? null);
        echo "
\t    ";
        // line 17
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 18
            echo "\t    ";
            $context["class"] = "col-lg-6";
            // line 19
            echo "\t    ";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 20
            echo "\t    ";
            $context["class"] = "col-lg-9";
            // line 21
            echo "\t    ";
        } else {
            // line 22
            echo "\t    ";
            $context["class"] = "col-lg-12";
            // line 23
            echo "\t    ";
        }
        // line 24
        echo "\t    <div class=\"";
        echo ($context["class"] ?? null);
        echo "\">
\t\t    <div class=\"fm-content fm-account-content h-100\">
\t\t      <div class=\"fm-acc-info-text\">";
        // line 26
        echo ($context["text_description"] ?? null);
        echo "</div>
\t\t      <form action=\"";
        // line 27
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\" class=\"form-horizontal\">
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\" for=\"input-to-name\"><span class=\"required\">*</span> ";
        // line 29
        echo ($context["entry_to_name"] ?? null);
        echo "</label>
\t\t          ";
        // line 30
        if (($context["error_to_name"] ?? null)) {
            // line 31
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 32
            echo ($context["error_to_name"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t          ";
        }
        // line 35
        echo "\t\t          <input type=\"text\" name=\"to_name\" value=\"";
        echo ($context["to_name"] ?? null);
        echo "\" id=\"input-to-name\" class=\"form-control\" />
\t\t        </div>
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\" for=\"input-to-email\"><span class=\"required\">*</span> ";
        // line 38
        echo ($context["entry_to_email"] ?? null);
        echo "</label>
\t\t          ";
        // line 39
        if (($context["error_to_email"] ?? null)) {
            // line 40
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 41
            echo ($context["error_to_email"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t          ";
        }
        // line 44
        echo "\t\t          <input type=\"text\" name=\"to_email\" value=\"";
        echo ($context["to_email"] ?? null);
        echo "\" id=\"input-to-email\" class=\"form-control\" />
\t\t        </div>
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\" for=\"input-from-name\"><span class=\"required\">*</span> ";
        // line 47
        echo ($context["entry_from_name"] ?? null);
        echo "</label>
\t\t          ";
        // line 48
        if (($context["error_from_name"] ?? null)) {
            // line 49
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 50
            echo ($context["error_from_name"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t          ";
        }
        // line 53
        echo "\t\t          <input type=\"text\" name=\"from_name\" value=\"";
        echo ($context["from_name"] ?? null);
        echo "\" id=\"input-from-name\" class=\"form-control\" />
\t\t        </div>
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\" for=\"input-from-email\"><span class=\"required\">*</span> ";
        // line 56
        echo ($context["entry_from_email"] ?? null);
        echo "</label>
\t\t          ";
        // line 57
        if (($context["error_from_email"] ?? null)) {
            // line 58
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 59
            echo ($context["error_from_email"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t          ";
        }
        // line 62
        echo "\t\t          <input type=\"text\" name=\"from_email\" value=\"";
        echo ($context["from_email"] ?? null);
        echo "\" id=\"input-from-email\" class=\"form-control\" />
\t\t        </div>
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\"><span class=\"required\">*</span> ";
        // line 65
        echo ($context["entry_theme"] ?? null);
        echo "</label>
\t\t          ";
        // line 66
        if (($context["error_theme"] ?? null)) {
            // line 67
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 68
            echo ($context["error_theme"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t          ";
        }
        // line 71
        echo "\t\t          ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["voucher_themes"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["voucher_theme"]) {
            // line 72
            echo "\t\t            ";
            if ((twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "voucher_theme_id", [], "any", false, false, false, 72) == ($context["voucher_theme_id"] ?? null))) {
                // line 73
                echo "\t\t            <div class=\"radio mt-2\">
\t\t            \t<label class=\"option\">
\t\t\t            \t<input type=\"radio\" id=\"voucher_theme_id";
                // line 75
                echo twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "voucher_theme_id", [], "any", false, false, false, 75);
                echo "\" class=\"input-radio\" name=\"voucher_theme_id\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "voucher_theme_id", [], "any", false, false, false, 75);
                echo "\" checked=\"checked\" />
\t\t\t            \t<span class=\"radio-box\"></span>
\t\t\t\t\t\t\t";
                // line 77
                echo twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "name", [], "any", false, false, false, 77);
                echo "
\t\t\t\t\t\t</label>
\t\t            </div>
\t\t            ";
            } else {
                // line 81
                echo "\t\t            <div class=\"radio mt-2\">
\t\t            \t<label class=\"option\">
\t\t\t            \t<input type=\"radio\" id=\"voucher_theme_id";
                // line 83
                echo twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "voucher_theme_id", [], "any", false, false, false, 83);
                echo "\" class=\"input-radio\" name=\"voucher_theme_id\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "voucher_theme_id", [], "any", false, false, false, 83);
                echo "\" />
\t\t\t            \t<span class=\"radio-box\"></span>
\t\t\t\t\t\t\t";
                // line 85
                echo twig_get_attribute($this->env, $this->source, $context["voucher_theme"], "name", [], "any", false, false, false, 85);
                echo "
\t\t\t\t\t\t</label>
\t\t            </div>
\t\t            ";
            }
            // line 89
            echo "\t\t          ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['voucher_theme'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 90
        echo "\t\t        </div>
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\" for=\"input-message\"><span data-toggle=\"tooltip\" title=\"";
        // line 92
        echo ($context["help_message"] ?? null);
        echo "\">";
        echo ($context["entry_message"] ?? null);
        echo "</span></label>
\t\t          <textarea name=\"message\" cols=\"40\" rows=\"5\" id=\"input-message\" class=\"form-control\">";
        // line 93
        echo ($context["message"] ?? null);
        echo "</textarea>
\t\t        </div>
\t\t        <div class=\"form-group\">
\t\t          <label class=\"fm-control-label\" for=\"input-amount\"><span data-toggle=\"tooltip\" title=\"";
        // line 96
        echo ($context["help_amount"] ?? null);
        echo "\">";
        echo ($context["entry_amount"] ?? null);
        echo "</span></label>
\t\t          ";
        // line 97
        if (($context["error_amount"] ?? null)) {
            // line 98
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 99
            echo ($context["error_amount"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t          ";
        }
        // line 102
        echo "\t\t          <input type=\"text\" name=\"amount\" value=\"";
        echo ($context["amount"] ?? null);
        echo "\" id=\"input-amount\" class=\"form-control\" size=\"5\" />
\t\t        </div>
\t\t        ";
        // line 104
        if (($context["text_agree"] ?? null)) {
            // line 105
            echo "\t\t        <div class=\"form-checkbox-group\">
\t\t        \t<div class=\"checkbox\">
\t\t\t        \t<label>
\t\t\t\t            ";
            // line 108
            if (($context["agree"] ?? null)) {
                // line 109
                echo "\t\t\t\t            <input type=\"checkbox\" id=\"scales\" class=\"fm-form-checkbox-input\" name=\"agree\" value=\"1\" checked=\"checked\" />
\t\t\t\t            ";
            } else {
                // line 111
                echo "\t\t\t\t            <input type=\"checkbox\" id=\"scales\" class=\"fm-form-checkbox-input\" name=\"agree\" value=\"1\" />
\t\t\t\t            ";
            }
            // line 113
            echo "\t\t\t\t            <span class=\"check-box\"></span>
\t\t\t\t            ";
            // line 114
            echo ($context["text_agree"] ?? null);
            echo "
\t\t\t            </label>
\t\t        \t</div>
\t\t        </div>
\t\t        ";
        }
        // line 119
        echo "\t\t        <div class=\"btn-group mt-4\">
\t\t          <input type=\"submit\" value=\"";
        // line 120
        echo ($context["button_continue"] ?? null);
        echo "\" class=\"fm-btn fm-btn-blue\" />
\t\t        </div>
\t\t      </form>
\t\t    </div>
\t    </div>
\t    ";
        // line 125
        echo ($context["column_right"] ?? null);
        echo "
\t</div>
\t";
        // line 127
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
";
        // line 129
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/account/voucher.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  352 => 129,  347 => 127,  342 => 125,  334 => 120,  331 => 119,  323 => 114,  320 => 113,  316 => 111,  312 => 109,  310 => 108,  305 => 105,  303 => 104,  297 => 102,  291 => 99,  288 => 98,  286 => 97,  280 => 96,  274 => 93,  268 => 92,  264 => 90,  258 => 89,  251 => 85,  244 => 83,  240 => 81,  233 => 77,  226 => 75,  222 => 73,  219 => 72,  214 => 71,  208 => 68,  205 => 67,  203 => 66,  199 => 65,  192 => 62,  186 => 59,  183 => 58,  181 => 57,  177 => 56,  170 => 53,  164 => 50,  161 => 49,  159 => 48,  155 => 47,  148 => 44,  142 => 41,  139 => 40,  137 => 39,  133 => 38,  126 => 35,  120 => 32,  117 => 31,  115 => 30,  111 => 29,  106 => 27,  102 => 26,  96 => 24,  93 => 23,  90 => 22,  87 => 21,  84 => 20,  81 => 19,  78 => 18,  76 => 17,  72 => 16,  69 => 15,  63 => 12,  60 => 11,  58 => 10,  54 => 9,  48 => 6,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/account/voucher.twig", "");
    }
}
