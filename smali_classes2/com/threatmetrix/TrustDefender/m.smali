.class Lcom/threatmetrix/TrustDefender/m;
.super Lcom/threatmetrix/TrustDefender/o;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Lcom/threatmetrix/TrustDefender/aj;

.field private e:Lcom/threatmetrix/TrustDefender/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/threatmetrix/TrustDefender/m;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/m;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/threatmetrix/TrustDefender/am;Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;Ljava/util/Map;Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/e;)V
    .locals 9
    .param p1, "client"    # Lcom/threatmetrix/TrustDefender/am;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/threatmetrix/TrustDefender/n;
    .param p5, "sdk"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p6, "state"    # Lcom/threatmetrix/TrustDefender/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/threatmetrix/TrustDefender/am;",
            "Ljava/lang/String;",
            "Lcom/threatmetrix/TrustDefender/n;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/threatmetrix/TrustDefender/TrustDefender;",
            "Lcom/threatmetrix/TrustDefender/e;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 19
    sget-object v2, Lcom/threatmetrix/TrustDefender/o$a;->a:Lcom/threatmetrix/TrustDefender/o$a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/threatmetrix/TrustDefender/o;-><init>(Lcom/threatmetrix/TrustDefender/am;Lcom/threatmetrix/TrustDefender/o$a;Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;Ljava/util/Map;Lcom/threatmetrix/TrustDefender/TrustDefender;Landroid/content/Context;Lcom/threatmetrix/TrustDefender/e;)V

    .line 12
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    .line 13
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/m;->e:Lcom/threatmetrix/TrustDefender/e;

    .line 20
    iput-object p6, p0, Lcom/threatmetrix/TrustDefender/m;->e:Lcom/threatmetrix/TrustDefender/e;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/m;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v0}, Lcom/threatmetrix/TrustDefender/aq;->f()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto :goto_0

    .line 82
    :cond_1
    invoke-super {p0}, Lcom/threatmetrix/TrustDefender/o;->a()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    .line 30
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/m;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "starting retrieval: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/m;->d:Lcom/threatmetrix/TrustDefender/n;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    invoke-super {p0}, Lcom/threatmetrix/TrustDefender/o;->run()V

    .line 47
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/m;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 49
    new-instance v2, Lcom/threatmetrix/TrustDefender/aj;

    invoke-direct {v2}, Lcom/threatmetrix/TrustDefender/aj;-><init>()V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    .line 50
    const/4 v1, 0x0

    .line 53
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v2}, Lcom/threatmetrix/TrustDefender/aq;->d()Ljava/io/InputStream;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    invoke-virtual {v2, v1}, Lcom/threatmetrix/TrustDefender/aj;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v2}, Lcom/threatmetrix/TrustDefender/aq;->e()V

    .line 72
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->e:Lcom/threatmetrix/TrustDefender/e;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->e:Lcom/threatmetrix/TrustDefender/e;

    invoke-interface {v2}, Lcom/threatmetrix/TrustDefender/e;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    sget-object v2, Lcom/threatmetrix/TrustDefender/m;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "starting retrieval: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but interrupted by cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefender/m;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "starting retrieval: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->e:Lcom/threatmetrix/TrustDefender/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->e:Lcom/threatmetrix/TrustDefender/e;

    invoke-interface {v2}, Lcom/threatmetrix/TrustDefender/e;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    sget-object v2, Lcom/threatmetrix/TrustDefender/m;->f:Ljava/lang/String;

    const-string v3, "IO Error, probably due to cancel"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/m;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v2}, Lcom/threatmetrix/TrustDefender/aq;->e()V

    goto :goto_0

    .line 64
    :cond_2
    :try_start_3
    sget-object v2, Lcom/threatmetrix/TrustDefender/m;->f:Ljava/lang/String;

    const-string v3, "IO Error"

    invoke-static {v2, v3, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/m;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v3}, Lcom/threatmetrix/TrustDefender/aq;->e()V

    throw v2
.end method
