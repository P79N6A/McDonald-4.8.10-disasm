.class final Lcom/threatmetrix/TrustDefender/g$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1255
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    .line 1256
    const-string v0, "android.webkit.WebViewClient"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->b:Ljava/lang/Class;

    .line 1257
    const-string v0, "android.webkit.WebSettings"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->c:Ljava/lang/Class;

    .line 1258
    const-string v0, "android.webkit.WebSettings$PluginState"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->d:Ljava/lang/Class;

    .line 1259
    const-string v0, "android.webkit.WebChromeClient"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->e:Ljava/lang/Class;

    .line 1260
    const-string v0, "android.webkit.JsResult"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1262
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->f:Ljava/lang/Class;

    const-string v1, "confirm"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->g:Ljava/lang/reflect/Method;

    .line 1263
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    const-string v1, "destroy"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->h:Ljava/lang/reflect/Method;

    .line 1264
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    const-string v1, "loadUrl"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->i:Ljava/lang/reflect/Method;

    .line 1265
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    const-string v1, "loadData"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->j:Ljava/lang/reflect/Method;

    .line 1266
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    const-string v1, "getSettings"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->k:Ljava/lang/reflect/Method;

    .line 1267
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    const-string v1, "setWebViewClient"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$o;->b:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->l:Ljava/lang/reflect/Method;

    .line 1268
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->a:Ljava/lang/Class;

    const-string v1, "setWebChromeClient"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$o;->e:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->m:Ljava/lang/reflect/Method;

    .line 1269
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->c:Ljava/lang/Class;

    const-string v1, "getUserAgentString"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->n:Ljava/lang/reflect/Method;

    .line 1270
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->c:Ljava/lang/Class;

    const-string v1, "setJavaScriptEnabled"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->o:Ljava/lang/reflect/Method;

    .line 1272
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->d:Ljava/lang/Class;

    const-string v1, "ON"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$o;->p:Ljava/lang/reflect/Field;

    .line 1273
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 1277
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$o;->p:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
