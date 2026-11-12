# sandbox_telemetry_parse — 2026-11-12 05:19:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1984321 lines=4393
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4384 |
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
| `chromeBrowserPssKb` | {'int': 4384} |
| `chromeGpuPssKb` | {'int': 4384} |
| `chromeOtherPssKb` | {'int': 4384} |
| `chromeProcesses` | {'int': 4384} |
| `chromeProfiles` | {'int': 4384} |
| `chromeRendererMaxPssKb` | {'int': 4384} |
| `chromeRendererPssKb` | {'int': 4384} |
| `chromeRenderers` | {'int': 4384} |
| `chromeTabs` | {'int': 4384} |
| `chromeTabsProbedProfiles` | {'int': 4384} |
| `chromeUtilityPssKb` | {'int': 4384} |
| `desktopPssKb` | {'int': 4384} |
| `hostPssKb` | {'int': 4384} |
| `kind` | {'str': 4384} |
| `memAvailableKb` | {'int': 4384} |
| `memTotalKb` | {'int': 4384} |
| `otherPssKb` | {'int': 4384} |
| `processes` | {'int': 4384} |
| `pssFallbackProcesses` | {'int': 4384} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
