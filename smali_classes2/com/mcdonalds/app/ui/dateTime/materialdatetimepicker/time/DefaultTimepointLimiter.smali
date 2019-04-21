.class Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;
.super Ljava/lang/Object;
.source "DefaultTimepointLimiter.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exclusiveSelectableTimes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledTimes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

.field private mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

.field private mSelectableTimes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    .line 22
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    .line 23
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    .line 22
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    .line 23
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    .line 31
    const-class v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 32
    const-class v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->getExclusiveSelectableTimes(Ljava/util/TreeSet;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    .line 36
    return-void
.end method

.method private getExclusiveSelectableTimes(Ljava/util/TreeSet;Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;)",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "selectable":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;>;"
    .local p2, "disabled":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;>;"
    const-string v1, "getExclusiveSelectableTimes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 107
    .local v0, "output":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;>;"
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 108
    return-object v0
.end method

.method private searchValidTimePoint(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 12
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "resolution"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    const-string v8, "searchValidTimePoint"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    aput-object p2, v9, v11

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-direct {v3, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 280
    .local v3, "forward":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V

    .line 281
    .local v0, "backward":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    const/4 v6, 0x0

    .line 282
    .local v6, "iteration":I
    const/4 v7, 0x1

    .line 283
    .local v7, "resolutionMultiplier":I
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v8, :cond_0

    const/16 v7, 0x3c

    .line 284
    :cond_0
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v8, :cond_1

    const/16 v7, 0xe10

    .line 286
    :cond_1
    mul-int/lit8 v8, v7, 0x18

    if-ge v6, v8, :cond_6

    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 288
    invoke-virtual {v3, p3, v11}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->add(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;I)V

    .line 289
    const/4 v8, -0x1

    invoke-virtual {v0, p3, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->add(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;I)V

    .line 291
    if-eqz p2, :cond_2

    invoke-virtual {v3, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v8

    invoke-virtual {p1, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 292
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, v3}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 293
    .local v4, "forwardCeil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, v3}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 294
    .local v5, "forwardFloor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v3, v4, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v5, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 309
    .end local v3    # "forward":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v4    # "forwardCeil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v5    # "forwardFloor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :goto_0
    return-object v3

    .line 298
    .restart local v3    # "forward":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v8

    invoke-virtual {p1, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 299
    :cond_4
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 300
    .local v1, "backwardCeil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 301
    .local v2, "backwardFloor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v0, v2, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object v3, v0

    .line 302
    goto :goto_0

    .line 305
    .end local v1    # "backwardCeil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v2    # "backwardFloor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_5
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v8

    invoke-virtual {p1, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v9

    if-eq v8, v9, :cond_1

    invoke-virtual {v3, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v8

    invoke-virtual {p1, p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v9

    if-eq v8, v9, :cond_1

    :cond_6
    move-object v3, p1

    .line 309
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    const-string v0, "describeContents"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isAmDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "isAmDisabled"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(I)V

    .line 179
    .local v0, "midday":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 183
    :goto_0
    return v2

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v1

    if-ltz v1, :cond_1

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    .line 183
    goto :goto_0
.end method

.method public isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)Z
    .locals 4
    .param p1, "current"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "isOutOfRange"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-lez v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ILcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z
    .locals 11
    .param p1, "current"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "resolution"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "isOutOfRange"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v7

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v6

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    if-nez p1, :cond_1

    move v6, v7

    .line 161
    :cond_0
    :goto_0
    return v6

    .line 115
    :cond_1
    if-nez p2, :cond_9

    .line 116
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    if-gt v8, v9, :cond_0

    .line 118
    :cond_2
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 120
    :cond_3
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 121
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 122
    .local v0, "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 123
    .local v2, "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v0, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v2, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0

    .line 126
    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_5
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v8, :cond_8

    .line 127
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 128
    .restart local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 129
    .restart local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v0, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v2, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    move v7, v6

    :cond_7
    move v6, v7

    goto :goto_0

    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_8
    move v6, v7

    .line 132
    goto :goto_0

    .line 134
    :cond_9
    if-ne p2, v6, :cond_11

    .line 135
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_a

    .line 136
    new-instance v5, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v9

    invoke-direct {v5, v8, v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(II)V

    .line 137
    .local v5, "roundedMin":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v5, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v8

    if-gtz v8, :cond_0

    .line 140
    .end local v5    # "roundedMin":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_a
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_b

    .line 141
    new-instance v4, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    iget-object v9, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v9

    const/16 v10, 0x3b

    invoke-direct {v4, v8, v9, v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 142
    .local v4, "roundedMax":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v4, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 145
    .end local v4    # "roundedMax":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_b
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 146
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 147
    .restart local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 148
    .restart local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v0, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-nez v8, :cond_c

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v2, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_c
    move v6, v7

    goto/16 :goto_0

    .line 151
    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_d
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v8, :cond_10

    .line 152
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 153
    .restart local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v8, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v8, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 154
    .restart local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v0, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v1

    .line 155
    .local v1, "ceilExclude":Z
    sget-object v8, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v2, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v3

    .line 156
    .local v3, "floorExclude":Z
    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    :cond_e
    move v7, v6

    :cond_f
    move v6, v7

    goto/16 :goto_0

    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v1    # "ceilExclude":Z
    .end local v2    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v3    # "floorExclude":Z
    :cond_10
    move v6, v7

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_11
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public isPmDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "isPmDisabled"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(I)V

    .line 191
    .local v0, "midday":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v1

    if-gez v1, :cond_0

    .line 195
    :goto_0
    return v2

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v1

    if-gez v1, :cond_1

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    .line 195
    goto :goto_0
.end method

.method public roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 10
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "resolution"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v7, "roundToNearest"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-lez v7, :cond_1

    iget-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 275
    .end local p1    # "time":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_0
    :goto_0
    return-object p1

    .line 203
    .restart local p1    # "time":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-gez v7, :cond_2

    iget-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    goto :goto_0

    .line 206
    :cond_2
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-eq p2, v7, :cond_0

    .line 208
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 209
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 210
    .local v3, "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 212
    .local v0, "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    if-eqz v3, :cond_3

    if-nez v0, :cond_7

    .line 213
    :cond_3
    if-nez v3, :cond_4

    move-object v6, v0

    .line 214
    .local v6, "t":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :goto_1
    if-nez p2, :cond_5

    move-object p1, v6

    goto :goto_0

    .end local v6    # "t":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_4
    move-object v6, v3

    .line 213
    goto :goto_1

    .line 215
    .restart local v6    # "t":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_5
    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 216
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v7, :cond_6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_0

    :cond_6
    move-object p1, v6

    .line 217
    goto :goto_0

    .line 220
    .end local v6    # "t":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_7
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v7, :cond_a

    .line 221
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_8

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_8

    move-object p1, v0

    goto :goto_0

    .line 222
    :cond_8
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_9

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_9

    move-object p1, v3

    goto/16 :goto_0

    .line 223
    :cond_9
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_a

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 226
    :cond_a
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v7, :cond_12

    .line 227
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_b

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 228
    :cond_b
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_d

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_d

    .line 229
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_c

    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :goto_2
    move-object p1, v0

    goto/16 :goto_0

    .restart local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_c
    move-object v0, p1

    goto :goto_2

    .line 231
    :cond_d
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-ne v7, v8, :cond_f

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_f

    .line 232
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_e

    .end local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :goto_3
    move-object p1, v3

    goto/16 :goto_0

    .restart local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_e
    move-object v3, p1

    goto :goto_3

    .line 234
    :cond_f
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-eq v7, v8, :cond_10

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_10

    move-object p1, v0

    goto/16 :goto_0

    .line 235
    :cond_10
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_11

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-eq v7, v8, :cond_11

    move-object p1, v3

    goto/16 :goto_0

    .line 236
    :cond_11
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-eq v7, v8, :cond_12

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 239
    :cond_12
    invoke-virtual {p1, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 240
    .local v5, "floorDist":I
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 242
    .local v2, "ceilDist":I
    if-ge v5, v2, :cond_13

    .end local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :goto_4
    move-object p1, v3

    goto/16 :goto_0

    .restart local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    :cond_13
    move-object v3, v0

    goto :goto_4

    .line 245
    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v2    # "ceilDist":I
    .end local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v5    # "floorDist":I
    :cond_14
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 247
    if-eqz p2, :cond_15

    if-eq p2, p3, :cond_0

    .line 249
    :cond_15
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v7, :cond_16

    .line 250
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->searchValidTimePoint(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    goto/16 :goto_0

    .line 254
    :cond_16
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v7, :cond_18

    .line 255
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 256
    .restart local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 257
    .restart local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v0, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v1

    .line 258
    .local v1, "ceilDisabled":Z
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v3, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v4

    .line 260
    .local v4, "floorDisabled":Z
    if-nez v1, :cond_17

    if-eqz v4, :cond_0

    :cond_17
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->searchValidTimePoint(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    goto/16 :goto_0

    .line 264
    .end local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v1    # "ceilDisabled":Z
    .end local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .end local v4    # "floorDisabled":Z
    :cond_18
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v7, :cond_0

    .line 265
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 266
    .restart local v0    # "ceil":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    iget-object v7, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 267
    .restart local v3    # "floor":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v0, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v1

    .line 268
    .restart local v1    # "ceilDisabled":Z
    sget-object v7, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, v3, v7}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v4

    .line 270
    .restart local v4    # "floorDisabled":Z
    if-nez v1, :cond_19

    if-eqz v4, :cond_0

    :cond_19
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->searchValidTimePoint(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-string v0, "writeToParcel"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 44
    return-void
.end method
