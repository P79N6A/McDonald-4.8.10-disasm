.class public Lcom/mcdonalds/sdk/services/RonaldService$ServiceBinder;
.super Landroid/os/Binder;
.source "RonaldService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/RonaldService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceBinder"
.end annotation


# instance fields
.field private final mService:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldService$ServiceBinder;->mService:Landroid/app/Service;

    .line 324
    return-void
.end method


# virtual methods
.method public getService()Landroid/app/Service;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService$ServiceBinder;->mService:Landroid/app/Service;

    return-object v0
.end method
