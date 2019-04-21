.class public final enum Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;
.super Ljava/lang/Enum;
.source "CustomerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountDeleteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

.field public static final enum DEACTIVATE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

.field public static final enum DELETE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

.field public static final enum NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    const-string v1, "DEACTIVATE"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->DEACTIVATE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    .line 41
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->DELETE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    .line 42
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->DEACTIVATE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->DELETE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->$VALUES:[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->$VALUES:[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    return-object v0
.end method
