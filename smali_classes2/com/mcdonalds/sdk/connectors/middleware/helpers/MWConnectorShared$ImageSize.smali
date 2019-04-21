.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;
.super Ljava/lang/Enum;
.source "MWConnectorShared.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

.field public static final enum LARGE:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

.field public static final enum SMALL:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->SMALL:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    .line 86
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->LARGE:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->SMALL:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->LARGE:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    return-object v0
.end method
