.class Lcom/mcdonalds/sdk/services/network/GsonRequest$1;
.super Ljava/lang/Object;
.source "GsonRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/network/GsonRequest;->fromProvider(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/network/RequestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<TV;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

.field final synthetic val$body:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/network/GsonRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/GsonRequest;

    .prologue
    .line 274
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->val$body:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getCustomTypeAdapters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    move-result-object v0

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getResponseClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/GsonRequest$1;->this$0:Lcom/mcdonalds/sdk/services/network/GsonRequest;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/GsonRequest;->access$000(Lcom/mcdonalds/sdk/services/network/GsonRequest;)Lcom/mcdonalds/sdk/services/network/RequestProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getURLString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/GsonRequest$1;, "Lcom/mcdonalds/sdk/services/network/GsonRequest$1;"
    .local p1, "body":Ljava/lang/Object;, "TE;"
    return-void
.end method
