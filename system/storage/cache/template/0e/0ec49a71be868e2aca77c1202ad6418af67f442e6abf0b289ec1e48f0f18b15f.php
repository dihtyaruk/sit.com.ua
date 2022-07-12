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

/* oct_feelmart/template/common/footer.twig */
class __TwigTemplate_7002a5f0096bfd24348ce56d3f97c0f4df5192fc41374098718a3ada5f1e2966 extends \Twig\Template
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
        echo "
\t\t\t<div id=\"fm_overlay\"></div>
\t\t\t
<footer class=\"row-padding-top\">

\t\t\t";
        // line 6
        if (array_key_exists("oct_subscribe", $context)) {
            // line 7
            echo "\t\t\t";
            echo ($context["oct_subscribe"] ?? null);
            echo "
\t\t\t";
        }
        // line 9
        echo "\t\t\t
\t<div class=\"fm-main-footer\">
\t\t<div class=\"container\">
\t        <div class=\"row\">
\t        \t<div class=\"col-sm-6 col-md-6 col-lg-3 text-center fm-main-footer-first order-0\">
\t\t            <div class=\"fm-main-footer-contact\">
\t\t            \t";
        // line 15
        if ((array_key_exists("oct_contact_telephones", $context) &&  !twig_test_empty(($context["oct_contact_telephones"] ?? null)))) {
            // line 16
            echo "\t\t\t            <div class=\"header-dropdown-box\">
\t\t\t            \t";
            // line 17
            if ((twig_length_filter($this->env, ($context["oct_contact_telephones"] ?? null)) > 1)) {
                // line 18
                echo "\t\t\t                <a class=\"btn btn-link dropdown-toggle d-flex justify-content-center align-items-center\" href=\"javascript:;\" role=\"button\">";
                echo (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = ($context["oct_contact_telephones"] ?? null)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4[0] ?? null) : null);
                echo " <i class=\"fas fa-chevron-down\"></i></a>
\t\t\t                <div class=\"header-dropdown text-center\">
\t\t\t\t                <div class=\"header-dropdown-inner\">
\t\t\t\t                    <div class=\"header-dropdown-title header-dropdown-title-bold\">";
                // line 21
                echo ($context["oct_our_telephones"] ?? null);
                echo "</div>
\t\t\t\t                    <ul class=\"list-unstyled\">
\t\t\t\t\t                    ";
                // line 23
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["oct_contact_telephones"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["oct_contact_telephone"]) {
                    // line 24
                    echo "\t\t\t\t\t                    <li><a href=\"tel:";
                    echo twig_replace_filter($context["oct_contact_telephone"], [" " => "", "-" => "", "(" => "", ")" => ""]);
                    echo "\">";
                    echo $context["oct_contact_telephone"];
                    echo "</a></li>
\t\t\t\t\t                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_contact_telephone'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 26
                echo "\t\t\t\t                    </ul>
\t\t\t\t                </div>
\t\t\t                </div>
\t\t\t                ";
            } else {
                // line 30
                echo "\t\t\t                <a class=\"btn btn-link dropdown-toggle d-flex justify-content-center align-items-center\" href=\"tel:";
                echo twig_replace_filter((($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = ($context["oct_contact_telephones"] ?? null)) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144[0] ?? null) : null), [" " => "", "-" => "", "(" => "", ")" => ""]);
                echo "\" role=\"button\">";
                echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = ($context["oct_contact_telephones"] ?? null)) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b[0] ?? null) : null);
                echo "</a>
\t\t\t                ";
            }
            // line 32
            echo "\t\t\t            </div>
