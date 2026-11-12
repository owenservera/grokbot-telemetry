# sandbox_telemetry_parse — 2026-11-12 06:59:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2015063 lines=4461
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4452 |
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
| `chromeBrowserPssKb` | {'int': 4452} |
| `chromeGpuPssKb` | {'int': 4452} |
| `chromeOtherPssKb` | {'int': 4452} |
| `chromeProcesses` | {'int': 4452} |
| `chromeProfiles` | {'int': 4452} |
| `chromeRendererMaxPssKb` | {'int': 4452} |
| `chromeRendererPssKb` | {'int': 4452} |
| `chromeRenderers` | {'int': 4452} |
| `chromeTabs` | {'int': 4452} |
| `chromeTabsProbedProfiles` | {'int': 4452} |
| `chromeUtilityPssKb` | {'int': 4452} |
| `desktopPssKb` | {'int': 4452} |
| `hostPssKb` | {'int': 4452} |
| `kind` | {'str': 4452} |
| `memAvailableKb` | {'int': 4452} |
| `memTotalKb` | {'int': 4452} |
| `otherPssKb` | {'int': 4452} |
| `processes` | {'int': 4452} |
| `pssFallbackProcesses` | {'int': 4452} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
