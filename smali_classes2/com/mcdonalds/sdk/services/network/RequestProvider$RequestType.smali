.class public final enum Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
.super Ljava/lang/Enum;
.source "RequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/RequestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

.field public static final enum HTML:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

.field public static final enum IMAGE:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

.field public static final enum JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

.field public static final enum MMAP_JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    .line 53
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    const-string v1, "MMAP_JSON"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->MMAP_JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    .line 54
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->IMAGE:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    .line 55
    new-instance v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->HTML:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->MMAP_JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->IMAGE:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->HTML:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->$VALUES:[Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->$VALUES:[Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method
