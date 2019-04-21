.class final Lcom/facebook/stetho/Stetho$2;
.super Ljava/lang/Thread;
.source "Stetho.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/Stetho;->initialize(Lcom/facebook/stetho/Stetho$Initializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initializer:Lcom/facebook/stetho/Stetho$Initializer;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/stetho/Stetho$Initializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p2, p0, Lcom/facebook/stetho/Stetho$2;->val$initializer:Lcom/facebook/stetho/Stetho$Initializer;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    new-instance v1, Lcom/facebook/stetho/server/LocalSocketHttpServer;

    iget-object v2, p0, Lcom/facebook/stetho/Stetho$2;->val$initializer:Lcom/facebook/stetho/Stetho$Initializer;

    invoke-direct {v1, v2}, Lcom/facebook/stetho/server/LocalSocketHttpServer;-><init>(Lcom/facebook/stetho/server/RegistryInitializer;)V

    .line 142
    .local v1, "server":Lcom/facebook/stetho/server/LocalSocketHttpServer;
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/stetho/server/LocalSocketHttpServer;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Could not start Stetho"

    invoke-static {v0, v2}, Lcom/facebook/stetho/common/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
