.class public Lcom/mcdonalds/sdk/services/analytics/conversionmaster/LoginAction;
.super Ljava/lang/Object;
.source "LoginAction.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;


# instance fields
.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/LoginAction;->mUserId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/LoginAction;->mUserId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/admaster/square/api/ConvMobiSDK;->doLoginEvent(Ljava/lang/String;J)V

    .line 20
    return-void
.end method
