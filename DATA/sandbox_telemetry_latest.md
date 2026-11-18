# sandbox_telemetry_parse — 2026-11-18 18:23:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=925920 lines=2055
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2046 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2046} |
| `chromeGpuPssKb` | {'int': 2046} |
| `chromeOtherPssKb` | {'int': 2046} |
| `chromeProcesses` | {'int': 2046} |
| `chromeProfiles` | {'int': 2046} |
| `chromeRendererMaxPssKb` | {'int': 2046} |
| `chromeRendererPssKb` | {'int': 2046} |
| `chromeRenderers` | {'int': 2046} |
| `chromeTabs` | {'int': 2046} |
| `chromeTabsProbedProfiles` | {'int': 2046} |
| `chromeUtilityPssKb` | {'int': 2046} |
| `desktopPssKb` | {'int': 2046} |
| `hostPssKb` | {'int': 2046} |
| `kind` | {'str': 2046} |
| `memAvailableKb` | {'int': 2046} |
| `memTotalKb` | {'int': 2046} |
| `otherPssKb` | {'int': 2046} |
| `processes` | {'int': 2046} |
| `pssFallbackProcesses` | {'int': 2046} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
