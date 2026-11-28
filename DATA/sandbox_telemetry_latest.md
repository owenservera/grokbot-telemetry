# sandbox_telemetry_parse — 2026-11-28 22:39:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1090191 lines=2416
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2408 |
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
| `chromeBrowserPssKb` | {'int': 2408} |
| `chromeGpuPssKb` | {'int': 2408} |
| `chromeOtherPssKb` | {'int': 2408} |
| `chromeProcesses` | {'int': 2408} |
| `chromeProfiles` | {'int': 2408} |
| `chromeRendererMaxPssKb` | {'int': 2408} |
| `chromeRendererPssKb` | {'int': 2408} |
| `chromeRenderers` | {'int': 2408} |
| `chromeTabs` | {'int': 2408} |
| `chromeTabsProbedProfiles` | {'int': 2408} |
| `chromeUtilityPssKb` | {'int': 2408} |
| `desktopPssKb` | {'int': 2408} |
| `hostPssKb` | {'int': 2408} |
| `kind` | {'str': 2408} |
| `memAvailableKb` | {'int': 2408} |
| `memTotalKb` | {'int': 2408} |
| `otherPssKb` | {'int': 2408} |
| `processes` | {'int': 2408} |
| `pssFallbackProcesses` | {'int': 2408} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
