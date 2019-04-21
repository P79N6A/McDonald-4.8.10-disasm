.class public interface abstract Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimepointLimiter;
.super Ljava/lang/Object;
.source "TimepointLimiter.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract isAmDisabled()Z
.end method

.method public abstract isOutOfRange(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;ILcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Z
    .param p1    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isPmDisabled()Z
.end method

.method public abstract roundToNearest(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
    .param p1    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
