.class public abstract Lcom/facebook/stetho/Stetho$Initializer;
.super Ljava/lang/Object;
.source "Stetho.java"

# interfaces
.implements Lcom/facebook/stetho/server/RegistryInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/Stetho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initializer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/Stetho$Initializer$LoggingCatchAllHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/stetho/Stetho$Initializer;->mContext:Landroid/content/Context;

    .line 381
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/stetho/Stetho$Initializer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/Stetho$Initializer;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$Initializer;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected addCustomEntries(Lorg/apache/http/protocol/HttpRequestHandlerRegistry;)V
    .locals 0
    .param p1, "registry"    # Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    .prologue
    .line 422
    return-void
.end method

.method protected abstract getDumperPlugins()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/dumpapp/DumperPlugin;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract getInspectorModules()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final getRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .locals 9

    .prologue
    .line 385
    new-instance v4, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v4}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 387
    .local v4, "registry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    invoke-virtual {p0}, Lcom/facebook/stetho/Stetho$Initializer;->getDumperPlugins()Ljava/lang/Iterable;

    move-result-object v2

    .line 388
    .local v2, "dumperPlugins":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/stetho/dumpapp/DumperPlugin;>;"
    if-eqz v2, :cond_0

    .line 389
    new-instance v1, Lcom/facebook/stetho/dumpapp/Dumper;

    invoke-direct {v1, v2}, Lcom/facebook/stetho/dumpapp/Dumper;-><init>(Ljava/lang/Iterable;)V

    .line 391
    .local v1, "dumper":Lcom/facebook/stetho/dumpapp/Dumper;
    const-string v5, "/dumpapp"

    new-instance v6, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;

    iget-object v7, p0, Lcom/facebook/stetho/Stetho$Initializer;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;-><init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 392
    const-string v5, "/dumpapp-raw"

    new-instance v6, Lcom/facebook/stetho/dumpapp/RawDumpappHandler;

    iget-object v7, p0, Lcom/facebook/stetho/Stetho$Initializer;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Lcom/facebook/stetho/dumpapp/RawDumpappHandler;-><init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 395
    .end local v1    # "dumper":Lcom/facebook/stetho/dumpapp/Dumper;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/stetho/Stetho$Initializer;->getInspectorModules()Ljava/lang/Iterable;

    move-result-object v3

    .line 396
    .local v3, "inspectorModules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;>;"
    if-eqz v3, :cond_1

    .line 397
    new-instance v0, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;

    iget-object v5, p0, Lcom/facebook/stetho/Stetho$Initializer;->mContext:Landroid/content/Context;

    const-string v6, "/inspector"

    invoke-direct {v0, v5, v6}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    .local v0, "discoveryHandler":Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;
    invoke-virtual {v0, v4}, Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;->register(Lorg/apache/http/protocol/HttpRequestHandlerRegistry;)V

    .line 402
    const-string v5, "/inspector"

    new-instance v6, Lcom/facebook/stetho/websocket/WebSocketHandler;

    iget-object v7, p0, Lcom/facebook/stetho/Stetho$Initializer;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/facebook/stetho/inspector/ChromeDevtoolsServer;

    invoke-direct {v8, v3}, Lcom/facebook/stetho/inspector/ChromeDevtoolsServer;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v6, v7, v8}, Lcom/facebook/stetho/websocket/WebSocketHandler;-><init>(Landroid/content/Context;Lcom/facebook/stetho/websocket/SimpleEndpoint;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 407
    .end local v0    # "discoveryHandler":Lcom/facebook/stetho/inspector/ChromeDiscoveryHandler;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/stetho/Stetho$Initializer;->addCustomEntries(Lorg/apache/http/protocol/HttpRequestHandlerRegistry;)V

    .line 409
    const-string v5, "/*"

    new-instance v6, Lcom/facebook/stetho/Stetho$Initializer$LoggingCatchAllHandler;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/facebook/stetho/Stetho$Initializer$LoggingCatchAllHandler;-><init>(Lcom/facebook/stetho/Stetho$1;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 411
    return-object v4
.end method
