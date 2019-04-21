.class public Lcom/mcdonalds/sdk/modules/models/PromotionView;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "PromotionView.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PromotionView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProductSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionId:Ljava/lang/Integer;

.field private mValidationErrorCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PromotionView$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/PromotionView$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 60
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mPromotionId:Ljava/lang/Integer;

    .line 61
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mValidationErrorCode:Ljava/lang/Integer;

    .line 62
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/ProductView;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mProductSet:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getProductSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mProductSet:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mPromotionId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValidationErrorCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mValidationErrorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setProductSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "mProductSet":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mProductSet:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setPromotionId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "Id"    # Ljava/lang/Integer;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mPromotionId:Ljava/lang/Integer;

    .line 25
    return-void
.end method

.method public setValidationErrorCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "validationCode"    # Ljava/lang/Integer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mValidationErrorCode:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mPromotionId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mValidationErrorCode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PromotionView;->mProductSet:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    return-void
.end method
