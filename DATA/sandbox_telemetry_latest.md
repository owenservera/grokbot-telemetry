# sandbox_telemetry_parse — 2026-11-09 20:21:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=826364 lines=1834
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1825 |
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
| `chromeBrowserPssKb` | {'int': 1825} |
| `chromeGpuPssKb` | {'int': 1825} |
| `chromeOtherPssKb` | {'int': 1825} |
| `chromeProcesses` | {'int': 1825} |
| `chromeProfiles` | {'int': 1825} |
| `chromeRendererMaxPssKb` | {'int': 1825} |
| `chromeRendererPssKb` | {'int': 1825} |
| `chromeRenderers` | {'int': 1825} |
| `chromeTabs` | {'int': 1825} |
| `chromeTabsProbedProfiles` | {'int': 1825} |
| `chromeUtilityPssKb` | {'int': 1825} |
| `desktopPssKb` | {'int': 1825} |
| `hostPssKb` | {'int': 1825} |
| `kind` | {'str': 1825} |
| `memAvailableKb` | {'int': 1825} |
| `memTotalKb` | {'int': 1825} |
| `otherPssKb` | {'int': 1825} |
| `processes` | {'int': 1825} |
| `pssFallbackProcesses` | {'int': 1825} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