\t                    ";
        }
        // line 34
        echo "\t\t\t            ";
        if ((array_key_exists("oct_popup_call_phone_status", $context) && ($context["oct_popup_call_phone_status"] ?? null))) {
            // line 35
            echo "\t\t\t            <button type=\"button\" onclick=\"octPopupCallPhone()\" class=\"fm-main-footer-contact-btn fm-btn\">";
            echo ($context["oct_to_contact_us"] ?? null);
            echo "</button>
\t\t\t\t\t\t";
        }
        // line 37
        echo "\t\t\t            ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, true, false, 37), ($context["oct_lang_id"] ?? null), [], "array", true, true, false, 37) && (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, false, false, 37)) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002[($context["oct_lang_id"] ?? null)] ?? null) : null))) {
            // line 38
            echo "\t                    <div class=\"fm-main-footer-contact-address\">";
            echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_address", [], "any", false, false, false, 38)) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4[($context["oct_lang_id"] ?? null)] ?? null) : null);
            echo "</div>
\t                    ";
        }
        // line 40
        echo "\t                    ";
        if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", true, true, false, 40) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 40))) {
            // line 41
            echo "\t                    <a href=\"mailto:";
            echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 41);
            echo "\" class=\"fm-main-footer-contact-link\">";
            echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 41);
            echo "</a>
\t                    ";
        }
        // line 43
        echo "\t\t\t            <ul class=\"fm-main-footer-payments-list list-unstyled d-flex justify-content-center\">
\t\t\t\t            ";
        // line 44
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 44), "sber", [], "any", true, true, false, 44) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 44), "sber", [], "any", false, false, false, 44))) {
            // line 45
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item sberbank\"></li>
\t\t\t\t\t\t\t";
        }
        // line 47
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 47), "privat24", [], "any", true, true, false, 47) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 47), "privat24", [], "any", false, false, false, 47))) {
            // line 48
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item privat24\"></li>
\t\t\t\t\t\t\t";
        }
        // line 50
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 50), "ym", [], "any", true, true, false, 50) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 50), "ym", [], "any", false, false, false, 50))) {
            // line 51
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item yandex-money\"></li>
\t\t\t\t\t\t\t";
        }
        // line 53
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 53), "wm", [], "any", true, true, false, 53) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 53), "wm", [], "any", false, false, false, 53))) {
            // line 54
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item webmoney\"></li>
\t\t\t\t\t\t\t";
        }
        // line 56
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 56), "visa", [], "any", true, true, false, 56) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 56), "visa", [], "any", false, false, false, 56))) {
            // line 57
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item visa\"></li>
\t\t\t\t\t\t\t";
        }
        // line 59
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 59), "qw", [], "any", true, true, false, 59) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 59), "qw", [], "any", false, false, false, 59))) {
            // line 60
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item qiwi\"></li>
\t\t\t\t\t\t\t";
        }
        // line 62
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 62), "skrill", [], "any", true, true, false, 62) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 62), "skrill", [], "any", false, false, false, 62))) {
            // line 63
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item skrill\"></li>
\t\t\t\t\t\t\t";
        }
        // line 65
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 65), "interkassa", [], "any", true, true, false, 65) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 65), "interkassa", [], "any", false, false, false, 65))) {
            // line 66
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item interkassa\"></li>
\t\t\t\t\t\t\t";
        }
        // line 68
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 68), "lp", [], "any", true, true, false, 68) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 68), "lp", [], "any", false, false, false, 68))) {
            // line 69
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item liqpay\"></li>
\t\t\t\t\t\t\t";
        }
        // line 71
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 71), "pp", [], "any", true, true, false, 71) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 71), "pp", [], "any", false, false, false, 71))) {
            // line 72
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item paypal\"></li>
\t\t\t\t\t\t\t";
        }
        // line 74
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 74), "robo", [], "any", true, true, false, 74) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 74), "robo", [], "any", false, false, false, 74))) {
            // line 75
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item robokassa\"></li>
\t\t\t\t\t\t\t";
        }
        // line 77
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 77), "mc", [], "any", true, true, false, 77) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 77), "mc", [], "any", false, false, false, 77))) {
            // line 78
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item mastercard\"></li>
\t\t\t\t\t\t\t";
        }
        // line 80
        echo "\t\t                    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, true, false, 80), "maestro", [], "any", true, true, false, 80) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "payments", [], "any", false, false, false, 80), "maestro", [], "any", false, false, false, 80))) {
            // line 81
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item maestro\"></li>
\t\t\t\t\t\t\t";
        }
        // line 83
        echo "\t\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["oct_customer_paymets"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["payment_customer"]) {
            // line 84
            echo "\t\t\t\t\t\t\t<li class=\"fm-main-footer-payments-item custom-payment\"><img src=\"";
            echo $context["payment_customer"];
            echo "\" alt=\"\"></li>
