# sandbox_telemetry_parse — 2026-11-06 17:06:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=74417 lines=172
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 163 |
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
| `chromeBrowserPssKb` | {'int': 163} |
| `chromeGpuPssKb` | {'int': 163} |
| `chromeOtherPssKb` | {'int': 163} |
| `chromeProcesses` | {'int': 163} |
| `chromeProfiles` | {'int': 163} |
| `chromeRendererMaxPssKb` | {'int': 163} |
| `chromeRendererPssKb` | {'int': 163} |
| `chromeRenderers` | {'int': 163} |
| `chromeTabs` | {'int': 163} |
| `chromeTabsProbedProfiles` | {'int': 163} |
| `chromeUtilityPssKb` | {'int': 163} |
| `desktopPssKb` | {'int': 163} |
| `hostPssKb` | {'int': 163} |
| `kind` | {'str': 163} |
| `memAvailableKb` | {'int': 163} |
| `memTotalKb` | {'int': 163} |
| `otherPssKb` | {'int': 163} |
| `processes` | {'int': 163} |
| `pssFallbackProcesses` | {'int': 163} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
