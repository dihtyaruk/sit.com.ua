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

/* oct_feelmart/template/octemplates/module/oct_static_subscribe.twig */
class __TwigTemplate_a52a820c2a4f21133066e799e9d1ad4064bf1eb45632f9eb0e6d2c68c301c7f3 extends \Twig\Template
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
        echo "<div class=\"fm-footer-subscribe\">
\t<div class=\"container\">
\t    <div class=\"row align-items-center\">
\t\t    <div class=\"col-lg-7\">
\t\t        <div class=\"fm-footer-subscribe-info\">
\t\t          <div class=\"fm-footer-subscribe-title\">";
        // line 6
        echo ($context["oct_footer_subscribe_promo"] ?? null);
        echo "</div>
\t\t          <div class=\"fm-footer-subscribe-text\">";
        // line 7
        echo ($context["oct_footer_subscribe"] ?? null);
        echo "</div>
\t\t        </div>
\t\t    </div>
\t\t    <div class=\"col-lg-5\">
\t\t        <form action=\"javascript:;\" id=\"footer-subscribe\" class=\"fm-footer-subscribe-subscribe\">
\t\t\t        <input type=\"email\" id=\"InputSubscribeEmail\" class=\"fm-footer-subscribe-subscribe-input\" name=\"email\" placeholder=\"";
        // line 12
        echo ($context["enter_email_static_subscribe"] ?? null);
        echo "\">
\t\t\t        ";
        // line 13
        if (($context["text_terms"] ?? null)) {
            // line 14
            echo "\t\t\t        <div class=\"form-checkbox-group\">
\t\t\t            <label>
\t\t\t              <input type=\"checkbox\" class=\"fm-form-checkbox-input\" name=\"agree\">
\t\t\t              <span class=\"check-box\"></span>
\t\t\t              ";
            // line 18
            echo ($context["text_terms"] ?? null);
            echo "
\t\t\t            </label>
\t\t\t        </div>
\t\t\t        ";
        }
        // line 22
        echo "\t\t\t        <button type=\"submit\" id=\"footer-make-subscribe\"></button>
\t\t        </form>
\t\t    </div>
\t    </div>
\t</div>
</div>
<script>
\$(\"#InputSubscribeEmail\").on(\"change paste keyup\", function() {
\t\$(this).removeClass('error_style');
});
\$('#footer-make-subscribe').on('click', function() {
\t\$.ajax({
\t\ttype: 'post',
\t\turl:  'index.php?route=octemplates/module/oct_subscribe/makeSubscribe',
\t\tdataType: 'json',
\t\tcache: false,
\t\tdata: \$('#footer-subscribe').serialize(),
\t\tsuccess: function(json) {
\t\t\tif (json['error']) {
\t\t\t\t\$('#us-subscribe-modal .text-danger').remove();
\t\t\t\tlet errorOption = '';
\t\t\t\t
\t\t\t\t\$.each(json['error'], function(i, val) {
\t\t\t\t\t\$('#footer-subscribe [name=\"' + i + '\"]').addClass('error_style');
\t\t\t\t\terrorOption += '<div class=\"alert-text-item\">' + val + '</div>'; 
\t\t\t\t});
\t\t\t\t
\t\t\t\tfmNotify('danger', errorOption);
\t\t\t} else {
\t\t\t\tif (json['output']) {
\t\t\t\t\t\$('#footer-subscribe [name=\"email\"]').val('');
\t\t\t\t\tfmNotify('success', '<div class=\"alert-text-item\">' + json['output'] + '</div>');
\t\t\t\t}
\t\t\t}
\t\t}
\t});
});
</script>";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/octemplates/module/oct_static_subscribe.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  75 => 22,  68 => 18,  62 => 14,  60 => 13,  56 => 12,  48 => 7,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/octemplates/module/oct_static_subscribe.twig", "");
    }
}
