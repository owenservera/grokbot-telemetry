# sandbox_telemetry_parse — 2026-11-06 17:43:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=90725 lines=208
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 199 |
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
| `chromeBrowserPssKb` | {'int': 199} |
| `chromeGpuPssKb` | {'int': 199} |
| `chromeOtherPssKb` | {'int': 199} |
| `chromeProcesses` | {'int': 199} |
| `chromeProfiles` | {'int': 199} |
| `chromeRendererMaxPssKb` | {'int': 199} |
| `chromeRendererPssKb` | {'int': 199} |
| `chromeRenderers` | {'int': 199} |
| `chromeTabs` | {'int': 199} |
| `chromeTabsProbedProfiles` | {'int': 199} |
| `chromeUtilityPssKb` | {'int': 199} |
| `desktopPssKb` | {'int': 199} |
| `hostPssKb` | {'int': 199} |
| `kind` | {'str': 199} |
| `memAvailableKb` | {'int': 199} |
| `memTotalKb` | {'int': 199} |
| `otherPssKb` | {'int': 199} |
| `processes` | {'int': 199} |
| `pssFallbackProcesses` | {'int': 199} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
