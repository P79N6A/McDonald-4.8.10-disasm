.class public Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;
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
    name = "DriveRouteQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lcom/amap/api/services/route/o;

    invoke-direct {v0}, Lcom/amap/api/services/route/o;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    .line 685
    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 687
    if-nez v1, :cond_0

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    .line 692
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 693
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    sget-object v3, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 570
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    .line 571
    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    .line 572
    iput-object p4, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    .line 573
    iput-object p5, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    .line 574
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;
    .locals 6

    .prologue
    .line 772
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    const-string v1, "RouteSearch"

    const-string v2, "DriveRouteQueryclone"

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
    .line 559
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 737
    if-ne p0, p1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v0

    .line 739
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 740
    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 742
    goto :goto_0

    .line 743
    :cond_3
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 744
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 745
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 746
    goto :goto_0

    .line 747
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 748
    goto :goto_0

    .line 749
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-nez v2, :cond_6

    .line 750
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-eqz v2, :cond_7

    move v0, v1

    .line 751
    goto :goto_0

    .line 752
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 753
    goto :goto_0

    .line 754
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v2, :cond_8

    .line 755
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v2, :cond_9

    move v0, v1

    .line 756
    goto :goto_0

    .line 757
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 758
    goto :goto_0

    .line 759
    :cond_9
    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 760
    goto :goto_0

    .line 761
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-nez v2, :cond_b

    .line 762
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    .line 763
    goto :goto_0

    .line 764
    :cond_b
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 765
    goto :goto_0
.end method

.method public getAvoidRoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAvoidpolygons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    return-object v0
.end method

.method public getAvoidpolygonsStr()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 622
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 623
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    const/4 v0, 0x0

    .line 641
    :goto_0
    return-object v0

    :cond_1
    move v2, v3

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 627
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v4, v3

    .line 628
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 629
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 630
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 631
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_2

    .line 634
    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    .line 638
    const-string/jumbo v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 641
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    return v0
.end method

.method public getPassedByPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    return-object v0
.end method

.method public getPassedPointStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 597
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    .line 601
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 603
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 604
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 606
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 607
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 610
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAvoidRoad()Z
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getAvoidRoad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasAvoidpolygons()Z
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getAvoidpolygonsStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPassPoint()Z
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getPassedPointStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 718
    .line 720
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 722
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 725
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 727
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    add-int/2addr v0, v2

    .line 728
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 732
    return v0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v0

    goto :goto_2

    .line 728
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 668
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 670
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 671
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 675
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0
.end method
