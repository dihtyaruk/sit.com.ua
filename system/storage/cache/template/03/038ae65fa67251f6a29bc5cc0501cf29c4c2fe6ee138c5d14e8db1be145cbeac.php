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

/* oct_feelmart/template/information/contact.twig */
class __TwigTemplate_2ec168169edeaf46533f44ff065b355093a9649dee2423283ac79c3d6a13269e extends \Twig\Template
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
<div id=\"information-contact\" class=\"container\">
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
\t<div id=\"content\" class=\"row no-gutters\">
\t\t";
        // line 11
        echo ($context["column_left"] ?? null);
        echo "
\t\t";
        // line 12
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 13
            echo "\t    ";
            $context["class"] = "col-lg-6";
            // line 14
            echo "\t    ";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 15
            echo "\t    ";
            $context["class"] = "col-lg-9";
            // line 16
            echo "\t    ";
        } else {
            // line 17
            echo "\t    ";
            $context["class"] = "col-lg-12";
            // line 18
            echo "\t    ";
        }
        // line 19
        echo "\t    <div class=\"";
        echo ($context["class"] ?? null);
        echo "\">
\t\t    <div class=\"fm-content\">
\t\t\t    <div class=\"fm-content-contact d-flex\">
\t\t\t    \t<div class=\"fm-contact-form-box\">
\t\t\t    \t\t<form action=\"";
        // line 23
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\">
\t\t\t\t          <div class=\"form-group\">
\t\t\t\t            <label for=\"input-name\"><span class=\"required\">*</span>";
        // line 25
        echo ($context["entry_name"] ?? null);
        echo "</label>