\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['payment_customer'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 86
        echo "\t\t\t            </ul>
\t\t            </div>
\t\t        </div>
\t            ";
        // line 89
        if ((array_key_exists("categories", $context) && ($context["categories"] ?? null))) {
            // line 90
            echo "\t            <div class=\"col-sm-6 col-md-6 col-lg-3 fm-main-footer-second fm-main-footer-list order-2 order-lg-1\">
\t            \t<div class=\"fm-main-footer-title fm-main-footer-title-toggle\">
\t\t            \t<span>";
            // line 92
            echo ($context["oct_footer_category"] ?? null);
            echo "</span>
\t\t            </div>
\t                <ul class=\"fm-main-footer-links-list list-unstyled\">
\t                \t";
            // line 95
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 96
                echo "\t                    <li><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 96);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 96);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 96);
                echo "</a></li>
\t                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 98
            echo "\t                </ul>
\t            </div>
\t            ";
        }
        // line 101
        echo "\t            ";
        if (($context["informations"] ?? null)) {
            // line 102
            echo "\t            <div class=\"col-sm-6 col-md-6 col-lg-3 fm-main-footer-third fm-main-footer-list order-3 order-lg-2\">
\t                <div class=\"fm-main-footer-title fm-main-footer-title-toggle\">
\t                \t<span>";
            // line 104
            echo ($context["text_information"] ?? null);
            echo "</span>
\t                </div>
\t                <ul class=\"fm-main-footer-links-list list-unstyled\">
\t                    ";
            // line 107
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["informations"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["information"]) {
                // line 108
                echo "\t                    <li><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["information"], "href", [], "any", false, false, false, 108);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["information"], "rel", [], "any", true, true, false, 108) && twig_get_attribute($this->env, $this->source, $context["information"], "rel", [], "any", false, false, false, 108))) {
                    echo "rel=\"nofollow\"";
                }
                echo " title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["information"], "title", [], "any", false, false, false, 108);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["information"], "title", [], "any", false, false, false, 108);
                echo "</a></li>
\t                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['information'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 110
            echo "\t                </ul>
\t            </div>
\t            ";
        }
        // line 113
        echo "
\t            <div class=\"col-sm-6 col-md-6 col-lg-3 fm-main-footer-fourth fm-main-footer-list order-1 order-lg-3\">
\t                ";
        // line 115
        if ((array_key_exists("oct_contact_opens", $context) &&  !twig_test_empty(($context["oct_contact_opens"] ?? null)))) {
            // line 116
            echo "\t            \t<div class=\"fm-main-footer-shedule\">
\t                \t<div class=\"fm-main-footer-title\">";
            // line 117
            echo ($context["oct_working_hours"] ?? null);
            echo "</div>
                        <ul class=\"fm-main-footer-shedule-list list-unstyled\">
                        \t";
            // line 119
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["oct_contact_opens"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["oct_contact_open"]) {
                // line 120
                echo "                            <li class=\"fm-main-footer-shedule-item\">";
                echo $context["oct_contact_open"];
                echo "</li>
                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['oct_contact_open'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 122
            echo "                        </ul>
\t            \t</div>
\t                ";
        }
        // line 125
        echo "
                    ";
        // line 126
        if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "socials", [], "any", true, true, false, 126) &&  !twig_test_empty(twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "socials", [], "any", false, false, false, 126)))) {
            // line 127
            echo "                    <div class=\"fm-main-footer-socials\">
                        <div class=\"fm-main-footer-title\">";
            // line 128
            echo ($context["oct_footer_social_tex"] ?? null);
            echo "</div>
                        <ul class=\"fm-main-footer-social-list list-unstyled d-flex flex-wrap justify-content-center justify-content-lg-start\">
                        \t";
            // line 130
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "socials", [], "any", false, false, false, 130));
            foreach ($context['_seq'] as $context["_key"] => $context["social"]) {
                // line 131
                echo "                            <li class=\"fm-main-footer-social-item\"><a rel=\"nofollow, noreferrer\" href=\"";
                echo ((((twig_get_attribute($this->env, $this->source, $context["social"], "link", [], "any", false, false, false, 131) == "#") || twig_test_empty(twig_get_attribute($this->env, $this->source, $context["social"], "link", [], "any", false, false, false, 131)))) ? ("javascript:;") : (twig_get_attribute($this->env, $this->source, $context["social"], "link", [], "any", false, false, false, 131)));
                echo "\" class=\"fm-main-footer-social-link fm-main-footer-social-link-";
                echo twig_replace_filter(twig_get_attribute($this->env, $this->source, $context["social"], "icone", [], "any", false, false, false, 131), ["fa " => "", "fab " => "", "far " => "", "fas " => ""]);
                echo "\" target=\"_blank\"><i class=\"";
                echo twig_get_attribute($this->env, $this->source, $context["social"], "icone", [], "any", false, false, false, 131);
                echo "\"></i></a></li>
                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['social'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 133
            echo "                        </ul>
                    </div>
                    ";
        }
        // line 136
        echo "\t            </div>
\t        </div>
\t        <div class=\"fm-main-footer-credits\">
\t\t        <div class=\"container\">
\t\t\t        <div class=\"row\">
\t\t\t            <div class=\"col-lg-12 text-center\">
\t\t\t                ";
        // line 142
        echo ($context["powered"] ?? null);
        echo "
\t\t\t            </div>
\t\t\t        </div>
\t\t        </div>
\t        </div>
\t    </div>
\t</div>

\t\t\t";
        // line 150
        if ((array_key_exists("oct_feedback_data", $context) && ($context["oct_feedback_data"] ?? null))) {
            // line 151
            echo "\t        <div id=\"fm_fixed_contact_substrate\"></div>
\t        <div id=\"fm_fixed_contact_button\" class=\"d-flex align-items-center justify-content-center\">
\t\t        <div class=\"fm-fixed-contact-pulsation\"></div>
\t\t        <div class=\"fm-fixed-contact-icon d-flex align-items-center justify-content-center\"><i class=\"far fa-comment-dots\"></i><i class=\"fas fa-times d-none\"></i></div>
\t\t        <div class=\"fm-fixed-contact-dropdown d-flex flex-column align-items-start\">
\t\t        \t";
            // line 156
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_messenger", [], "any", true, true, false, 156) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_messenger", [], "any", false, false, false, 156)) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_messenger", [], "any", true, true, false, 156) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_messenger", [], "any", false, false, false, 156)))) {
                // line 157
                echo "\t\t            <a rel=\"nofollow\" href=\"https://m.me/";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_messenger", [], "any", false, false, false, 157);
                echo "\" target=\"_blank\" class=\"fm-fixed-contact-item d-flex align-items-center\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-messenger d-flex align-items-center justify-content-center\"><i class=\"fab fa-facebook-messenger\"></i></span><span>Messenger</span></a>
\t\t            ";
            }
            // line 159
            echo "\t\t            
