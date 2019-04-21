.class public Lcom/mcdonalds/app/ordering/alert/checkin/ItemsTimeRestrictionCheckinAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;
.source "ItemsTimeRestrictionCheckinAlertFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const v0, 0x7f040099

    return v0
.end method
