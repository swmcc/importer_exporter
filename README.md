# ShopKeep Test (Stock Items Importer / Exporter)

## Premise 

A take home code test.

## Overall Task

Create an importer/exporter which accepts stock item data in csv format and 
exports it as JSON. It needs to handle stock items and csv ­> JSON, but we 
expect to have other models and formats very soon,and so it should be easy to 
extend in this way.

Along with a number of standard parameters, stock items are assigned a 
'price_type' and may have 0 or more 'modifiers'. A price type of 'system' means
that the price is set by the store owner ahead of time, a price type of 'open' 
means that it is set at the time of the sale (for example, delivery is not a 
pre­defined price, it varies at the time of sale). Modifiers are simply 
alterations to the item being sold which include a price, like a small coffee 
being less expensive than a large coffee.

This should be coded as if it were being added to a large scale production 
system and should be representative of the type of work you would submit to such 
a system and be proud of. Feel free to include a writeup with your submission 
explaining the design, or outlining any assumptions you made while building it.

## Developer Notes

### Install

```
bundle
```

### Tests

```
make tests
```

### Usage

#### Import

```
Import.process filename
```

#### Export

```
Export.process items
```
