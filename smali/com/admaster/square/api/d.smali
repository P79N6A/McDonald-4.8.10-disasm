.class Lcom/admaster/square/api/d;
.super Ljava/lang/Object;
.source "ConvMobiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admaster/square/api/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/admaster/square/api/CustomEvent;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/admaster/square/api/c;Ljava/lang/String;Lcom/admaster/square/api/CustomEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    iput-object p2, p0, Lcom/admaster/square/api/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/admaster/square/api/d;->c:Lcom/admaster/square/api/CustomEvent;

    iput-object p4, p0, Lcom/admaster/square/api/d;->d:Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    invoke-static {v0}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/admaster/square/utils/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    sget-object v1, Lcom/admaster/square/utils/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/admaster/square/api/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/admaster/square/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_2

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/admaster/square/api/d;->c:Lcom/admaster/square/api/CustomEvent;

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    invoke-static {v0}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/admaster/square/api/d;->c:Lcom/admaster/square/api/CustomEvent;

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    if-eq v0, v1, :cond_3

    .line 287
    iget-object v0, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    iget-object v1, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    invoke-static {v1}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/square/api/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/admaster/square/api/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/admaster/square/api/d;->c:Lcom/admaster/square/api/CustomEvent;

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    iget-object v1, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    invoke-static {v1}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/square/api/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_4
    const-string v0, "network connected is failed!"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/admaster/square/api/d;->c:Lcom/admaster/square/api/CustomEvent;

    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    if-ne v0, v1, :cond_5

    .line 295
    iget-object v0, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    iget-object v1, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    invoke-static {v1}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/square/api/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    iget-object v1, p0, Lcom/admaster/square/api/d;->a:Lcom/admaster/square/api/c;

    invoke-static {v1}, Lcom/admaster/square/api/c;->a(Lcom/admaster/square/api/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/square/api/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/admaster/square/api/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
