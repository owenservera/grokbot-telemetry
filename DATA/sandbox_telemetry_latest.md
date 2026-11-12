# sandbox_telemetry_parse — 2026-11-12 03:28:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1949491 lines=4316
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4307 |
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
| `chromeBrowserPssKb` | {'int': 4307} |
| `chromeGpuPssKb` | {'int': 4307} |
| `chromeOtherPssKb` | {'int': 4307} |
| `chromeProcesses` | {'int': 4307} |
| `chromeProfiles` | {'int': 4307} |
| `chromeRendererMaxPssKb` | {'int': 4307} |
| `chromeRendererPssKb` | {'int': 4307} |
| `chromeRenderers` | {'int': 4307} |
| `chromeTabs` | {'int': 4307} |
| `chromeTabsProbedProfiles` | {'int': 4307} |
| `chromeUtilityPssKb` | {'int': 4307} |
| `desktopPssKb` | {'int': 4307} |
| `hostPssKb` | {'int': 4307} |
| `kind` | {'str': 4307} |
| `memAvailableKb` | {'int': 4307} |
| `memTotalKb` | {'int': 4307} |
| `otherPssKb` | {'int': 4307} |
| `processes` | {'int': 4307} |
| `pssFallbackProcesses` | {'int': 4307} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
