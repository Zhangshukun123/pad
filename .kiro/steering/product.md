# Product

This is a PDA (handheld device) Android application for train/railway food and goods sales staff. It runs on dedicated PDA hardware used by train crew members.

## Core Functionality

- **Login**: Employee authentication with cross-road (train route) selection
- **Sell**: Goods selling with barcode scan, quantity management, cash and online payment
- **Online Refund**: Process refunds for online orders (JD and simple modes)
- **Sale Analysis**: View sales summary tables
- **Query Sell Detail**: Browse transaction history
- **Download**: Sync common data to device
- **Settings**: Configure environment URL, machine SN, brightness, audio, WiFi, scanner

## Current State

The app is a **prototype/demo** — all data is fake (hardcoded). Classes prefixed with `Fake` (e.g., `FakeLoginDataRepository`, `FakeSellGoodsRepository`) simulate backend responses. Real API integration is not yet implemented.

## Target Hardware

Dedicated Android PDA devices (min SDK 24, target SDK 36). Landscape orientation is used for some screens (QuerySellDetail, SaleAnalysis).
