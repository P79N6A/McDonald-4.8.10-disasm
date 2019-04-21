.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
.super Ljava/lang/Object;
.source "Timepoint.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(II)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p2, "minute"    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 47
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p2, "minute"    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .param p3, "second"    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    rem-int/lit8 v0, p1, 0x18

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    .line 40
    rem-int/lit8 v0, p2, 0x3c

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    .line 41
    rem-int/lit8 v0, p3, 0x3c

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)V
    .locals 3
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 33
    iget v0, p1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    iget v1, p1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    iget v2, p1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;I)V
    .locals 4
    .param p1, "type"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
    .param p2, "value"    # I

    .prologue
    const-string v0, "add"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 91
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p1, v0, :cond_0

    mul-int/lit8 p2, p2, 0x3c

    .line 92
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p1, v0, :cond_1

    mul-int/lit16 p2, p2, 0xe10

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->toSeconds()I

    move-result v0

    add-int/2addr p2, v0

    .line 95
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$2;->$SwitchMap$com$mcdonalds$app$ui$dateTime$materialdatetimepicker$time$Timepoint$TYPE:[I

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 97
    :pswitch_0
    rem-int/lit16 v0, p2, 0xe10

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    .line 99
    :pswitch_1
    rem-int/lit16 v0, p2, 0xe10

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    .line 101
    :pswitch_2
    div-int/lit16 v0, p2, 0xe10

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I
    .locals 3
    .param p1, "t"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "compareTo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "compareTo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    check-cast p1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    const-string v0, "describeContents"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z
    .locals 5
    .param p1, "time"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "resolution"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "equals"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 137
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return v2

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 139
    .local v0, "output":Z
    sget-object v3, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$2;->$SwitchMap$com$mcdonalds$app$ui$dateTime$materialdatetimepicker$time$Timepoint$TYPE:[I

    invoke-virtual {p2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v2, v0

    .line 147
    goto :goto_0

    .line 141
    :pswitch_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 143
    :goto_2
    :pswitch_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 145
    :goto_3
    :pswitch_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v1

    :goto_4
    goto :goto_1

    :cond_1
    move v0, v2

    .line 141
    goto :goto_2

    :cond_2
    move v0, v2

    .line 143
    goto :goto_3

    :cond_3
    move v0, v2

    .line 145
    goto :goto_4

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "equals"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    .line 133
    .local v0, "timepoint":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public get(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)I
    .locals 3
    .param p1, "type"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "get"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 106
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$2;->$SwitchMap$com$mcdonalds$app$ui$dateTime$materialdatetimepicker$time$Timepoint$TYPE:[I

    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHour()I
    .locals 2
    .annotation build Landroid/support/annotation/IntRange;
    .end annotation

    .prologue
    const-string v0, "getHour"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 2
    .annotation build Landroid/support/annotation/IntRange;
    .end annotation

    .prologue
    const-string v0, "getMinute"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 2
    .annotation build Landroid/support/annotation/IntRange;
    .end annotation

    .prologue
    const-string v0, "getSecond"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const-string v0, "hashCode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->toSeconds()I

    move-result v0

    return v0
.end method

.method public isAM()Z
    .locals 2

    .prologue
    const-string v0, "isAM"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPM()Z
    .locals 2

    .prologue
    const-string v0, "isPM"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAM()V
    .locals 2

    .prologue
    const-string v0, "setAM"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    .line 84
    :cond_0
    return-void
.end method

.method public setPM()V
    .locals 2

    .prologue
    const-string v0, "setPM"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    add-int/lit8 v0, v0, 0xc

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    .line 88
    :cond_0
    return-void
.end method

.method public toSeconds()I
    .locals 2

    .prologue
    const-string v0, "toSeconds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    mul-int/lit16 v0, v0, 0xe10

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "toString"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 157
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;->second:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
