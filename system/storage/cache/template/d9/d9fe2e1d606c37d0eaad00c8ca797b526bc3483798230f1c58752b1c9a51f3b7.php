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

/* oct_feelmart/template/account/return_form.twig */
class __TwigTemplate_4018570da5be45678089f4364b382f17e3caee4a3ce9465b6b6e24d32d288216 extends \Twig\Template
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
<div id=\"account-return\" class=\"container\">
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
\t\t        <fieldset>
\t\t          <legend class=\"fm-content-title fm-content-acc-title\">";
        // line 29
        echo ($context["text_order"] ?? null);
        echo "</legend>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-firstname\"><span class=\"required\">*</span> ";
        // line 31
        echo ($context["entry_firstname"] ?? null);
        echo "</label>
\t\t            ";
        // line 32
        if (($context["error_firstname"] ?? null)) {
            // line 33
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 34
            echo ($context["error_firstname"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 37
        echo "\t\t            <input type=\"text\" name=\"firstname\" value=\"";
        echo ($context["firstname"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_firstname"] ?? null);
        echo "\" id=\"input-firstname\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-lastname\"><span class=\"required\">*</span> ";
        // line 40
        echo ($context["entry_lastname"] ?? null);
        echo "</label>
\t\t            ";
        // line 41
        if (($context["error_lastname"] ?? null)) {
            // line 42
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 43
            echo ($context["error_lastname"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 46
        echo "\t\t            <input type=\"text\" name=\"lastname\" value=\"";
        echo ($context["lastname"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_lastname"] ?? null);
        echo "\" id=\"input-lastname\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-email\"><span class=\"required\">*</span> ";
        // line 49
        echo ($context["entry_email"] ?? null);
        echo "</label>
\t\t            ";
        // line 50
        if (($context["error_email"] ?? null)) {
            // line 51
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 52
            echo ($context["error_email"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 55
        echo "\t\t            <input type=\"text\" name=\"email\" value=\"";
        echo ($context["email"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-telephone\"><span class=\"required\">*</span> ";
        // line 58
        echo ($context["entry_telephone"] ?? null);
        echo "</label>
\t\t            ";
        // line 59
        if (($context["error_telephone"] ?? null)) {
            // line 60
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 61
            echo ($context["error_telephone"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 64
        echo "\t\t            <input type=\"text\" name=\"telephone\" value=\"";
        echo ($context["telephone"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_telephone"] ?? null);
        echo "\" id=\"input-telephone\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-order-id\"><span class=\"required\">*</span> ";
        // line 67
        echo ($context["entry_order_id"] ?? null);
        echo "</label>
\t\t            ";
        // line 68
        if (($context["error_order_id"] ?? null)) {
            // line 69
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 70
            echo ($context["error_order_id"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 73
        echo "\t\t            <input type=\"text\" name=\"order_id\" value=\"";
        echo ($context["order_id"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_order_id"] ?? null);
        echo "\" id=\"input-order-id\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-date-ordered\">";
        // line 76
        echo ($context["entry_date_ordered"] ?? null);
        echo "</label>
\t                <input type=\"text\" name=\"date_ordered\" value=\"";
        // line 77
        echo ($context["date_ordered"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_date_ordered"] ?? null);
        echo "\" id=\"input-date-ordered\" class=\"form-control datetime\" />
\t\t          </div>
\t\t        </fieldset>
\t\t        <fieldset>
\t\t          <legend class=\"fm-content-title fm-content-acc-title\">";
        // line 81
        echo ($context["text_product"] ?? null);
        echo "</legend>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-product\"><span class=\"required\">*</span> ";
        // line 83
        echo ($context["entry_product"] ?? null);
        echo "</label>
\t\t            ";
        // line 84
        if (($context["error_product"] ?? null)) {
            // line 85
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 86
            echo ($context["error_product"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 89
        echo "\t\t            <input type=\"text\" name=\"product\" value=\"";
        echo ($context["product"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_product"] ?? null);
        echo "\" id=\"input-product\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-model\"><span class=\"required\">*</span> ";
        // line 92
        echo ($context["entry_model"] ?? null);
        echo "</label>
\t\t            ";
        // line 93
        if (($context["error_model"] ?? null)) {
            // line 94
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 95
            echo ($context["error_model"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 98
        echo "\t\t            <input type=\"text\" name=\"model\" value=\"";
        echo ($context["model"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_model"] ?? null);
        echo "\" id=\"input-model\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-quantity\">";
        // line 101
        echo ($context["entry_quantity"] ?? null);
        echo "</label>
\t\t            <input type=\"text\" name=\"quantity\" value=\"";
        // line 102
        echo ($context["quantity"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_quantity"] ?? null);
        echo "\" id=\"input-quantity\" class=\"form-control\" />
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\"><span class=\"required\">*</span> ";
        // line 105
        echo ($context["entry_reason"] ?? null);
        echo "</label>
\t\t            ";
        // line 106
        if (($context["error_reason"] ?? null)) {
            // line 107
            echo "\t\t            <script>
\t\t\t\t\tfmNotify('warning', '";
            // line 108
            echo ($context["error_reason"] ?? null);
            echo "');
\t\t\t\t\t</script>
\t\t            ";
        }
        // line 111
        echo "\t\t            ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["return_reasons"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["return_reason"]) {
            // line 112
            echo "\t\t              ";
            if ((twig_get_attribute($this->env, $this->source, $context["return_reason"], "return_reason_id", [], "any", false, false, false, 112) == ($context["return_reason_id"] ?? null))) {
                // line 113
                echo "\t\t              <div class=\"radio mt-2\">
\t\t                <label class=\"option\">
\t\t                  <input type=\"radio\" name=\"return_reason_id\" class=\"input-radio\" value=\"";
                // line 115
                echo twig_get_attribute($this->env, $this->source, $context["return_reason"], "return_reason_id", [], "any", false, false, false, 115);
                echo "\" checked=\"checked\" />
\t\t\t\t\t\t  <span class=\"radio-box\"></span>
\t\t                  ";
                // line 117
                echo twig_get_attribute($this->env, $this->source, $context["return_reason"], "name", [], "any", false, false, false, 117);
                echo "
\t\t                </label>
\t\t              </div>
\t\t              ";
            } else {
                // line 121
                echo "\t\t              <div class=\"radio mt-2\">
\t\t                <label class=\"option\">
\t\t                  <input type=\"radio\" name=\"return_reason_id\" class=\"input-radio\" value=\"";
                // line 123
                echo twig_get_attribute($this->env, $this->source, $context["return_reason"], "return_reason_id", [], "any", false, false, false, 123);
                echo "\" />
\t\t\t\t\t\t  <span class=\"radio-box\"></span>
\t\t                  ";
                // line 125
                echo twig_get_attribute($this->env, $this->source, $context["return_reason"], "name", [], "any", false, false, false, 125);
                echo "
\t\t                </label>
\t\t              </div>
\t\t              ";
            }
            // line 129
            echo "\t\t            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['return_reason'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 130
        echo "\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\"><span class=\"required\">*</span> ";
        // line 132
        echo ($context["entry_opened"] ?? null);
        echo "</label>
\t\t            <div class=\"d-flex\">
\t\t            \t<div class=\"radio\">
\t\t\t            \t<label class=\"option\">
\t\t\t\t            \t";
        // line 136
        if (($context["opened"] ?? null)) {
            // line 137
            echo "\t\t\t\t                <input type=\"radio\" id=\"CheckYes\" class=\"input-radio\" name=\"opened\" value=\"1\" checked=\"checked\" />
\t\t\t\t                ";
        } else {
            // line 139
            echo "\t\t\t\t                <input type=\"radio\" id=\"CheckYes\" class=\"input-radio\" name=\"opened\" value=\"1\" />
\t\t\t\t                ";
        }
        // line 141
        echo "\t\t\t\t            \t<span class=\"radio-box\"></span>
\t\t\t\t\t\t\t\t";
        // line 142
        echo ($context["text_yes"] ?? null);
        echo "
\t\t\t\t\t\t\t</label>
\t\t            \t</div>
\t\t            \t<div class=\"radio\">
\t\t\t\t\t\t\t<label class=\"option\">
\t\t\t\t              \t";
        // line 147
        if ( !($context["opened"] ?? null)) {
            // line 148
            echo "\t\t\t\t                <input type=\"radio\" id=\"CheckNo\" class=\"input-radio\" name=\"opened\" value=\"0\" checked=\"checked\" />
\t\t\t\t                ";
        } else {
            // line 150
            echo "\t\t\t\t                <input type=\"radio\" id=\"CheckNo\" class=\"input-radio\" name=\"opened\" value=\"0\" />
\t\t\t\t                ";
        }
        // line 152
        echo "\t\t\t\t            \t<span class=\"radio-box\"></span>
\t\t\t\t                ";
        // line 153
        echo ($context["text_no"] ?? null);
        echo "
\t\t\t                </label>
\t\t            \t</div>
\t\t            </div>
\t\t          </div>
\t\t          <div class=\"form-group\">
\t\t            <label class=\"fm-control-label\" for=\"input-comment\">";
        // line 159
        echo ($context["entry_fault_detail"] ?? null);
        echo "</label>
\t\t            <textarea name=\"comment\" rows=\"10\" placeholder=\"";
        // line 160
        echo ($context["entry_fault_detail"] ?? null);
        echo "\" id=\"input-comment\" class=\"form-control\">";
        echo ($context["comment"] ?? null);
        echo "</textarea>
\t\t          </div>
\t\t          ";
        // line 162
        echo ($context["captcha"] ?? null);
        echo "
\t\t        </fieldset>
\t\t        ";
        // line 164
        if (($context["text_agree"] ?? null)) {
            // line 165
            echo "\t\t        <div class=\"form-checkbox-group\">
\t\t        \t<label>
\t\t\t            ";
            // line 167
            if (($context["agree"] ?? null)) {
                // line 168
                echo "\t\t\t            <input type=\"checkbox\" id=\"scales\" class=\"fm-form-checkbox-input\" name=\"agree\" value=\"1\" checked=\"checked\" />
\t\t\t            ";
            } else {
                // line 170
                echo "\t\t\t            <input type=\"checkbox\" id=\"scales\" class=\"fm-form-checkbox-input\" name=\"agree\" value=\"1\" />
\t\t\t            ";
            }
            // line 172
            echo "\t                    <span class=\"check-box\"></span>
\t\t\t            ";
            // line 173
            echo ($context["text_agree"] ?? null);
            echo "
\t\t            </label>
\t\t        </div>
\t\t        ";
        }
        // line 177
        echo "\t\t        <div class=\"btn-group mt-4\">
\t\t          <input type=\"submit\" value=\"";
        // line 178
        echo ($context["button_continue"] ?? null);
        echo "\" class=\"fm-btn fm-btn-blue\" />
\t\t        </div>
\t\t      </form>
\t\t    </div>
\t    </div>
\t    ";
        // line 183
        echo ($context["column_right"] ?? null);
        echo "
\t</div>
\t";
        // line 185
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
<script src=\"catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js\"></script>
<script src=\"catalog/view/theme/oct_feelmart/js/bootstrap-datetimepicker.min.js\"></script>\t\t
<link href=\"catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css\" rel=\"stylesheet\" />
<script>
var nowDate = new Date();
var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);

\$('#input-date-ordered.datetime').datetimepicker({
\tpickDate: true,
\tpickTime: false,
\tlanguage: '";
        // line 197
        echo ($context["datepicker"] ?? null);
        echo "',
\ticons: {
\t\ttime: 'fa fa-clock',
\t\tdate: 'fa fa-calendar-alt',
\t\tup: 'fa fa-arrow-up',
\t\tdown: 'fa fa-arrow-down',
\t\tprevious: 'fa fa-chevron-left',
\t\tnext: 'fa fa-chevron-right',
\t\ttoday: 'fa fa-calendar-check',
\t\tclear: 'fa fa-trash-alt',
\t\tclose: 'fa fa-times'
\t}
});
</script>
";
        // line 211
        echo ($context["footer"] ?? null);
        echo " ";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/account/return_form.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  519 => 211,  502 => 197,  487 => 185,  482 => 183,  474 => 178,  471 => 177,  464 => 173,  461 => 172,  457 => 170,  453 => 168,  451 => 167,  447 => 165,  445 => 164,  440 => 162,  433 => 160,  429 => 159,  420 => 153,  417 => 152,  413 => 150,  409 => 148,  407 => 147,  399 => 142,  396 => 141,  392 => 139,  388 => 137,  386 => 136,  379 => 132,  375 => 130,  369 => 129,  362 => 125,  357 => 123,  353 => 121,  346 => 117,  341 => 115,  337 => 113,  334 => 112,  329 => 111,  323 => 108,  320 => 107,  318 => 106,  314 => 105,  306 => 102,  302 => 101,  293 => 98,  287 => 95,  284 => 94,  282 => 93,  278 => 92,  269 => 89,  263 => 86,  260 => 85,  258 => 84,  254 => 83,  249 => 81,  240 => 77,  236 => 76,  227 => 73,  221 => 70,  218 => 69,  216 => 68,  212 => 67,  203 => 64,  197 => 61,  194 => 60,  192 => 59,  188 => 58,  179 => 55,  173 => 52,  170 => 51,  168 => 50,  164 => 49,  155 => 46,  149 => 43,  146 => 42,  144 => 41,  140 => 40,  131 => 37,  125 => 34,  122 => 33,  120 => 32,  116 => 31,  111 => 29,  106 => 27,  102 => 26,  96 => 24,  93 => 23,  90 => 22,  87 => 21,  84 => 20,  81 => 19,  78 => 18,  76 => 17,  72 => 16,  69 => 15,  63 => 12,  60 => 11,  58 => 10,  54 => 9,  48 => 6,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/account/return_form.twig", "");
    }
}
