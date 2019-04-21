.class public final enum Lcom/mcdonalds/sdk/modules/models/AddressType;
.super Ljava/lang/Enum;
.source "AddressType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/AddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Billing:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Delivery:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Home1:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Home2:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Office1:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Office2:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum Other:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field public static final enum UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "UNUSED"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Home1"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Home2"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Office1"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Office2"

    invoke-direct {v0, v1, v7}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Other"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Other:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Billing"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Billing:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 15
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    const-string v1, "Delivery"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Delivery:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/AddressType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressType;->Other:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressType;->Billing:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressType;->Delivery:Lcom/mcdonalds/sdk/modules/models/AddressType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/AddressType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/AddressType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/AddressType;

    return-object v0
.end method