\t\t            ";
            // line 160
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_viber", [], "any", true, true, false, 160) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_viber", [], "any", false, false, false, 160)) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_viber", [], "any", true, true, false, 160) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_viber", [], "any", false, false, false, 160)))) {
                // line 161
                echo "\t\t            <a rel=\"nofollow\" href=\"viber://chat?number=+";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_viber", [], "any", false, false, false, 161);
                echo "\" target=\"_blank\" class=\"fm-fixed-contact-item d-flex align-items-center fm-fixed-contact-viber-desktop\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-viber d-flex align-items-center justify-content-center\"><i class=\"fab fa-viber\"></i></span><span>Viber</span></a>
\t\t            <a rel=\"nofollow\" href=\"viber://add?number=";
                // line 162
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_viber", [], "any", false, false, false, 162);
                echo "\" target=\"_blank\" class=\"fm-fixed-contact-item d-flex align-items-center fm-fixed-contact-viber-mobile\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-viber d-flex align-items-center justify-content-center\"><i class=\"fab fa-viber\"></i></span><span>Viber</span></a>
\t\t            ";
            }
            // line 164
            echo "\t\t            
\t\t            ";
            // line 165
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_telegram", [], "any", true, true, false, 165) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_telegram", [], "any", false, false, false, 165)) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_telegram", [], "any", true, true, false, 165) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_telegram", [], "any", false, false, false, 165)))) {
                // line 166
                echo "\t\t            <a rel=\"nofollow\" href=\"https://t.me/";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_telegram", [], "any", false, false, false, 166);
                echo "\" target=\"_blank\" class=\"fm-fixed-contact-item d-flex align-items-center\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-telegram d-flex align-items-center justify-content-center\"><i class=\"fab fa-telegram\"></i></span><span>Telegram</span></a>
\t\t            ";
            }
            // line 168
            echo "\t\t            
