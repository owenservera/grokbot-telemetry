# sandbox_telemetry_parse — 2026-11-26 05:10:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3088027 lines=6840
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6825 |
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
| `chromeBrowserPssKb` | {'int': 6825} |
| `chromeGpuPssKb` | {'int': 6825} |
| `chromeOtherPssKb` | {'int': 6825} |
| `chromeProcesses` | {'int': 6825} |
| `chromeProfiles` | {'int': 6825} |
| `chromeRendererMaxPssKb` | {'int': 6825} |
| `chromeRendererPssKb` | {'int': 6825} |
| `chromeRenderers` | {'int': 6825} |
| `chromeTabs` | {'int': 6825} |
| `chromeTabsProbedProfiles` | {'int': 6825} |
| `chromeUtilityPssKb` | {'int': 6825} |
| `desktopPssKb` | {'int': 6825} |
| `hostPssKb` | {'int': 6825} |
| `kind` | {'str': 6825} |
| `memAvailableKb` | {'int': 6825} |
| `memTotalKb` | {'int': 6825} |
| `otherPssKb` | {'int': 6825} |
| `processes` | {'int': 6825} |
| `pssFallbackProcesses` | {'int': 6825} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
