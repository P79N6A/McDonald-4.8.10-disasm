.class public abstract Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeListener;
.super Ljava/lang/Object;
.source "SlideDateTimeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeCancel()V
    .locals 2

    .prologue
    const-string v0, "onDateTimeCancel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public abstract onDateTimeSet(Ljava/util/Date;)V
.end method
