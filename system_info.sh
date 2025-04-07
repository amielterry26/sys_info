#!/bin/bash

echo "==============================="
echo "🖥️  BASIC MAC SYSTEM INFO"
echo "==============================="

### 🔧 HARDWARE INFO
echo ""
echo "🔧 Hardware:"
mem_bytes=$(sysctl -n hw.memsize)
mem_gb=$((mem_bytes / 1024 / 1024 / 1024))
echo "  <0001f9e0> Memory (RAM):         $mem_gb GB"

cpu=$(sysctl -n machdep.cpu.brand_string)
echo "  ⚙<fe0f>  Processor (CPU):      $cpu"

model=$(sysctl -n hw.model)
echo "  💻 Mac Model Identifier: $model"

### 💽 STORAGE INFO
echo ""
echo "💽 Storage:"
total=$(diskutil info / | grep "Container Total Space" | awk '{print $4}')
free=$(diskutil info / | grep "Container Free Space" | awk '{print $4}')
used=$(echo "$total - $free" | bc)
echo "  📦 Disk Space:"
echo "    Total:     $total GB"
echo "    Used:      $used GB"
echo "    Available: $free GB"

### <0001f9fe> SOFTWARE INFO
echo ""
echo "<0001f9fe> Software:"
os_version=$(sw_vers -productVersion)
echo "  macOS Version: $os_version"

uptime_info=$(uptime | awk -F 'up ' '{print $2}' | cut -d ',' -f1-2)
echo "  ⏱️  Uptime:       $uptime_info"

### 🌐 NETWORK INFO
echo ""
echo "🌐 Network:"
user=$(whoami)
echo "  👤 Current User:    $user"

local_ip=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)
echo "  🌍 Local IP Address: ${local_ip:-Not connected}"

### 🔋 POWER INFO
echo ""
echo "🔋 Power:"
battery=$(pmset -g batt | grep -Eo '\d+%')
battery_status=$(pmset -g batt | grep "InternalBattery" | awk -F ';' '{print $2}' | xargs)
echo "  Battery: $battery ($battery_status)"
