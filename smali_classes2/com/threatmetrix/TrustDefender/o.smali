.class Lcom/threatmetrix/TrustDefender/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/o$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private final a:Lcom/threatmetrix/TrustDefender/o$a;

.field final b:Lcom/threatmetrix/TrustDefender/aq;

.field final c:Ljava/lang/String;

.field final d:Lcom/threatmetrix/TrustDefender/n;

.field private e:Landroid/content/Context;

.field private final f:Lcom/threatmetrix/TrustDefender/TrustDefender;

.field private g:Lcom/threatmetrix/TrustDefender/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/threatmetrix/TrustDefender/o;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/threatmetrix/TrustDefender/am;Lcom/threatmetrix/TrustDefender/o$a;Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;Ljava/util/Map;Lcom/threatmetrix/TrustDefender/TrustDefender;Landroid/content/Context;Lcom/threatmetrix/TrustDefender/e;)V
    .locals 1
    .param p1, "client"    # Lcom/threatmetrix/TrustDefender/am;
    .param p2, "type"    # Lcom/threatmetrix/TrustDefender/o$a;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/threatmetrix/TrustDefender/n;
    .param p6, "sdk"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "state"    # Lcom/threatmetrix/TrustDefender/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/threatmetrix/TrustDefender/am;",
            "Lcom/threatmetrix/TrustDefender/o$a;",
            "Ljava/lang/String;",
            "Lcom/threatmetrix/TrustDefender/n;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/threatmetrix/TrustDefender/TrustDefender;",
            "Landroid/content/Context;",
            "Lcom/threatmetrix/TrustDefender/e;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->e:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->g:Lcom/threatmetrix/TrustDefender/e;

    .line 42
    iput-object p8, p0, Lcom/threatmetrix/TrustDefender/o;->g:Lcom/threatmetrix/TrustDefender/e;

    .line 44
    invoke-interface {p1, p8}, Lcom/threatmetrix/TrustDefender/am;->a(Lcom/threatmetrix/TrustDefender/e;)Lcom/threatmetrix/TrustDefender/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    .line 45
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v0, p5}, Lcom/threatmetrix/TrustDefender/aq;->a(Ljava/util/Map;)V

    .line 47
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    .line 48
    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/o;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/threatmetrix/TrustDefender/o;->d:Lcom/threatmetrix/TrustDefender/n;

    .line 50
    iput-object p6, p0, Lcom/threatmetrix/TrustDefender/o;->f:Lcom/threatmetrix/TrustDefender/TrustDefender;

    .line 51
    iput-object p7, p0, Lcom/threatmetrix/TrustDefender/o;->e:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v0}, Lcom/threatmetrix/TrustDefender/aq;->f()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v0}, Lcom/threatmetrix/TrustDefender/aq;->g()I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v0}, Lcom/threatmetrix/TrustDefender/aq;->c()V

    .line 138
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 58
    .local v8, "startTime":J
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "starting retrieval: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/threatmetrix/TrustDefender/o;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-wide/16 v6, -0x1

    .line 60
    .local v6, "result":J
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    sget-object v11, Lcom/threatmetrix/TrustDefender/o$a;->a:Lcom/threatmetrix/TrustDefender/o$a;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    sget-object v11, Lcom/threatmetrix/TrustDefender/o$a;->b:Lcom/threatmetrix/TrustDefender/o$a;

    if-ne v10, v11, :cond_5

    .line 64
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->d:Lcom/threatmetrix/TrustDefender/n;

    if-nez v10, :cond_3

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/o;->c:Ljava/lang/String;

    .line 65
    .local v3, "url":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v10, v3}, Lcom/threatmetrix/TrustDefender/aq;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 89
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 90
    .local v4, "endTime":J
    sub-long v10, v4, v8

    const-wide/32 v12, 0xf4240

    div-long v0, v10, v12

    .line 91
    .local v0, "duration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_7

    .line 93
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "failed to retrieve from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v12}, Lcom/threatmetrix/TrustDefender/aq;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v12}, Lcom/threatmetrix/TrustDefender/aq;->f()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->f:Lcom/threatmetrix/TrustDefender/TrustDefender;

    if-eqz v10, :cond_2

    .line 96
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->f:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v11}, Lcom/threatmetrix/TrustDefender/aq;->f()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 118
    .end local v0    # "duration":J
    .end local v4    # "endTime":J
    :cond_2
    :goto_2
    return-void

    .line 64
    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/o;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/o;->d:Lcom/threatmetrix/TrustDefender/n;

    invoke-virtual {v11}, Lcom/threatmetrix/TrustDefender/n;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/InterruptedException;
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->g:Lcom/threatmetrix/TrustDefender/e;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->g:Lcom/threatmetrix/TrustDefender/e;

    invoke-interface {v10}, Lcom/threatmetrix/TrustDefender/e;->a()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 71
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    const-string v11, "interrupted due to cancel"

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_3
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->f:Lcom/threatmetrix/TrustDefender/TrustDefender;

    if-eqz v10, :cond_2

    .line 79
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->f:Lcom/threatmetrix/TrustDefender/TrustDefender;

    sget-object v11, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v10, v11}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    goto :goto_2

    .line 75
    :cond_4
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    const-string v11, "interrupted, aborting connection"

    invoke-static {v10, v11, v2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 84
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    sget-object v11, Lcom/threatmetrix/TrustDefender/o$a;->c:Lcom/threatmetrix/TrustDefender/o$a;

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    sget-object v11, Lcom/threatmetrix/TrustDefender/o$a;->d:Lcom/threatmetrix/TrustDefender/o$a;

    if-ne v10, v11, :cond_1

    .line 86
    :cond_6
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    iget-object v11, p0, Lcom/threatmetrix/TrustDefender/o;->c:Ljava/lang/String;

    iget-object v12, p0, Lcom/threatmetrix/TrustDefender/o;->d:Lcom/threatmetrix/TrustDefender/n;

    invoke-interface {v10, v11, v12}, Lcom/threatmetrix/TrustDefender/aq;->a(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 101
    .restart local v0    # "duration":J
    .restart local v4    # "endTime":J
    :cond_7
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "retrieved: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v12}, Lcom/threatmetrix/TrustDefender/aq;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-wide/16 v10, 0xc8

    cmp-long v10, v6, v10

    if-eqz v10, :cond_8

    .line 106
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "error ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") status on request to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v12}, Lcom/threatmetrix/TrustDefender/aq;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 111
    :cond_8
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    sget-object v11, Lcom/threatmetrix/TrustDefender/o$a;->b:Lcom/threatmetrix/TrustDefender/o$a;

    if-eq v10, v11, :cond_9

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->a:Lcom/threatmetrix/TrustDefender/o$a;

    sget-object v11, Lcom/threatmetrix/TrustDefender/o$a;->d:Lcom/threatmetrix/TrustDefender/o$a;

    if-ne v10, v11, :cond_2

    .line 113
    :cond_9
    sget-object v10, Lcom/threatmetrix/TrustDefender/o;->h:Ljava/lang/String;

    const-string v11, "consuming content"

    invoke-static {v10, v11}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/o;->b:Lcom/threatmetrix/TrustDefender/aq;

    invoke-interface {v10}, Lcom/threatmetrix/TrustDefender/aq;->e()V

    goto/16 :goto_2
.end method
