# sandbox_telemetry_parse — 2026-11-11 18:35:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1763436 lines=3905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3896 |
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
| `chromeBrowserPssKb` | {'int': 3896} |
| `chromeGpuPssKb` | {'int': 3896} |
| `chromeOtherPssKb` | {'int': 3896} |
| `chromeProcesses` | {'int': 3896} |
| `chromeProfiles` | {'int': 3896} |
| `chromeRendererMaxPssKb` | {'int': 3896} |
| `chromeRendererPssKb` | {'int': 3896} |
| `chromeRenderers` | {'int': 3896} |
| `chromeTabs` | {'int': 3896} |
| `chromeTabsProbedProfiles` | {'int': 3896} |
| `chromeUtilityPssKb` | {'int': 3896} |
| `desktopPssKb` | {'int': 3896} |
| `hostPssKb` | {'int': 3896} |
| `kind` | {'str': 3896} |
| `memAvailableKb` | {'int': 3896} |
| `memTotalKb` | {'int': 3896} |
| `otherPssKb` | {'int': 3896} |
| `processes` | {'int': 3896} |
| `pssFallbackProcesses` | {'int': 3896} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
