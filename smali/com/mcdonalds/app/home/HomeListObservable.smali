.class public Lcom/mcdonalds/app/home/HomeListObservable;
.super Ljava/util/Observable;
.source "HomeListObservable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected setChanged()V
    .locals 2

    .prologue
    const-string v0, "setChanged"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 20
    return-void
.end method
