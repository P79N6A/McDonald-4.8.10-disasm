.class public Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;
.super Ljava/lang/Object;
.source "BuildProductMapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildProductMapParams"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public currentMenuPartId:I

.field public enableMultipleMenuTypes:Z

.field public pod:Ljava/lang/String;

.field public searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    const-string v0, "isValid"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
