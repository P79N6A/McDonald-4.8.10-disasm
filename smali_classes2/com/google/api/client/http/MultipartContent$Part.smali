.class public final Lcom/google/api/client/http/MultipartContent$Part;
.super Ljava/lang/Object;
.source "MultipartContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/MultipartContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field content:Lcom/google/api/client/http/HttpContent;

.field encoding:Lcom/google/api/client/http/HttpEncoding;

.field headers:Lcom/google/api/client/http/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/MultipartContent$Part;-><init>(Lcom/google/api/client/http/HttpContent;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpContent;)V
    .locals 1
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/http/MultipartContent$Part;-><init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p2, "content"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/MultipartContent$Part;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/MultipartContent$Part;

    .line 237
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/MultipartContent$Part;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/MultipartContent$Part;

    .line 238
    return-void
.end method


# virtual methods
.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/MultipartContent$Part;
    .locals 0
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    .line 243
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/MultipartContent$Part;
    .locals 0
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 254
    return-object p0
.end method
