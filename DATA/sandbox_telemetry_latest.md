# sandbox_telemetry_parse — 2026-11-25 02:25:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2552574 lines=5656
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5641 |
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
| `chromeBrowserPssKb` | {'int': 5641} |
| `chromeGpuPssKb` | {'int': 5641} |
| `chromeOtherPssKb` | {'int': 5641} |
| `chromeProcesses` | {'int': 5641} |
| `chromeProfiles` | {'int': 5641} |
| `chromeRendererMaxPssKb` | {'int': 5641} |
| `chromeRendererPssKb` | {'int': 5641} |
| `chromeRenderers` | {'int': 5641} |
| `chromeTabs` | {'int': 5641} |
| `chromeTabsProbedProfiles` | {'int': 5641} |
| `chromeUtilityPssKb` | {'int': 5641} |
| `desktopPssKb` | {'int': 5641} |
| `hostPssKb` | {'int': 5641} |
| `kind` | {'str': 5641} |
| `memAvailableKb` | {'int': 5641} |
| `memTotalKb` | {'int': 5641} |
| `otherPssKb` | {'int': 5641} |
| `processes` | {'int': 5641} |
| `pssFallbackProcesses` | {'int': 5641} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
