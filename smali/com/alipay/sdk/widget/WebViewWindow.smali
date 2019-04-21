.class public Lcom/alipay/sdk/widget/WebViewWindow;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/widget/WebViewWindow$c;,
        Lcom/alipay/sdk/widget/WebViewWindow$b;,
        Lcom/alipay/sdk/widget/WebViewWindow$a;
    }
.end annotation


# static fields
.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/webkit/WebView;

.field private g:Lcom/alipay/sdk/widget/WebViewWindow$a;

.field private h:Lcom/alipay/sdk/widget/WebViewWindow$b;

.field private i:Lcom/alipay/sdk/widget/WebViewWindow$c;

.field private j:Landroid/view/View$OnClickListener;

.field private final k:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/sdk/widget/WebViewWindow;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/widget/WebViewWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/alipay/sdk/widget/q;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/q;-><init>(Lcom/alipay/sdk/widget/WebViewWindow;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->j:Landroid/view/View$OnClickListener;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->k:F

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/WebViewWindow;->setOrientation(I)V

    .line 79
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Landroid/content/Context;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/WebViewWindow;->b(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/WebViewWindow;->c(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 304
    int-to-float v0, p1

    iget v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->k:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/WebViewWindow;)Lcom/alipay/sdk/widget/WebViewWindow$c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->i:Lcom/alipay/sdk/widget/WebViewWindow$c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0xc

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 86
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 93
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/sdk/widget/WebViewWindow;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABIBAMAAACnw650AAAAFVBMVEUAAAARjusRkOkQjuoRkeoRj+oQjunya570AAAABnRSTlMAinWeSkk7CjRNAAAAZElEQVRIx+3MOw6AIBQF0YsrMDGx1obaLeGH/S9BQgkJ82rypp4ceTN1ilvyKizmZIAyU7FML0JVYig55BBAfQ2EU4V4CpZJ+2AiSj11C6rUoTannBpRn4W6xNQjLBSI2+TN0w/+3HT2wPClrQAAAABJRU5ErkJggg=="

    invoke-static {v2, p1}, Lcom/alipay/sdk/util/j;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 98
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    iget-object v2, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 103
    const v2, -0x262627

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v3

    const/16 v4, 0x19

    invoke-direct {p0, v4}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    const v2, -0xeeeeef

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 111
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 116
    iget-object v2, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/sdk/widget/WebViewWindow;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAMAAABiM0N1AAAAmVBMVEUAAAARj+oQjuoRkOsVk/AQj+oRjuoQj+oSkO3///8Rj+kRj+oQkOsTk+whm/8Qj+oRj+oQj+oSkus2p/8QjuoQj+oQj+oQj+oQj+oRj+oTkuwRj+oQj+oRj+oRj+oSkOsSkO0ZlfMbk+8XnPgQj+oRj+oQj+oQj+sSj+sRkOoSkescqv8Rj+oQj+oSj+sXku4Rj+kQjuoQjumXGBCVAAAAMnRSTlMAxPtPF8ry7CoB9npbGwe6lm0wBODazb1+aSejm5GEYjcTDwvls6uJc0g/CdWfRCF20AXrk5QAAAJqSURBVFjD7ZfXmpswEIUFphmDCxi3talurGvm/R8uYSDe5FNBwlzsxf6XmvFBmiaZ/PCdWDk9CWn61OhHCMAaXfoRAth7wx6EkMXnWyrho4yg4bDpquI8Jy78Q7eoj9cmUFijsaLM0JsD9CD0uQAa9aNdPuCFvbA7B9t/Becap8Pu6Q/2jcyH81VHc/WCHDQZXwbvtUhQ61iDlqadncU6Rp31yGkZIzOAu7AjtPpYGREzq/pY5DRFHS1siyO6HfkOKTrMjdb2qevV4zosK7MbkFY2LmYk55hL6juCIFWMOI2KGzblmho3b18EIbxL1hs6r5m2Q2WaEElwS3NW4xh6ZZJuzTtUsBKT4G0h35s4y1mNgkNoS6TZ8SKBXTZQGBNYdPTozXGYKoyLAmOasttjThT4xT6Ch+2qIjRhV9Ja3NC87Kyo5We1vCNEMW1T+j1VLZ9UhE54Q1DL52r5piJ0YxdegvWlHOwTu76uKkJX+MOTHno4YFSEbHYdhViojsLrCTg/MKnhKWaEYzvkZFM8aOkPH7iTSvoFZKD7jGEJbarkRaxQyOeWvGVIbsji152jK7TbDgRzcIuz7SGj89BFU8d30TqWeDtrILxyTkD1IXfvmHseuU3lVHDz607bw0f3xDqejm5ncd0j8VDwfoibRy8RcgTkWHBvocbDbMlJsQAkGnAOHwGy90kLmQY1Wkob07/GaCNRIzdoWK7/+6y/XkLDJCcynOGFuUrKIMuCMonNr9VpSOQoIxBgJ0SacGbzZNy4ICrkscvU2fpElYz+U3sd+aQThjfVmjNa5i15kLcojM3Gz8kP34jf4VaV3X55gNEAAAAASUVORK5CYII="

    invoke-static {v2, p1}, Lcom/alipay/sdk/util/j;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 123
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    iget-object v2, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/widget/WebViewWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/sdk/widget/WebViewWindow;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x103001f

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    .line 134
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108006c

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 137
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 138
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 139
    invoke-direct {p0, v2}, Lcom/alipay/sdk/widget/WebViewWindow;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/sdk/widget/WebViewWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 144
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    .line 145
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 146
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 150
    const-wide/32 v2, 0x500000

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 153
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 154
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 155
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 160
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    iget-object v1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/sdk/widget/WebViewWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/sdk/widget/WebViewWindow;)Lcom/alipay/sdk/widget/WebViewWindow$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->g:Lcom/alipay/sdk/widget/WebViewWindow$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/widget/WebViewWindow;)Lcom/alipay/sdk/widget/WebViewWindow$b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->h:Lcom/alipay/sdk/widget/WebViewWindow$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/WebViewWindow;->removeAllViews()V

    .line 295
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 296
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 297
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 298
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 299
    return-void
.end method

.method protected a(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {p2}, Lcom/alipay/sdk/util/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v3, "15.5.9"

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AlipaySDK("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 271
    return-void
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressbar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRefreshButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setChromeProxy(Lcom/alipay/sdk/widget/WebViewWindow$a;)V
    .locals 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->g:Lcom/alipay/sdk/widget/WebViewWindow$a;

    .line 189
    if-nez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 216
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/widget/s;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/widget/s;-><init>(Lcom/alipay/sdk/widget/WebViewWindow;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public setWebClientProxy(Lcom/alipay/sdk/widget/WebViewWindow$b;)V
    .locals 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->h:Lcom/alipay/sdk/widget/WebViewWindow$b;

    .line 220
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 255
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/WebViewWindow;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/widget/t;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/widget/t;-><init>(Lcom/alipay/sdk/widget/WebViewWindow;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public setWebEventProxy(Lcom/alipay/sdk/widget/WebViewWindow$c;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alipay/sdk/widget/WebViewWindow;->i:Lcom/alipay/sdk/widget/WebViewWindow$c;

    .line 259
    return-void
.end method
