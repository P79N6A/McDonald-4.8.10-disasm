.class public final enum Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
.super Ljava/lang/Enum;
.source "RequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/RequestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

.field public static final enum DELETE:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

.field public static final enum GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

.field public static final enum POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

.field public static final enum PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    .line 43
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    .line 44
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    .line 45
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->DELETE:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->DELETE:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->$VALUES:[Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->$VALUES:[Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method
