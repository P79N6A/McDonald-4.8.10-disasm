.class public interface abstract Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;
.super Ljava/lang/Object;
.source "ConfigurationConnector.java"


# virtual methods
.method public abstract getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method
