# sandbox_telemetry_parse — 2026-11-25 17:35:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2855112 lines=6325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6310 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6310} |
| `chromeGpuPssKb` | {'int': 6310} |
| `chromeOtherPssKb` | {'int': 6310} |
| `chromeProcesses` | {'int': 6310} |
| `chromeProfiles` | {'int': 6310} |
| `chromeRendererMaxPssKb` | {'int': 6310} |
| `chromeRendererPssKb` | {'int': 6310} |
| `chromeRenderers` | {'int': 6310} |
| `chromeTabs` | {'int': 6310} |
| `chromeTabsProbedProfiles` | {'int': 6310} |
| `chromeUtilityPssKb` | {'int': 6310} |
| `desktopPssKb` | {'int': 6310} |
| `hostPssKb` | {'int': 6310} |
| `kind` | {'str': 6310} |
| `memAvailableKb` | {'int': 6310} |
| `memTotalKb` | {'int': 6310} |
| `otherPssKb` | {'int': 6310} |
| `processes` | {'int': 6310} |
| `pssFallbackProcesses` | {'int': 6310} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
