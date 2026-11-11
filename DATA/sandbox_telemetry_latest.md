# sandbox_telemetry_parse — 2026-11-12 00:04:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1881114 lines=4165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4156 |
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
| `chromeBrowserPssKb` | {'int': 4156} |
| `chromeGpuPssKb` | {'int': 4156} |
| `chromeOtherPssKb` | {'int': 4156} |
| `chromeProcesses` | {'int': 4156} |
| `chromeProfiles` | {'int': 4156} |
| `chromeRendererMaxPssKb` | {'int': 4156} |
| `chromeRendererPssKb` | {'int': 4156} |
| `chromeRenderers` | {'int': 4156} |
| `chromeTabs` | {'int': 4156} |
| `chromeTabsProbedProfiles` | {'int': 4156} |
| `chromeUtilityPssKb` | {'int': 4156} |
| `desktopPssKb` | {'int': 4156} |
| `hostPssKb` | {'int': 4156} |
| `kind` | {'str': 4156} |
| `memAvailableKb` | {'int': 4156} |
| `memTotalKb` | {'int': 4156} |
| `otherPssKb` | {'int': 4156} |
| `processes` | {'int': 4156} |
| `pssFallbackProcesses` | {'int': 4156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
