.class public interface abstract Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;
.super Ljava/lang/Object;
.source "MergeCatalogBackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MergeCatalogBackgroundTaskListener"
.end annotation


# virtual methods
.method public abstract onPerformBackgroundTask(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;Z)V
.end method

.method public abstract onPerformPostExecute(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
.end method
