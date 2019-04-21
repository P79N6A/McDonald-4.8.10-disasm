.class public interface abstract Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;
.super Ljava/lang/Object;
.source "GeoLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/GeoLocationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeolocationListener"
.end annotation


# virtual methods
.method public abstract onGeolocation(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation
.end method
