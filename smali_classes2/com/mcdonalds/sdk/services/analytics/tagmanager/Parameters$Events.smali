.class public final Lcom/mcdonalds/sdk/services/analytics/tagmanager/Parameters$Events;
.super Ljava/lang/Object;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/analytics/tagmanager/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "MCDTagEventGAIAction"

.field public static final OPEN_SCREEN:Ljava/lang/String; = "MCDTagEventGAIOpenScreen"

.field public static final TRANSACTION:Ljava/lang/String; = "MCDTagEventGAITransaction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
