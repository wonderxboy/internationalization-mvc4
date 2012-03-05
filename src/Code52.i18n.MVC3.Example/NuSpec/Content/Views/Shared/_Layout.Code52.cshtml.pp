﻿@using $rootnamespace$.Resources
@using $rootnamespace$.CSharp
@using $rootnamespace$.Code52.i18n
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>@ViewBag.Title - @Language.Master_SiteTitle</title>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="@System.Web.Optimization.BundleTable.Bundles.ResolveBundleUrl("~/Content/css")" rel="stylesheet" type="text/css" />
    <link href="@Url.Content("~/Content/code52.i18n/Code52.i18n.css")" rel="stylesheet" type="text/css" />
    <link href="@System.Web.Optimization.BundleTable.Bundles.ResolveBundleUrl("~/Content/themes/base/css")" rel="stylesheet" type="text/css" />
    <script src="@System.Web.Optimization.BundleTable.Bundles.ResolveBundleUrl("~/Scripts/js")"></script>
    <script src="@Url.Content("~/Scripts/jquery.cookie.js")" type="text/javascript"></script>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <header>
        <div id="placeholder-regions">
        </div>
        <div id="i18n-options-container">
        <div id="i18n-options">
            <a title="International" href="#" id="currentlanguage_link"><span id="currentlanguage_text">
            </span>&nbsp;<span id="expandSign">[+]</span> </a>
        </div>
            <div id="i18n-regions">
                <ul>
                    <li>Languages
                        <ol>
                            <li class="lang">
                                <div class="language language_EN">
                                    <a id="langOption" title="English" class="en-GB" href="#">English</a>
                                </div>
                            </li>
                            <li class="lang">
                                <div class="language language_FR">
                                    <a title="français" href="#" class="fr-FR" href="#">Français</a>
                                </div>
                            </li>
                            <li class="lang">
                                <div class="language language_FR">
                                    <a title="français" href="#" class="pl-PL" href="#">Polish</a>
                                </div>
                            </li>
                        </ol>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content-wrapper">
            <div class="float-left">
                <p class="site-title">@Html.ActionLink(@Language.Logo_Title, "Index", "Home")</p>
            </div>
            <div class="float-right">
                <section id="login">
                    @Html.Partial("_LoginPartial")
                </section>
                <nav>
                    <ul id="menu">
                        <li>@Html.ActionLink(@Language.Menu_Home, "Index", "Home")</li>
                        <li>@Html.ActionLink(@Language.Menu_About, "About", "Home")</li>
                        <li>@Html.ActionLink(@Language.Menu_Contact, "Contact", "Home")</li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <div id="body">
        @RenderSection("featured", required: false)
        <section class="content-wrapper main-content clear-fix">
            @RenderBody()
        </section>
    </div>
    <footer>
        <div class="content-wrapper">
            <div class="float-left">
                <p>
                    &copy; @DateTime.Now.Year - @Language.Master_SiteTitle</p>
            </div>
            <div class="float-right">
                <ul id="social">
                    <li><a href="http://facebook.com" class="facebook">@Language.Social_Facebook</a></li>
                    <li><a href="http://twitter.com" class="twitter">@Language.Social_Twitter</a></li>
                </ul>
            </div>
        </div>
    </footer>
    <script src="@Url.Content("~/Scripts/jquery.globalize/globalize.js")" type="text/javascript"></script>
    <script src="@Url.Content(string.Format("~/Scripts/jquery.globalize/cultures/globalize.culture.{0}.js", CultureHelper.GetCurrentCulture()))" type="text/javascript"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
    @if (CultureHelper.GetCurrentNeutralCulture() != "en") {
        <script type="text/javascript" src="@String.Format("http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/localization/messages_{0}.js", CultureHelper.GetCurrentNeutralCulture())"></script>
    }
    <script type="text/javascript" src="@Url.Content("/Scripts/Code52.i18n.js")"></script>
    <script type="text/javascript">
        Code52.Language.Init('@CultureHelper.GetCurrentCulture()');
	</script>
@* ReSharper disable Html.PathError *@
    <script type="text/javascript" src="@Url.Content("/i18n/Code52.i18n.language.js")"></script>
@* ReSharper restore Html.PathError *@
</body>
</html>