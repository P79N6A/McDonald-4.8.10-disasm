.class Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockLocation"
.end annotation


# static fields
.field public static final CACHE_KEY:Ljava/lang/String;


# instance fields
.field private mLatitude:Ljava/lang/Double;

.field private mLongitude:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    const-class v0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->CACHE_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/sdk/modules/ModuleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/sdk/modules/ModuleManager$1;

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->mLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->mLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/Double;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->mLatitude:Ljava/lang/Double;

    .line 297
    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->mLongitude:Ljava/lang/Double;

    .line 305
    return-void
.end method
