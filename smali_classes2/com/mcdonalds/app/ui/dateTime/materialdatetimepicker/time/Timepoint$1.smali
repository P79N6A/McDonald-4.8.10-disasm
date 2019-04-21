.class final Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$1;
.super Ljava/lang/Object;
.source "Timepoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 170
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .prologue
    const-string v0, "createFromParcel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    const-string v0, "newArray"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$1;->newArray(I)[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method
