# sandbox_telemetry_parse — 2026-11-19 23:23:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1485166 lines=3293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3282 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3282} |
| `chromeGpuPssKb` | {'int': 3282} |
| `chromeOtherPssKb` | {'int': 3282} |
| `chromeProcesses` | {'int': 3282} |
| `chromeProfiles` | {'int': 3282} |
| `chromeRendererMaxPssKb` | {'int': 3282} |
| `chromeRendererPssKb` | {'int': 3282} |
| `chromeRenderers` | {'int': 3282} |
| `chromeTabs` | {'int': 3282} |
| `chromeTabsProbedProfiles` | {'int': 3282} |
| `chromeUtilityPssKb` | {'int': 3282} |
| `desktopPssKb` | {'int': 3282} |
| `hostPssKb` | {'int': 3282} |
| `kind` | {'str': 3282} |
| `memAvailableKb` | {'int': 3282} |
| `memTotalKb` | {'int': 3282} |
| `otherPssKb` | {'int': 3282} |
| `processes` | {'int': 3282} |
| `pssFallbackProcesses` | {'int': 3282} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
