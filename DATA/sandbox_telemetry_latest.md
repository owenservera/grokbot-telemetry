# sandbox_telemetry_parse — 2026-11-28 11:38:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=869277 lines=1928
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1920 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1920} |
| `chromeGpuPssKb` | {'int': 1920} |
| `chromeOtherPssKb` | {'int': 1920} |
| `chromeProcesses` | {'int': 1920} |
| `chromeProfiles` | {'int': 1920} |
| `chromeRendererMaxPssKb` | {'int': 1920} |
| `chromeRendererPssKb` | {'int': 1920} |
| `chromeRenderers` | {'int': 1920} |
| `chromeTabs` | {'int': 1920} |
| `chromeTabsProbedProfiles` | {'int': 1920} |
| `chromeUtilityPssKb` | {'int': 1920} |
| `desktopPssKb` | {'int': 1920} |
| `hostPssKb` | {'int': 1920} |
| `kind` | {'str': 1920} |
| `memAvailableKb` | {'int': 1920} |
| `memTotalKb` | {'int': 1920} |
| `otherPssKb` | {'int': 1920} |
| `processes` | {'int': 1920} |
| `pssFallbackProcesses` | {'int': 1920} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
