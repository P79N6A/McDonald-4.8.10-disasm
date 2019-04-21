.class final Lcom/ensighten/X$2;
.super Lcom/ensighten/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/X;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ensighten/X;


# direct methods
.method constructor <init>(Lcom/ensighten/X;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    iput-object p2, p0, Lcom/ensighten/X$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ensighten/X$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ensighten/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 339
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "Downloaded the configuration successfully."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    sget v1, Lcom/ensighten/g;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/ensighten/X;->a(Lorg/json/JSONObject;I)V

    .line 344
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 1054
    iget-boolean v0, v0, Lcom/ensighten/X;->l:Z

    .line 344
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 2054
    iget-boolean v0, v0, Lcom/ensighten/X;->g:Z

    .line 344
    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 3054
    iget-boolean v0, v0, Lcom/ensighten/X;->e:Z

    .line 344
    if-nez v0, :cond_3

    .line 346
    iget-object v6, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    iget-object v0, p0, Lcom/ensighten/X$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ensighten/X$2;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    .line 3181
    iget-object v2, v2, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 3403
    iget-object v2, v2, Lcom/ensighten/e;->d:Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/ensighten/Version;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/ensighten/Utils;->buildTagContainerURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4054
    iput-object v0, v6, Lcom/ensighten/X;->i:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 5054
    iget-object v0, v0, Lcom/ensighten/X;->i:Ljava/lang/String;

    .line 353
    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 6054
    iget-object v0, v0, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    .line 354
    iget-object v1, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 7054
    iget-object v1, v1, Lcom/ensighten/X;->i:Ljava/lang/String;

    .line 354
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 8054
    iput-boolean v7, v0, Lcom/ensighten/X;->l:Z

    .line 357
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 9054
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ensighten/X;->e:Z

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 10054
    iput-boolean v7, v0, Lcom/ensighten/X;->g:Z

    .line 361
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 11054
    iput-boolean v7, v0, Lcom/ensighten/X;->f:Z

    .line 362
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    sget v1, Lcom/ensighten/g;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/ensighten/X;->a(Lorg/json/JSONObject;I)V

    .line 363
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 12054
    invoke-virtual {v0}, Lcom/ensighten/X;->a()V

    .line 364
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 368
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "Error downloading the configuration."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 13054
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ensighten/X;->f:Z

    .line 371
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    const/4 v1, 0x0

    sget v2, Lcom/ensighten/g;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/ensighten/X;->a(Lorg/json/JSONObject;I)V

    .line 372
    iget-object v0, p0, Lcom/ensighten/X$2;->c:Lcom/ensighten/X;

    .line 14054
    invoke-virtual {v0}, Lcom/ensighten/X;->a()V

    .line 373
    return-void
.end method
