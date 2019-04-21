.class public final Lcom/facebook/stetho/okhttp/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/okhttp/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static abc_config_activityDefaultDur:I

.field public static abc_config_activityShortDur:I

.field public static abc_max_action_buttons:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1378
    const v0, 0x7f090001

    sput v0, Lcom/facebook/stetho/okhttp/R$integer;->abc_config_activityDefaultDur:I

    .line 1379
    const v0, 0x7f090002

    sput v0, Lcom/facebook/stetho/okhttp/R$integer;->abc_config_activityShortDur:I

    .line 1380
    const/high16 v0, 0x7f090000

    sput v0, Lcom/facebook/stetho/okhttp/R$integer;->abc_max_action_buttons:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
