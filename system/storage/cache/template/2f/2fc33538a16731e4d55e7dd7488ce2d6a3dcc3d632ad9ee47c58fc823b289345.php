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

/* oct_feelmart/template/common/search.twig */
class __TwigTemplate_834be287b4e719b2053265776f34e2fa7956d67c7319b0315c56b71793ae87db extends \Twig\Template
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
        echo "<div id=\"search\" class=\"fm-search\">
    <input id=\"input_search\" type=\"text\" name=\"search\" value=\"";
        // line 2
        echo ($context["search"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["search_input_header_text"] ?? null);
        echo "\" class=\"w-100 h-100 menu-input\">
    <button type=\"button\" id=\"fm-search-button\" class=\"btn-search menu-btn-search h-100\"><i class=\"fa fa-search\"></i></button>
\t<div id=\"fm_livesearch_close\" onclick=\"clearLiveSearch();\" class=\"d-flex d-lg-none align-items-center justify-content-center\"><img src=\"catalog/view/theme/oct_feelmart/img/livesearch-close-icon.svg\" alt=\"\" /></div>
\t<div id=\"fm_livesearch\"></div>
</div>


<script>
function clearLiveSearch() {
\t\$('#fm_livesearch_close, #fm_sidebar_overlay').removeClass('visible');
\t\$('#fm_livesearch').removeClass('expanded');
\t\$('.menu-row').removeClass('active');
\t\$('#fm_livesearch').html('');
\t\$('#input_search').val('');

}
";
        // line 18
        if (($context["oct_live_search_status"] ?? null)) {
            // line 19
            echo "\$(document).ready(function() {
\tlet timer, delay = ";
            // line 20
            echo ($context["delay_setting"] ?? null);
            echo ";

\t\$('#input_search').keyup(function(event) {

\t    switch(event.keyCode) {
\t\t\tcase 37:
\t\t\tcase 39:
\t\t\tcase 38:
\t\t\tcase 40:
\t\t\t\treturn;
\t\t\tcase 27:
\t\t\t\tclearLiveSearch();
\t\t\t\treturn;
\t\t}

\t    clearTimeout(timer);

\t    timer = setTimeout(function() {
\t        let value = \$('#search input[name=\\'search\\']').val();

\t\t\tif (value.length >= ";
            // line 40
            echo ($context["count_symbol"] ?? null);
            echo ") {
\t\t\t\tlet key = encodeURIComponent(value);
\t\t\t\toctsearch.search(key, 'desktop');
\t\t\t} else if (value.length === 0) {
\t\t\t\tclearLiveSearch();
\t\t\t}

\t    }, delay );
\t});
});

let octsearch = {
\t'search': function(key, type) {
\t\t\$.ajax({
\t\t\turl: 'index.php?route=octemplates/module/oct_live_search',
\t\t\ttype: 'post',
\t\t\tdata: 'key=' + key,
\t\t\tdataType: 'html',
\t\t\tcache: false,
\t\t\tsuccess: function(data) {
\t\t\t\t\$('#fm_livesearch').html(data).addClass('expanded');

\t\t\t\tif(data = data.match(/livesearch/g)) {
\t\t\t\t\t\$('#fm_livesearch_close, #fm_sidebar_overlay').addClass('visible');
\t\t\t\t\t\$('.menu-row').addClass('active');

\t\t\t\t} else {
\t\t\t\t\t\$('#fm_livesearch_close, #fm_sidebar_overlay').removeClass('visible');
\t\t\t\t\t\$('.menu-row').removeClass('active');
\t\t\t\t}
\t\t\t}
\t\t});
\t}
}
";
        }
        // line 75
        echo "</script>
";
    }

    public function getTemplateName()
    {
        return "oct_feelmart/template/common/search.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  127 => 75,  89 => 40,  66 => 20,  63 => 19,  61 => 18,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "oct_feelmart/template/common/search.twig", "");
    }
}