\t\t            ";
            // line 169
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_skype", [], "any", true, true, false, 169) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_skype", [], "any", false, false, false, 169)) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_skype", [], "any", true, true, false, 169) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_skype", [], "any", false, false, false, 169)))) {
                // line 170
                echo "\t\t            <a rel=\"nofollow\" href=\"skype:";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_skype", [], "any", false, false, false, 170);
                echo "?chat\" class=\"fm-fixed-contact-item d-flex align-items-center\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-skype d-flex align-items-center justify-content-center\"><i class=\"fab fa-skype\"></i></span><span>Skype</span></a>
\t\t            ";
            }
            // line 172
            echo "\t\t            
\t\t            ";
            // line 173
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_whatsapp", [], "any", true, true, false, 173) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_whatsapp", [], "any", false, false, false, 173)) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_whatsapp", [], "any", true, true, false, 173) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_whatsapp", [], "any", false, false, false, 173)))) {
                // line 174
                echo "\t\t            <a rel=\"nofollow\" href=\"https://api.whatsapp.com/send?phone=";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_whatsapp", [], "any", false, false, false, 174);
                echo "\" target=\"_blank\" class=\"fm-fixed-contact-item d-flex align-items-center\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-whatsapp d-flex align-items-center justify-content-center\"><i class=\"fab fa-whatsapp\"></i></span><span>WhatsApp</span></a>
\t\t            ";
            }
            // line 176
            echo "\t\t            
\t\t            ";
            // line 177
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_email", [], "any", true, true, false, 177) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_email", [], "any", false, false, false, 177)) && (twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", true, true, false, 177) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 177)))) {
                // line 178
                echo "\t\t            <a rel=\"nofollow\" href=\"mailto:";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 178);
                echo "\" class=\"fm-fixed-contact-item d-flex align-items-center\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-email d-flex align-items-center justify-content-center\"><i class=\"far fa-envelope\"></i></span><span>";
                echo twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "contact_email", [], "any", false, false, false, 178);
                echo "</span></a>
\t\t            ";
            }
            // line 180
            echo "\t\t            
\t\t            ";
            // line 181
            if (((twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_callback", [], "any", true, true, false, 181) && twig_get_attribute($this->env, $this->source, ($context["oct_feedback_data"] ?? null), "feedback_callback", [], "any", false, false, false, 181)) && (array_key_exists("oct_popup_call_phone_status", $context) && ($context["oct_popup_call_phone_status"] ?? null)))) {
                // line 182
                echo "\t\t            <a rel=\"nofollow\" id=\"uptocall-mini\" href=\"javascript:;\" onclick=\"octPopupCallPhone()\" class=\"fm-fixed-contact-item d-flex align-items-center\"><span class=\"fm-fixed-contact-item-icon fm-fixed-contact-call d-flex align-items-center justify-content-center\"><i class=\"fas fa-phone\"></i></span><span>";
                echo ($context["oct_call_phone"] ?? null);
                echo "</span></a>
\t\t            ";
            }
            // line 184
            echo "\t\t        </div>
\t\t    </div>
\t\t    ";
        }
        // line 187
        echo "\t\t\t
</footer>

\t\t\t";
        // line 190
        if ((twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "footer_totop", [], "any", true, true, false, 190) && twig_get_attribute($this->env, $this->source, ($context["oct_feelmart_data"] ?? null), "footer_totop", [], "any", false, false, false, 190))) {
            // line 191
            echo "\t\t\t\t<div id=\"back-top\">
\t\t\t        <a href=\"#top\"><i class=\"fas fa-chevron-up\"></i></a>
\t\t\t    </div>
\t\t\t";
        }
        // line 195
        echo "\t\t\t

