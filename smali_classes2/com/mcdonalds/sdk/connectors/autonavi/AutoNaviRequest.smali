.class public Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;
.super Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;
.source "AutoNaviRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/network/SimpleJsonRequestProvider;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;->mUrl:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-class v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method
