.class public interface abstract Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;
.super Ljava/lang/Object;
.source "BuildProductMapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuildProductMapListener"
.end annotation


# virtual methods
.method public abstract onBuildProductMapComplete(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation
.end method
