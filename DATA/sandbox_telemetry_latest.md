# sandbox_telemetry_parse — 2026-11-17 10:16:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=348734 lines=777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 770 |
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
| `chromeBrowserPssKb` | {'int': 770} |
| `chromeGpuPssKb` | {'int': 770} |
| `chromeOtherPssKb` | {'int': 770} |
| `chromeProcesses` | {'int': 770} |
| `chromeProfiles` | {'int': 770} |
| `chromeRendererMaxPssKb` | {'int': 770} |
| `chromeRendererPssKb` | {'int': 770} |
| `chromeRenderers` | {'int': 770} |
| `chromeTabs` | {'int': 770} |
| `chromeTabsProbedProfiles` | {'int': 770} |
| `chromeUtilityPssKb` | {'int': 770} |
| `desktopPssKb` | {'int': 770} |
| `hostPssKb` | {'int': 770} |
| `kind` | {'str': 770} |
| `memAvailableKb` | {'int': 770} |
| `memTotalKb` | {'int': 770} |
| `otherPssKb` | {'int': 770} |
| `processes` | {'int': 770} |
| `pssFallbackProcesses` | {'int': 770} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
