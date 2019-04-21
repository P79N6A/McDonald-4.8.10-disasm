.class public Lcom/admaster/jice/api/JicePushActivity;
.super Landroid/app/Activity;
.source "JicePushActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static d:Lcom/admaster/jice/a/w;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field a:Landroid/view/View$OnClickListener;

.field private b:Lcom/admaster/jice/b/d;

.field private c:Lcom/admaster/jice/b/e;

.field private e:Lcom/admaster/jice/b/f;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    .line 41
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    .line 45
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->e:Lcom/admaster/jice/b/f;

    .line 47
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->g:Landroid/webkit/WebView;

    .line 297
    new-instance v0, Lcom/admaster/jice/api/a;

    invoke-direct {v0, p0}, Lcom/admaster/jice/api/a;-><init>(Lcom/admaster/jice/api/JicePushActivity;)V

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->a:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/api/JicePushActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a()Lcom/admaster/jice/a/w;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 13

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 170
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v0

    .line 171
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    .line 172
    invoke-static {p0}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;)I

    move-result v7

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 180
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 181
    float-to-double v8, v3

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int v0, v8

    int-to-float v2, v0

    .line 182
    float-to-double v8, v1

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v0, v8

    int-to-float v0, v0

    .line 188
    :goto_0
    const-string v8, "************************************************"

    invoke-direct {p0, v8}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "density:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "widthPix:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "heightPix:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "orientation:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mShowType:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/admaster/jice/api/JicePushActivity;->e:Lcom/admaster/jice/b/f;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bitmapWidth:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   bitmapHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bitmapWPx:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v3, v5

    invoke-static {p0, v3}, Lcom/admaster/jice/d/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   bitmapHPx:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v3, v4

    invoke-static {p0, v3}, Lcom/admaster/jice/d/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "maxWidth:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   maxHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 197
    const-string v1, "************************************************"

    invoke-direct {p0, v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 202
    int-to-float v1, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 203
    int-to-float v1, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    .line 205
    int-to-float v1, v5

    div-float v3, v2, v1

    .line 206
    int-to-float v1, v4

    div-float v6, v0, v1

    .line 207
    int-to-float v0, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 208
    int-to-float v0, v5

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 209
    int-to-float v0, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 214
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "scaleX:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  scaleY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adjustW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adjustH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 230
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adjsutW:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   adjustH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 232
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    const/16 v0, 0xd

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 235
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 240
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    .line 184
    float-to-double v8, v3

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v0, v8

    int-to-float v2, v0

    .line 185
    float-to-double v8, v1

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int v0, v8

    int-to-float v0, v0

    goto/16 :goto_0

    .line 211
    :cond_1
    int-to-float v0, v5

    mul-float/2addr v0, v6

    float-to-int v1, v0

    .line 212
    int-to-float v0, v4

    mul-float/2addr v0, v6

    float-to-int v0, v0

    goto/16 :goto_1

    .line 216
    :cond_2
    float-to-int v1, v2

    .line 217
    int-to-float v0, v4

    mul-float/2addr v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 220
    goto :goto_2

    .line 221
    :cond_3
    int-to-float v1, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 222
    float-to-int v1, v0

    .line 223
    int-to-float v2, v5

    mul-float/2addr v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v12, v1

    move v1, v0

    move v0, v12

    .line 224
    goto :goto_2

    :cond_4
    move v0, v4

    move v1, v5

    .line 226
    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v3

    goto/16 :goto_0
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

    .line 275
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 277
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 279
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 280
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 281
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 282
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 283
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 284
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 285
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 287
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 288
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 289
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 290
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 292
    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    .line 162
    invoke-direct {p0, p2}, Lcom/admaster/jice/api/JicePushActivity;->a(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/admaster/jice/api/JicePushActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    .line 243
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->g:Landroid/webkit/WebView;

    .line 244
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    iget-object v1, p0, Lcom/admaster/jice/api/JicePushActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 250
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAGwAAABsCAYAAACPZlfNAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0JENDhEODAwMzk3MTFFNkFCRENDMkQ2RUJBQTI3MkUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0JENDhEN0YwMzk3MTFFNkFCRENDMkQ2RUJBQTI3MkUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgTWFjaW50b3NoIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9IjUyM0UzN0UwMzMxOEU1QkNDRTYzNzA4Njg0MTBENkNFIiBzdFJlZjpkb2N1bWVudElEPSI1MjNFMzdFMDMzMThFNUJDQ0U2MzcwODY4NDEwRDZDRSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PprAUIQAAAmrSURBVHja7J1rTJRXGsePIDeFVRFqs3Wt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"

    invoke-static {v0}, Lcom/admaster/jice/d/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 253
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

    invoke-direct {p0, v3}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 254
    if-eqz v0, :cond_0

    .line 255
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    const/16 v1, 0xb

    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 263
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 264
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 265
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->g:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p2}, Lcom/admaster/jice/api/JicePushActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static a(Lcom/admaster/jice/a/w;)V
    .locals 0

    .prologue
    .line 157
    sput-object p0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    .line 158
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method static synthetic b(Lcom/admaster/jice/api/JicePushActivity;)Lcom/admaster/jice/b/d;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    .line 369
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    .line 370
    sput-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    .line 371
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->e:Lcom/admaster/jice/b/f;

    .line 372
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    .line 373
    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->g:Landroid/webkit/WebView;

    .line 374
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->finish()V

    .line 375
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/admaster/jice/api/JicePushActivity;->overridePendingTransition(II)V

    .line 376
    return-void
.end method

.method static synthetic c(Lcom/admaster/jice/api/JicePushActivity;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/admaster/jice/api/JicePushActivity;->b()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 355
    sget-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    invoke-interface {v0}, Lcom/admaster/jice/a/w;->a()V

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/admaster/jice/api/JicePushActivity;->b()V

    .line 359
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 327
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JicePushView does not support current screen orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/admaster/jice/api/JicePushActivity;->b()V

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    goto :goto_0

    .line 341
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->e:Lcom/admaster/jice/b/f;

    sget-object v1, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/admaster/jice/api/JicePushActivity;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 344
    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "JicePushActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "JicePushActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->setTheme(I)V

    .line 63
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    const-string v2, "pushviewconfig"

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/b/d;

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JicePushActivity on init:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   jiceViewCallback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "jicePushActivity Constructor found JicePushConfig is null."

    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->finish()V

    .line 71
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 144
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "JicePushActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;)I

    move-result v2

    .line 76
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    .line 82
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    if-nez v0, :cond_3

    .line 83
    const-string v0, "jicePushActivity constructor found JicePushView current Screen Materical is null!"

    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->finish()V

    .line 85
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1

    .line 78
    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    goto :goto_2

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getType()Lcom/admaster/jice/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->e:Lcom/admaster/jice/b/f;

    .line 92
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const/16 v0, 0x78

    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/admaster/jice/api/JicePushActivity;->setContentView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->e:Lcom/admaster/jice/b/f;

    sget-object v4, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    if-ne v0, v4, :cond_6

    .line 106
    :try_start_2
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getCacheBitmap()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 112
    :goto_3
    if-nez v0, :cond_4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/admaster/jice/d/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string v1, "  image resource is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->finish()V

    .line 120
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    .line 122
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V

    .line 141
    :goto_4
    sget-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    if-eqz v0, :cond_5

    .line 142
    sget-object v0, Lcom/admaster/jice/api/JicePushActivity;->d:Lcom/admaster/jice/a/w;

    iget-object v1, p0, Lcom/admaster/jice/api/JicePushActivity;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v1}, Lcom/admaster/jice/b/d;->getPushId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/admaster/jice/a/w;->b(Ljava/lang/String;)V

    .line 144
    :cond_5
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/admaster/jice/api/JicePushActivity;->c:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v2}, Lcom/admaster/jice/d/e;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, "  image resource is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/admaster/jice/api/JicePushActivity;->finish()V

    .line 135
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 137
    :cond_7
    invoke-direct {p0, v3, v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 364
    invoke-direct {p0}, Lcom/admaster/jice/api/JicePushActivity;->b()V

    .line 365
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