\t\t\t";
        // line 197
        if ((array_key_exists("oct_subscribe_status", $context) && ($context["oct_subscribe_status"] ?? null))) {
            // line 198
            echo "\t\t\t<script>
\t\t\t\$(function() {
\t\t\t\tif (getOCTCookie('oct_subscribe') == 'undefined') {
\t\t\t\t\tsetTimeout(function(){
\t\t\t\t\t\toctPopupSubscribe();
\t\t\t\t\t}, ";
            // line 203
            echo ((twig_get_attribute($this->env, $this->source, ($context["oct_subscribe_form_data"] ?? null), "seconds", [], "any", false, false, false, 203)) ? (twig_get_attribute($this->env, $this->source, ($context["oct_subscribe_form_data"] ?? null), "seconds", [], "any", false, false, false, 203)) : ("10000"));
            echo ");

\t\t\t\t\tconst date = new Date('";
            // line 205
            echo ($context["oct_subscribe_day_now"] ?? null);
            echo "'.replace(/-/g, \"/\"));
\t\t\t\t\tdate.setTime(date.getTime() + (";
            // line 206
            echo ((twig_get_attribute($this->env, $this->source, ($context["oct_subscribe_form_data"] ?? null), "expire", [], "any", false, false, false, 206)) ? (twig_get_attribute($this->env, $this->source, ($context["oct_subscribe_form_data"] ?? null), "expire", [], "any", false, false, false, 206)) : ("1"));
            echo " * 24 * 60 * 60 * 1000));
\t\t\t\t\tdocument.cookie = 'oct_subscribe=1; path=/; expires=' + date.toUTCString();
\t\t\t\t}
\t\t\t});
\t\t\t</script>
\t\t\t";
        }
        // line 212
        echo "\t\t\t
";
        // line 213
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["scripts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 214
            echo "<script src=\"";
            echo $context["script"];
            echo "\"></script>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['script'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 216
        echo "<div class=\"modal-holder\"></div>
";
        // line 217
        if ((array_key_exists("oct_isiOS", $context) && ($context["oct_isiOS"] ?? null))) {
            // line 218
            echo "<script>
var elementsA = document.getElementsByTagName('a');
for(var i = 0; i < elementsA.length; i++){
    elementsA[i].addEventListener('touchend',function(){});
}

var elementsB = document.getElementsByTagName('button');
for(var i = 0; i < elementsB.length; i++){
    elementsB[i].addEventListener('touchend',function(){});
}
</script>
";
        }
        // line 230
        echo "
            ";
        // line 231
        if ((array_key_exists("analytics", $context) &&  !twig_test_empty(($context["analytics"] ?? null)))) {
            // line 232
            echo "\t\t\t";
            echo ($context["analytics"] ?? null);
            echo "
\t\t\t";
        }
        // line 234
        echo "\t\t\t

\t\t\t";
        // line 236
        if ((array_key_exists("oct_jscode", $context) && ($context["oct_jscode"] ?? null))) {
            // line 237
            echo "\t\t\t\t<script>
\t\t\t\t";
            // line 238
            echo ($context["oct_jscode"] ?? null);
            echo "
\t\t\t\t</script>
\t\t\t";
        }
        // line 241
        echo "\t\t\t

\t\t\t";
        // line 243
        if (((array_key_exists("oct_information_bar_value", $context) &&  !twig_test_empty(($context["oct_information_bar_value"] ?? null))) && ($context["oct_information_bar_value"] ?? null))) {
            // line 244
            echo "\t\t\t<script>
\t\t\tfunction getOctInformationBar() {
\t\t\t\t\$.ajax({
\t\t\t\t\turl: \"index.php?route=common/footer/getOctInfoBar\",
\t\t\t\t\ttype: \"post\",
\t\t\t\t\tdataType: \"json\",
\t\t\t\t\tcache: false,
\t\t\t\t\tsuccess: function(t) {
\t\t\t\t\t\tif (t['text_oct_information_bar']) {
\t\t\t\t\t\t\tvar html = '<div id=\"oct-infobar\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 d-flex align-items-center justify-content-between flex-column flex-md-row\"><div class=\"oct-infobar-text\">'+ t['text_oct_information_bar'] +'</div><button type=\"button\" id=\"oct-infobar-btn\" class=\"mt-3 mt-md-0\">'+ t['oct_info_bar_close'] +'</button></div></div></div></div>';

\t\t\t\t\t\t\t\$(\"#top\").before(html);

\t\t\t\t\t\t\t\$('#oct-infobar-btn').on('click', function () {
\t\t\t\t\t\t\t\t\$('#oct-infobar').addClass('hidden');
\t\t\t\t\t\t\t\tconst date = new Date(t['oct_information_bar_day_now'].replace(/-/g, \"/\"));
\t\t\t\t\t\t\t\tdate.setTime(date.getTime() + (t['oct_info_max_day'] * 24 * 60 * 60 * 1000));
\t\t\t\t\t\t\t\tdocument.cookie = t['oct_information_bar_value']+'=1; path=/; expires=' + date.toUTCString();
\t\t\t\t\t\t\t});
\t\t\t\t\t\t}
\t\t\t\t\t},
\t\t\t\t\terror: function(e, t, i) {
\t\t\t\t\t}
\t\t\t\t});
\t\t\t}

\t\t\t\$(function() {
\t\t\t\tif (getOCTCookie('";
            // line 271
            echo ($context["oct_information_bar_value"] ?? null);
            echo "') == 'undefined') {
\t\t\t\t\tgetOctInformationBar();
\t\t\t\t}
\t\t\t});
\t\t\t</script>
\t\t\t<style>
\t\t\t#oct-infobar {background:";
            // line 277
            echo ($context["oct_information_bar_background"] ?? null);
            echo ";}
\t\t\t.oct-infobar-text {color:";
            // line 278
            echo ($context["oct_information_bar_color_text"] ?? null);
            echo ";}
\t\t\t.oct-infobar-text a {color:";
            // line 279
            echo ($context["oct_information_bar_color_url"] ?? null);
            echo ";}
\t\t\t#oct-infobar-btn {background:";
            // line 280
            echo ($context["oct_information_bar_background_button"] ?? null);
            echo ";color:";
            echo ($context["oct_information_bar_color_text_button"] ?? null);
            echo ";}
\t\t\t#oct-infobar-btn:hover {background:";
            // line 281
            echo ($context["oct_information_bar_background_button_hover"] ?? null);
            echo ";color:";
            echo ($context["oct_information_bar_color_text_button_hover"] ?? null);
            echo ";}
\t\t\t</style>
\t\t\t";
        }
        // line 284
        echo "\t\t\t

\t\t\t";
        // line 286
        if (((array_key_exists("oct_policy_value", $context) &&  !twig_test_empty(($context["oct_policy_value"] ?? null))) && ($context["oct_policy_value"] ?? null))) {
            // line 287
            echo "\t\t\t<script>
\t\t\tfunction get_oct_policy() {
\t\t\t\t\$.ajax({
\t\t\t\t\turl: \"index.php?route=common/footer/getOctPolicy\",
\t\t\t\t\ttype: \"post\",
\t\t\t\t\tdataType: \"json\",
\t\t\t\t\tcache: false,
\t\t\t\t\tsuccess: function(t) {
\t\t\t\t\t\tif (t['text_oct_policy']) {
\t\t\t\t\t\t\tvar html = '<div id=\"oct-policy\" class=\"fixed-bottom\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 d-flex align-items-center justify-content-between flex-column flex-md-row\"><div class=\"oct-policy-text\">'+ t['text_oct_policy'] +'</div><button type=\"button\" id=\"oct-policy-btn\">'+ t['oct_policy_accept'] +'</button></div></div></div></div>';

\t\t\t\t\t\t\t\$('body').append(html);

\t\t\t\t\t\t\t\$('#oct-policy-btn').on('click', function () {
\t\t\t\t\t\t\t\t\$('#oct-policy').addClass('hidden');
\t\t\t\t\t\t\t\tconst date = new Date(t['oct_policy_day_now'].replace(/-/g, \"/\"));
\t\t\t\t\t\t\t\tdate.setTime(date.getTime() + (t['oct_max_day'] * 24 * 60 * 60 * 1000));
\t\t\t\t\t\t\t\tdocument.cookie = t['oct_policy_value']+'=1; path=/; expires=' + date.toUTCString();
\t\t\t\t\t\t\t});
\t\t\t\t\t\t}
\t\t\t\t\t},
\t\t\t\t\terror: function(e, t, i) {
\t\t\t\t\t}
\t\t\t\t});
\t\t\t}

\t\t\t\$(function() {
\t\t\t\tif (getOCTCookie('";
            // line 314
            echo ($context["oct_policy_value"] ?? null);
            echo "') == 'undefined') {
\t\t\t\t\tget_oct_policy();
\t\t\t\t}
\t\t\t});
\t\t\t</script>
\t\t\t";
        }
        // line 320
        echo "\t\t\t
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/common/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  725 => 320,  716 => 314,  687 => 287,  685 => 286,  681 => 284,  673 => 281,  667 => 280,  663 => 279,  659 => 278,  655 => 277,  646 => 271,  617 => 244,  615 => 243,  611 => 241,  605 => 238,  602 => 237,  600 => 236,  596 => 234,  590 => 232,  588 => 231,  585 => 230,  571 => 218,  569 => 217,  566 => 216,  557 => 214,  553 => 213,  550 => 212,  541 => 206,  537 => 205,  532 => 203,  525 => 198,  523 => 197,  519 => 195,  513 => 191,  511 => 190,  506 => 187,  501 => 184,  495 => 182,  493 => 181,  490 => 180,  482 => 178,  480 => 177,  477 => 176,  471 => 174,  469 => 173,  466 => 172,  460 => 170,  458 => 169,  455 => 168,  449 => 166,  447 => 165,  444 => 164,  439 => 162,  434 => 161,  432 => 160,  429 => 159,  423 => 157,  421 => 156,  414 => 151,  412 => 150,  401 => 142,  393 => 136,  388 => 133,  375 => 131,  371 => 130,  366 => 128,  363 => 127,  361 => 126,  358 => 125,  353 => 122,  344 => 120,  340 => 119,  335 => 117,  332 => 116,  330 => 115,  326 => 113,  321 => 110,  304 => 108,  300 => 107,  294 => 104,  290 => 102,  287 => 101,  282 => 98,  269 => 96,  265 => 95,  259 => 92,  255 => 90,  253 => 89,  248 => 86,  239 => 84,  234 => 83,  230 => 81,  227 => 80,  223 => 78,  220 => 77,  216 => 75,  213 => 74,  209 => 72,  206 => 71,  202 => 69,  199 => 68,  195 => 66,  192 => 65,  188 => 63,  185 => 62,  181 => 60,  178 => 59,  174 => 57,  171 => 56,  167 => 54,  164 => 53,  160 => 51,  157 => 50,  153 => 48,  150 => 47,  146 => 45,  144 => 44,  141 => 43,  133 => 41,  130 => 40,  124 => 38,  121 => 37,  115 => 35,  112 => 34,  108 => 32,  100 => 30,  94 => 26,  83 => 24,  79 => 23,  74 => 21,  67 => 18,  65 => 17,  62 => 16,  60 => 15,  52 => 9,  46 => 7,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/common/footer.twig", "");
    }
}
