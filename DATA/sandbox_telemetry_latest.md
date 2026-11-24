# sandbox_telemetry_parse — 2026-11-24 12:50:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2290574 lines=5077
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5062 |
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
| `chromeBrowserPssKb` | {'int': 5062} |
| `chromeGpuPssKb` | {'int': 5062} |
| `chromeOtherPssKb` | {'int': 5062} |
| `chromeProcesses` | {'int': 5062} |
| `chromeProfiles` | {'int': 5062} |
| `chromeRendererMaxPssKb` | {'int': 5062} |
| `chromeRendererPssKb` | {'int': 5062} |
| `chromeRenderers` | {'int': 5062} |
| `chromeTabs` | {'int': 5062} |
| `chromeTabsProbedProfiles` | {'int': 5062} |
| `chromeUtilityPssKb` | {'int': 5062} |
| `desktopPssKb` | {'int': 5062} |
| `hostPssKb` | {'int': 5062} |
| `kind` | {'str': 5062} |
| `memAvailableKb` | {'int': 5062} |
| `memTotalKb` | {'int': 5062} |
| `otherPssKb` | {'int': 5062} |
| `processes` | {'int': 5062} |
| `pssFallbackProcesses` | {'int': 5062} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
