.class public Lcom/mcdonalds/sdk/services/analytics/conversionmaster/RegisterDoneAction;
.super Ljava/lang/Object;
.source "RegisterDoneAction.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 13
    const-string v0, "no valid username at this point"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/admaster/square/api/ConvMobiSDK;->doRegisterEvent(Ljava/lang/String;J)V

    .line 14
    return-void
.end method