\t\t\t\t            ";
        // line 26
        if ((((($context["error_name"] ?? null) || ($context["error_email"] ?? null)) || ($context["error_enquiry"] ?? null)) || ($context["error_oct_terms"] ?? null))) {
            // line 27
            echo "\t\t\t\t            <script>
\t\t\t\t            \t\tfmNotify('danger', '";
            // line 28
            if (($context["error_name"] ?? null)) {
                echo ($context["error_name"] ?? null);
            }
            if (($context["error_email"] ?? null)) {
                echo "<br />";
                echo ($context["error_email"] ?? null);
            }
            if (($context["error_enquiry"] ?? null)) {
                echo "<br />";
                echo ($context["error_enquiry"] ?? null);
            }
            if (($context["error_oct_terms"] ?? null)) {
                echo "<br />";
                echo ($context["error_oct_terms"] ?? null);
            }
            echo "');
\t\t\t\t            </script>
\t\t\t\t            ";
        }
        // line 31
        echo "\t\t\t\t            <input type=\"text\" name=\"name\" value=\"";
        echo ($context["name"] ?? null);
        echo "\" id=\"input-name\" class=\"form-control";
        if (($context["error_name"] ?? null)) {
            echo " error_style";
        }
        echo "\" placeholder=\"";
        echo ($context["entry_name"] ?? null);
        echo "\" />
\t\t\t\t          </div>
\t\t\t\t          <div class=\"form-group\">
\t\t\t\t            <label for=\"input-email\"><span class=\"required\">*</span>";
        // line 34
        echo ($context["entry_email"] ?? null);
        echo "</label>
\t\t\t\t            <input type=\"email\" name=\"email\" value=\"";
        // line 35
        echo ($context["email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control";
        if (($context["error_email"] ?? null)) {
            echo " error_style";
        }
        echo "\" placeholder=\"";
        echo ($context["entry_email"] ?? null);
        echo "\" />
\t\t\t\t          </div>
\t\t\t\t          <div class=\"form-group\">
\t\t\t\t            <label for=\"input-enquiry\"><span class=\"required\">*</span>";
        // line 38
        echo ($context["entry_enquiry"] ?? null);
        echo "</label>
\t\t\t\t            <textarea name=\"enquiry\" rows=\"10\" id=\"input-enquiry\" class=\"form-control";
        // line 39
        if (($context["error_enquiry"] ?? null)) {
            echo " error_style";
        }
        echo "\" placeholder=\"";
        echo ($context["entry_enquiry"] ?? null);
        echo "\">";
        echo ($context["enquiry"] ?? null);
        echo "</textarea>
\t\t\t\t          </div>
\t\t\t\t          ";
        // line 41
        echo ($context["captcha"] ?? null);
        echo "
\t\t\t\t\t\t  ";
        // line 42
        if (($context["text_terms"] ?? null)) {
            // line 43
            echo "\t\t\t\t\t\t  <div class=\"form-checkbox-group\">
\t\t\t\t\t\t\t<div class=\"checkbox\">
\t\t\t\t\t\t\t\t<label>
\t\t\t\t\t\t\t\t\t<input id=\"scales\" type=\"checkbox\" class=\"fm-form-checkbox-input";
            // line 46
            if (($context["error_oct_terms"] ?? null)) {
                echo " error_style";
            }
            echo "\" name=\"scales\"";
            if ((array_key_exists("scales_in", $context) && ($context["scales_in"] ?? null))) {
                echo " checked";
            }
            echo ">
\t\t\t\t\t\t\t\t\t<span class=\"check-box\"></span>
\t\t\t\t\t\t\t\t\t";
            // line 48
            echo ($context["text_terms"] ?? null);
            echo "
\t\t\t\t\t\t\t\t</label>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t  </div>
\t\t\t\t\t\t  ";
        }
        // line 53
        echo "\t\t\t\t          <div class=\"btn-group\">
\t\t\t\t\t        <input class=\"fm-btn fm-btn-blue\" type=\"submit\" value=\"";
        // line 54
        echo ($context["button_submit"] ?? null);
        echo "\" />
\t\t\t\t          </div>
\t\t\t\t\t    </form>
\t\t\t\t\t\t<script>
\t\t\t\t\t\t\$(\"#input-name, #input-email, #input-enquiry, #scales\").on(\"change paste keyup\", function() {
\t\t\t\t\t\t\t\$(this).removeClass('error_style');
\t\t\t\t\t\t});
\t\t\t\t\t\t</script>
\t\t\t    \t</div>
\t\t\t    \t";
        // line 63
        if (array_key_exists("contact_html", $context)) {
            // line 64
            echo "\t\t\t    \t<div class=\"fm-content-border\">&nbsp;</div>
\t\t\t    \t<div class=\"fm-content-contact-offer\">
\t\t\t    \t\t";
            // line 66
            echo ($context["contact_html"] ?? null);
            echo "
\t\t\t\t\t</div>
\t\t\t\t\t";
        }
        // line 69
        echo "\t\t\t    </div>
\t\t\t    ";
        // line 70
        if (array_key_exists("contact_map", $context)) {
            // line 71
            echo "\t\t\t    <div class=\"row row-padding-top\">
\t\t\t\t\t<div class=\"col-12\">
\t\t\t\t\t\t<div class=\"fm-map-content\">
\t\t\t\t\t\t\t";
            // line 74
            echo ($context["contact_map"] ?? null);
            echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t";
        }
        // line 79
        echo "\t\t    </div>
\t    </div>
\t    ";
        // line 81
        echo ($context["column_right"] ?? null);
        echo "
\t</div>
\t";
        // line 83
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
";
        // line 85
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/information/contact.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  258 => 85,  253 => 83,  248 => 81,  244 => 79,  236 => 74,  231 => 71,  229 => 70,  226 => 69,  220 => 66,  216 => 64,  214 => 63,  202 => 54,  199 => 53,  191 => 48,  180 => 46,  175 => 43,  173 => 42,  169 => 41,  158 => 39,  154 => 38,  142 => 35,  138 => 34,  125 => 31,  105 => 28,  102 => 27,  100 => 26,  96 => 25,  91 => 23,  83 => 19,  80 => 18,  77 => 17,  74 => 16,  71 => 15,  68 => 14,  65 => 13,  63 => 12,  59 => 11,  54 => 9,  48 => 6,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/information/contact.twig", "");
    }
}
