.class public Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusRouteQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/amap/api/services/route/n;

    invoke-direct {v0}, Lcom/amap/api/services/route/n;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    .line 400
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 360
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    .line 361
    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    .line 362
    iput p4, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    .line 363
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
    .locals 5

    .prologue
    .line 460
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    iget v4, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/lang/String;I)V

    return-object v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string v1, "RouteSearch"

    const-string v2, "BusRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    if-ne p0, p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 436
    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 438
    goto :goto_0

    .line 439
    :cond_3
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    .line 440
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 441
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 442
    goto :goto_0

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 444
    goto :goto_0

    .line 445
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v2, :cond_6

    .line 446
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v2, :cond_7

    move v0, v1

    .line 447
    goto :goto_0

    .line 448
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 449
    goto :goto_0

    .line 450
    :cond_7
    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 451
    goto :goto_0

    .line 452
    :cond_8
    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    iget v3, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 453
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    return v0
.end method

.method public getNightFlag()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 421
    .line 423
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 424
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 426
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    add-int/2addr v0, v1

    .line 427
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    add-int/2addr v0, v1

    .line 428
    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 389
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return-void
.end method
