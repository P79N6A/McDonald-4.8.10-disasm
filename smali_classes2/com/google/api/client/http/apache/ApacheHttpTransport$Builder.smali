.class public final Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
.super Ljava/lang/Object;
.source "ApacheHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/apache/ApacheHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private params:Lorg/apache/http/params/HttpParams;

.field private proxySelector:Ljava/net/ProxySelector;

.field private socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 261
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 267
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-void
.end method
