# 🎮 Fortnite Region Ping Checker

A lightweight Windows batch script to quickly measure your ping to Fortnite servers across all major regions.
This tool is more accurate than the ping estimates given in game.

---

## 🚀 Features

* Checks multiple Fortnite regions:

  * NAE (North America East)
  * NAC (North America Central)
  * NAW (North America West)
  * Brazil
  * EU (Europe)
  * OCE (Oceania)
  * Asia
  * Middle East
* Uses PowerShell's `Test-Connection`
* Displays accurate average latency ping (ms)

---

## 🖥️ Requirements

* Windows OS
* PowerShell (pre-installed on modern Windows systems)

---

## 📂 Usage

1. Download or clone the repository:

   ```bash
   git clone https://github.com/MageTh3Mage/Real-Fortnite-Ping-Test.git
   ```

2. Navigate to the folder and run:

   ```bat
   RealPing.bat
   ```

3. View your ping results for each region.

---

## 📌 Example Output

```
Pinging NAE...
NAE: 24 ms

Pinging EU...
EU: 98 ms

Pinging ASIA...
ASIA: Request timed out
```

---

## ⚙️ How It Works

* Uses a batch script to loop through Fortnite server endpoints
* Calls PowerShell:

  * `Test-Connection` to send ICMP packets
  * Calculates average response time
* Outputs rounded latency in milliseconds

---

## 🛠️ Customization

You can easily:

* Add/remove regions by editing the `call :PingServer` lines
* Increase ping count (default is 3) in the PowerShell command
* Change output formatting

---

## ⚠️ Note
* Some networks may block ICMP, causing false timeouts.
