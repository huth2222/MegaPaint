#pragma checksum "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "eb2b8d3857de0ba3eadde974e03eccbc539e364c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Category_CategoryTable), @"mvc.1.0.view", @"/Views/Category/CategoryTable.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using MegaPaint;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using MegaPaint.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using MegaPaint.ViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using MegaPaint.ViewModels.Entity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using MegaPaint.ViewModels.Entity.Product;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using MegaPaint.ViewModels.Entity.Product.Item;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "D:\Project\TOA\MegaPaint\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"eb2b8d3857de0ba3eadde974e03eccbc539e364c", @"/Views/Category/CategoryTable.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2662a5deeec17affca80764e25183c9a34d70972", @"/Views/_ViewImports.cshtml")]
    public class Views_Category_CategoryTable : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<MP_ProductCategory>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", new global::Microsoft.AspNetCore.Html.HtmlString("text/javascript"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/TableDnD-master/js/jquery.tablednd.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/Product/Category/table.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
  
    Layout = null;

#line default
#line hidden
#nullable disable
            WriteLiteral("\n");
            WriteLiteral(@"<div class=""row"">
    <div class=""col-12"" style=""font-size: 14px;"">
        <div class=""card"">
            <div class=""card-header"">
                <h3 class=""card-title"">รายชื่อหมวดหมู่สินค้า</h3>
            </div>
            <div class=""card-body"">
                <table id=""t_categorylist2"" class=""table table-bordered text-center"">
                    <thead>
                        <tr class=""bg-info"" style=""vertical-align: top;"">
                            <th style=""width: 200px; vertical-align: top;"">ชื่อหวมดหมู่สินค้า</th>
                            <th style=""vertical-align: top;"">รายละเอียด/หมายเหตุ</th>
                            <th style=""width: 100px; vertical-align: top;"">Tool</th>
                        </tr>
                    </thead>
                    <tbody>
");
#nullable restore
#line 64 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
                         foreach (var item2 in Model)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <tr");
            BeginWriteAttribute("id", " id=\"", 2897, "\"", 2922, 1);
#nullable restore
#line 66 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
WriteAttributeValue("", 2902, item2.category_code, 2902, 20, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\n                                <td>");
#nullable restore
#line 67 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
                               Write(item2.category_name_th);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                                <td>");
#nullable restore
#line 68 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
                               Write(item2.category_detail);

#line default
#line hidden
#nullable disable
            WriteLiteral("<input type=\"hidden\"");
            BeginWriteAttribute("id", " id=\"", 3068, "\"", 3095, 2);
            WriteAttributeValue("", 3073, "v_", 3073, 2, true);
#nullable restore
#line 68 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
WriteAttributeValue("", 3075, item2.category_code, 3075, 20, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" /></td>\n                                <td>\n                                    <span class=\"d-flex justify-content-around\"> <span class=\"hover-del\"");
            BeginWriteAttribute("onclick", "\n                                        onclick=\'", 3246, "\'", 3365, 5);
            WriteAttributeValue("", 3296, "GetDelCategoryTable(\"", 3296, 21, true);
#nullable restore
#line 71 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
WriteAttributeValue("", 3317, item2.category_code, 3317, 20, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3337, "\",\"", 3337, 3, true);
#nullable restore
#line 71 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
WriteAttributeValue("", 3340, item2.category_name_th, 3340, 23, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3363, "\")", 3363, 2, true);
            EndWriteAttribute();
            WriteLiteral("><i\n                                            class=\"fas fa-trash-alt\"></i></span>\n\n                                        <span class=\"hover-edit\"");
            BeginWriteAttribute("onclick", "\n                                        onclick=\'", 3516, "\'", 3636, 5);
            WriteAttributeValue("", 3566, "GetEditCategoryTable(\"", 3566, 22, true);
#nullable restore
#line 75 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
WriteAttributeValue("", 3588, item2.category_code, 3588, 20, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3608, "\",\"", 3608, 3, true);
#nullable restore
#line 75 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
WriteAttributeValue("", 3611, item2.category_name_th, 3611, 23, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3634, "\")", 3634, 2, true);
            EndWriteAttribute();
            WriteLiteral("><i\n                                            class=\"fas fa-edit\"></i></span> </span>\n                                </td>\n                            </tr>\n");
#nullable restore
#line 79 "D:\Project\TOA\MegaPaint\Views\Category\CategoryTable.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<script type=""text/javascript"" src=""https://code.jquery.com/jquery-2.1.1.min.js""></script>
<script type=""text/javascript"" src=""https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js""></script>
");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "eb2b8d3857de0ba3eadde974e03eccbc539e364c10344", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "eb2b8d3857de0ba3eadde974e03eccbc539e364c11465", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public Microsoft.AspNetCore.Http.IHttpContextAccessor HttpContextAccessor { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<MP_ProductCategory>> Html { get; private set; }
    }
}
#pragma warning restore 1591
