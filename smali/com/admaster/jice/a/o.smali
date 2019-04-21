.class public Lcom/admaster/jice/a/o;
.super Ljava/lang/Object;
.source "JicePushView.java"


# static fields
.field private static j:Lcom/admaster/jice/a/w;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Z

.field private e:Lcom/admaster/jice/b/d;

.field private f:Lcom/admaster/jice/b/e;

.field private g:Lcom/admaster/jice/b/f;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/webkit/WebView;

.field private final k:Landroid/view/View$OnTouchListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/jice/a/o;->j:Lcom/admaster/jice/a/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/admaster/jice/b/d;Lcom/admaster/jice/a/w;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admaster/jice/a/o;->d:Z

    .line 53
    iput-object v1, p0, Lcom/admaster/jice/a/o;->e:Lcom/admaster/jice/b/d;

    .line 54
    iput-object v1, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    .line 55
    iput-object v1, p0, Lcom/admaster/jice/a/o;->g:Lcom/admaster/jice/b/f;

    .line 58
    iput-object v1, p0, Lcom/admaster/jice/a/o;->i:Landroid/webkit/WebView;

    .line 264
    new-instance v0, Lcom/admaster/jice/a/p;

    invoke-direct {v0, p0}, Lcom/admaster/jice/a/p;-><init>(Lcom/admaster/jice/a/o;)V

    iput-object v0, p0, Lcom/admaster/jice/a/o;->k:Landroid/view/View$OnTouchListener;

    .line 325
    new-instance v0, Lcom/admaster/jice/a/q;

    invoke-direct {v0, p0}, Lcom/admaster/jice/a/q;-><init>(Lcom/admaster/jice/a/o;)V

    iput-object v0, p0, Lcom/admaster/jice/a/o;->l:Landroid/view/View$OnClickListener;

    .line 68
    iput-object p1, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/admaster/jice/a/o;->e:Lcom/admaster/jice/b/d;

    .line 70
    sput-object p3, Lcom/admaster/jice/a/o;->j:Lcom/admaster/jice/a/w;

    .line 71
    invoke-direct {p0}, Lcom/admaster/jice/a/o;->f()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/o;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/admaster/jice/a/o;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/jice/a/o;->h:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/o;->b(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v0, p0, Lcom/admaster/jice/a/o;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/admaster/jice/a/o;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 197
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 170
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 171
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 172
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 174
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 180
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 181
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 182
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 183
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/o;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/admaster/jice/a/o;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    .line 140
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/jice/a/o;->i:Landroid/webkit/WebView;

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v1, p0, Lcom/admaster/jice/a/o;->i:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAGwAAABsCAYAAACPZlfNAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0JENDhEODAwMzk3MTFFNkFCRENDMkQ2RUJBQTI3MkUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0JENDhEN0YwMzk3MTFFNkFCRENDMkQ2RUJBQTI3MkUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgTWFjaW50b3NoIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9IjUyM0UzN0UwMzMxOEU1QkNDRTYzNzA4Njg0MTBENkNFIiBzdFJlZjpkb2N1bWVudElEPSI1MjNFMzdFMDMzMThFNUJDQ0U2MzcwODY4NDEwRDZDRSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PprAUIQAAAmrSURBVHja7J1rTJRXGsePIDeFVRFqs3Wt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"

    invoke-static {v0}, Lcom/admaster/jice/d/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "build webview close btn:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/admaster/jice/a/o;->b(Ljava/lang/String;)V

    .line 149
    if-eqz v0, :cond_0

    .line 150
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    const/16 v1, 0xb

    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 157
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 158
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    iget-object v0, p0, Lcom/admaster/jice/a/o;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/o;->i:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lcom/admaster/jice/a/o;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/admaster/jice/a/o;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 336
    iget-object v0, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    .line 337
    iget-object v0, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 338
    iget-object v1, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;)I

    move-result v4

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 345
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 346
    float-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v2, v4

    int-to-float v2, v2

    .line 347
    float-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v0, v0

    move v10, v0

    move v0, v2

    move v2, v10

    .line 356
    :goto_0
    int-to-float v4, v3

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    .line 357
    int-to-float v4, v1

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    .line 358
    int-to-float v4, v3

    div-float v4, v0, v4

    .line 359
    int-to-float v5, v1

    div-float v5, v2, v5

    .line 360
    int-to-float v2, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    .line 361
    int-to-float v0, v3

    mul-float/2addr v0, v4

    float-to-int v2, v0

    .line 362
    int-to-float v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    move v1, v2

    .line 386
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    const/16 v0, 0xd

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 389
    iget-object v0, p0, Lcom/admaster/jice/a/o;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v0, p0, Lcom/admaster/jice/a/o;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 393
    return-void

    .line 348
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 349
    float-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-float v2, v2

    .line 350
    float-to-double v4, v0

    mul-double/2addr v4, v8

    double-to-int v0, v4

    int-to-float v0, v0

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_0

    .line 364
    :cond_1
    int-to-float v0, v3

    mul-float/2addr v0, v5

    float-to-int v2, v0

    .line 365
    int-to-float v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    move v1, v2

    .line 369
    goto :goto_1

    .line 370
    :cond_2
    float-to-int v2, v0

    .line 371
    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v2

    .line 374
    goto :goto_1

    .line 375
    :cond_3
    int-to-float v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 376
    float-to-int v0, v2

    .line 377
    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 378
    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v3

    .line 380
    goto :goto_1

    :cond_5
    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 310
    const-string v0, "JicePushView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method static synthetic e()Lcom/admaster/jice/a/w;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/admaster/jice/a/o;->j:Lcom/admaster/jice/a/w;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/admaster/jice/a/o;->b:Landroid/view/ViewGroup;

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    iget-object v1, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 84
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x78

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 87
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 90
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    new-instance v1, Lcom/admaster/jice/a/r;

    invoke-direct {v1, p0}, Lcom/admaster/jice/a/r;-><init>(Lcom/admaster/jice/a/o;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    iget-object v0, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;)I

    move-result v0

    .line 102
    if-ne v0, v2, :cond_2

    .line 103
    iget-object v1, p0, Lcom/admaster/jice/a/o;->e:Lcom/admaster/jice/b/d;

    invoke-virtual {v1}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v1

    iput-object v1, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    .line 108
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    invoke-virtual {v1}, Lcom/admaster/jice/b/e;->getType()Lcom/admaster/jice/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/admaster/jice/a/o;->g:Lcom/admaster/jice/b/f;

    .line 109
    iget-object v1, p0, Lcom/admaster/jice/a/o;->g:Lcom/admaster/jice/b/f;

    sget-object v2, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    if-ne v1, v2, :cond_3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/o;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 104
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/admaster/jice/a/o;->e:Lcom/admaster/jice/b/d;

    invoke-virtual {v1}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v1

    iput-object v1, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    invoke-virtual {v1}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admaster/jice/d/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string v1, "  image resource is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/o;->b(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/admaster/jice/a/o;->j:Lcom/admaster/jice/a/w;

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/admaster/jice/a/o;->j:Lcom/admaster/jice/a/w;

    invoke-interface {v1, v0}, Lcom/admaster/jice/a/w;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_4
    invoke-direct {p0, v1}, Lcom/admaster/jice/a/o;->a(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/admaster/jice/a/o;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/admaster/jice/a/o;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/admaster/jice/a/o;->d:Z

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/o;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/admaster/jice/a/s;

    invoke-direct {v1, p0}, Lcom/admaster/jice/a/s;-><init>(Lcom/admaster/jice/a/o;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admaster/jice/a/o;->d:Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/admaster/jice/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "show failed:push view isShowing"

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/o;->b(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/o;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/admaster/jice/a/o;->a:Landroid/content/Context;

    .line 402
    iput-object v0, p0, Lcom/admaster/jice/a/o;->b:Landroid/view/ViewGroup;

    .line 403
    iput-object v0, p0, Lcom/admaster/jice/a/o;->c:Landroid/view/ViewGroup;

    .line 404
    iput-object v0, p0, Lcom/admaster/jice/a/o;->h:Landroid/widget/ImageView;

    .line 405
    iput-object v0, p0, Lcom/admaster/jice/a/o;->f:Lcom/admaster/jice/b/e;

    .line 406
    sput-object v0, Lcom/admaster/jice/a/o;->j:Lcom/admaster/jice/a/w;

    .line 407
    return-void
.end method
