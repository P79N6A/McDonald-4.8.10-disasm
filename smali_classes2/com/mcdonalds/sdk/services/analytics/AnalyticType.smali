.class public final enum Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
.super Ljava/lang/Enum;
.source "AnalyticType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/services/analytics/AnalyticType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

.field public static final enum Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

.field public static final enum Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

.field public static final enum Exception:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

.field public static final enum NewSession:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

.field public static final enum ScreenLoad:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

.field public static final enum Transaction:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    const-string v1, "ScreenLoad"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ScreenLoad:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 19
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    const-string v1, "Event"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 20
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    const-string v1, "Exception"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Exception:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    const-string v1, "NewSession"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->NewSession:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 22
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    const-string v1, "Transaction"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Transaction:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ScreenLoad:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Exception:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->NewSession:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Transaction:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->$VALUES:[Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->$VALUES:[Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    return-object v0
.end method
