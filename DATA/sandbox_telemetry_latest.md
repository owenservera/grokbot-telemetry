# sandbox_telemetry_parse — 2026-11-20 09:49:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1663281 lines=3687
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3676 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3676} |
| `chromeGpuPssKb` | {'int': 3676} |
| `chromeOtherPssKb` | {'int': 3676} |
| `chromeProcesses` | {'int': 3676} |
| `chromeProfiles` | {'int': 3676} |
| `chromeRendererMaxPssKb` | {'int': 3676} |
| `chromeRendererPssKb` | {'int': 3676} |
| `chromeRenderers` | {'int': 3676} |
| `chromeTabs` | {'int': 3676} |
| `chromeTabsProbedProfiles` | {'int': 3676} |
| `chromeUtilityPssKb` | {'int': 3676} |
| `desktopPssKb` | {'int': 3676} |
| `hostPssKb` | {'int': 3676} |
| `kind` | {'str': 3676} |
| `memAvailableKb` | {'int': 3676} |
| `memTotalKb` | {'int': 3676} |
| `otherPssKb` | {'int': 3676} |
| `processes` | {'int': 3676} |
| `pssFallbackProcesses` | {'int': 3676} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
