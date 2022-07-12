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

/* oct_feelmart/template/information/information.twig */
class __TwigTemplate_60596dd73b13e516453df818d98e7ffdf20883e0a3d08a273734cca14d761849 extends \Twig\Template
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
<div id=\"information-information\" class=\"container flex-container\">
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
\t    ";
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
\t\t    <div class=\"fm-content h-100\">
\t\t    \t<div class=\"fm-inform-content-text\">
\t\t\t\t";
        // line 22
        echo ($context["description"] ?? null);
        echo "
\t\t    \t</div>
\t\t    </div>
\t    </div>
\t    ";
        // line 26
        echo ($context["column_right"] ?? null);
        echo "
    </div>
    ";
        // line 28
        echo ($context["content_bottom"] ?? null);
        echo "
</div>
";
        // line 30
        if ((array_key_exists("oct_is_youtube", $context) && ($context["oct_is_youtube"] ?? null))) {
            // line 31
            echo "<script>
function findVideos() {
\tlet videos = document.querySelectorAll('.fm-video');

\tfor (let i = 0; videos.length > i; i++) {
\t\tsetupVideo(videos[i]);
\t}
}

function setupVideo(video) {
\tlet link = video.querySelector('.fm-video__link');
\tlet media = video.querySelector('.fm-video__media');
\tlet button = video.querySelector('.fm-video__button');
\tlet id = parseMediaURL(media);

\tvideo.addEventListener('click', () => {
\t\tlet iframe = createIframe(id);

\t\tlink.remove();
\t\tbutton.remove();
\t\tvideo.appendChild(iframe);
\t});

\tlink.removeAttribute('href');
\tvideo.classList.add('fm-video--enabled');
}

function parseMediaURL(media) {
\tlet regexp = /https:\\/\\/i\\.ytimg\\.com\\/vi\\/([a-zA-Z0-9_-]+)\\/maxresdefault\\.jpg/i;
\tlet url = media.src;
\tlet match = url.match(regexp);

\treturn match[1];
}

function createIframe(id) {
\tlet iframe = document.createElement('iframe');

\tiframe.setAttribute('allowfullscreen', '');
\tiframe.setAttribute('allow', 'autoplay');
\tiframe.setAttribute('src', generateURL(id));
\tiframe.classList.add('fm-video__media');

\treturn iframe;
}

function generateURL(id) {
\tlet query = '?rel=0&showinfo=0&autoplay=1';

\treturn 'https://www.youtube.com/embed/' + id + query;
}

findVideos();
</script>
";
        }
        // line 86
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/information/information.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  166 => 86,  109 => 31,  107 => 30,  102 => 28,  97 => 26,  90 => 22,  83 => 19,  80 => 18,  77 => 17,  74 => 16,  71 => 15,  68 => 14,  65 => 13,  63 => 12,  59 => 11,  54 => 9,  48 => 6,  42 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/information/information.twig", "");
    }
}
