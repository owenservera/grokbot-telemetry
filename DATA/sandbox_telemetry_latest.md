# sandbox_telemetry_parse — 2026-11-09 17:14:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=759357 lines=1686
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1677 |
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
| `chromeBrowserPssKb` | {'int': 1677} |
| `chromeGpuPssKb` | {'int': 1677} |
| `chromeOtherPssKb` | {'int': 1677} |
| `chromeProcesses` | {'int': 1677} |
| `chromeProfiles` | {'int': 1677} |
| `chromeRendererMaxPssKb` | {'int': 1677} |
| `chromeRendererPssKb` | {'int': 1677} |
| `chromeRenderers` | {'int': 1677} |
| `chromeTabs` | {'int': 1677} |
| `chromeTabsProbedProfiles` | {'int': 1677} |
| `chromeUtilityPssKb` | {'int': 1677} |
| `desktopPssKb` | {'int': 1677} |
| `hostPssKb` | {'int': 1677} |
| `kind` | {'str': 1677} |
| `memAvailableKb` | {'int': 1677} |
| `memTotalKb` | {'int': 1677} |
| `otherPssKb` | {'int': 1677} |
| `processes` | {'int': 1677} |
| `pssFallbackProcesses` | {'int': 1677} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
