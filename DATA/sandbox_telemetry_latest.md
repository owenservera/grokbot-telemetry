# sandbox_telemetry_parse — 2026-11-18 07:31:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=730814 lines=1622
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1615 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1615} |
| `chromeGpuPssKb` | {'int': 1615} |
| `chromeOtherPssKb` | {'int': 1615} |
| `chromeProcesses` | {'int': 1615} |
| `chromeProfiles` | {'int': 1615} |
| `chromeRendererMaxPssKb` | {'int': 1615} |
| `chromeRendererPssKb` | {'int': 1615} |
| `chromeRenderers` | {'int': 1615} |
| `chromeTabs` | {'int': 1615} |
| `chromeTabsProbedProfiles` | {'int': 1615} |
| `chromeUtilityPssKb` | {'int': 1615} |
| `desktopPssKb` | {'int': 1615} |
| `hostPssKb` | {'int': 1615} |
| `kind` | {'str': 1615} |
| `memAvailableKb` | {'int': 1615} |
| `memTotalKb` | {'int': 1615} |
| `otherPssKb` | {'int': 1615} |
| `processes` | {'int': 1615} |
| `pssFallbackProcesses` | {'int': 1615} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
