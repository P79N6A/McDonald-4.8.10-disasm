.class public Lcom/mcdonalds/sdk/SDKApplication;
.super Landroid/app/Application;
.source "SDKApplication.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mInstance:Lcom/mcdonalds/sdk/SDKApplication;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/mcdonalds/sdk/SDKApplication;->mInstance:Lcom/mcdonalds/sdk/SDKApplication;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/mcdonalds/sdk/SDKApplication;->mInstance:Lcom/mcdonalds/sdk/SDKApplication;

    return-object v0
.end method
