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

/* oct_feelmart/template/extension/module/account.twig */
class __TwigTemplate_17f27d69ac02adb7f0fb75d11285225d2c5160f4b91ac9e226b717a4c84ea432 extends \Twig\Template
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
        echo "<ul class=\"fm-account-list list-unstyled\">
    ";
        // line 2
        if (($context["logged"] ?? null)) {
            // line 3
            echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            echo ($context["account"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-info-circle\"></i><span>";
            echo ($context["text_account"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 4
            echo ($context["edit"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-edit\"></i><span>";
            echo ($context["text_edit"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 5
            echo ($context["password"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-cogs\"></i><span>";
            echo ($context["text_password"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 6
            echo ($context["address"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-map-marker-alt\"></i><span>";
            echo ($context["text_address"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 7
            echo ($context["wishlist"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-heart\"></i><span>";
            echo ($context["text_wishlist"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 8
            echo ($context["order"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-file-alt\"></i><span>";
            echo ($context["text_order"] ?? null);
            echo "</span></a></li>
        ";
            // line 9
            if ( !twig_test_empty(($context["download_view"] ?? null))) {
                // line 10
                echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                echo ($context["download"] ?? null);
                echo "\" rel=\"nofollow\"><i class=\"fas fa-download\"></i><span>";
                echo ($context["text_download"] ?? null);
                echo "</span></a></li>
        ";
            }
            // line 12
            echo "        ";
            if ( !twig_test_empty(($context["recurring_view"] ?? null))) {
                // line 13
                echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                echo ($context["recurring"] ?? null);
                echo "\" rel=\"nofollow\"><i class=\"fas fa-money-bill-alt\"></i><span>";
                echo ($context["text_recurring"] ?? null);
                echo "</span></a></li>
        ";
            }
            // line 15
            echo "        ";
            if ( !twig_test_empty(($context["reward_view"] ?? null))) {
                // line 16
                echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                echo ($context["reward"] ?? null);
                echo "\" rel=\"nofollow\"><i class=\"fas fa-star\"></i><span>";
                echo ($context["text_reward"] ?? null);
                echo "</span></a></li>
        ";
            }
            // line 18
            echo "        ";
            if ( !twig_test_empty(($context["return_view"] ?? null))) {
                // line 19
                echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                echo ($context["return"] ?? null);
                echo "\" rel=\"nofollow\"><i class=\"fas fa-reply\"></i><span>";
                echo ($context["text_return"] ?? null);
                echo "</span></a></li>
        ";
            }
            // line 21
            echo "        ";
            if ( !twig_test_empty(($context["transaction_view"] ?? null))) {
                // line 22
                echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                echo ($context["transaction"] ?? null);
                echo "\" rel=\"nofollow\"><i class=\"fas fa-dollar-sign\"></i><span>";
                echo ($context["text_transaction"] ?? null);
                echo "</span></a></li>
        ";
            }
            // line 24
            echo "        ";
            if ( !twig_test_empty(($context["newsletter_view"] ?? null))) {
                // line 25
                echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                echo ($context["newsletter"] ?? null);
                echo "\" rel=\"nofollow\"><i class=\"fas fa-envelope\"></i><span>";
                echo ($context["text_newsletter"] ?? null);
                echo "</span></a></li>
        ";
            }
            // line 27
            echo "        ";
            if ( !twig_test_empty(($context["affiliate_view"] ?? null))) {
                // line 28
                echo "            ";
                if ( !($context["tracking"] ?? null)) {
                    // line 29
                    echo "                <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                    echo ($context["affiliate"] ?? null);
                    echo "\" rel=\"nofollow\"><i class=\"fas fa-address-card\"></i><span>";
                    echo ($context["text_oct_affiliate"] ?? null);
                    echo "</span></a></li>
            ";
                } else {
                    // line 31
                    echo "                <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                    echo ($context["affiliate"] ?? null);
                    echo "\" rel=\"nofollow\"><i class=\"fas fa-address-card\"></i><span>";
                    echo ($context["text_oct_affiliate"] ?? null);
                    echo "</span></a></li>
                <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
                    // line 32
                    echo ($context["tracking"] ?? null);
                    echo "\" rel=\"nofollow\"><i class=\"fas fa-code\"></i><span>";
                    echo ($context["text_oct_tracking"] ?? null);
                    echo "</span></a></li>
            ";
                }
                // line 34
                echo "        ";
            }
            // line 35
            echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            echo ($context["logout"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-power-off\"></i><span>";
            echo ($context["text_logout"] ?? null);
            echo "</span></a></li>
    ";
        } else {
            // line 37
            echo "        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            echo ($context["login"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-sign-in-alt\"></i><span>";
            echo ($context["text_login"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 38
            echo ($context["register"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"fas fa-user-plus\"></i><span>";
            echo ($context["text_register"] ?? null);
            echo "</span></a></li>
        <li class=\"fm-account-item\"><a class=\"fm-account-link d-flex align-items-center\" href=\"";
            // line 39
            echo ($context["forgotten"] ?? null);
            echo "\" rel=\"nofollow\"><i class=\"far fa-question-circle\"></i><span>";
            echo ($context["text_forgotten"] ?? null);
            echo "</span></a></li>
    ";
        }
        // line 41
        echo "</ul>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/extension/module/account.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  203 => 41,  196 => 39,  190 => 38,  183 => 37,  175 => 35,  172 => 34,  165 => 32,  158 => 31,  150 => 29,  147 => 28,  144 => 27,  136 => 25,  133 => 24,  125 => 22,  122 => 21,  114 => 19,  111 => 18,  103 => 16,  100 => 15,  92 => 13,  89 => 12,  81 => 10,  79 => 9,  73 => 8,  67 => 7,  61 => 6,  55 => 5,  49 => 4,  42 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/extension/module/account.twig", "");
    }
}
