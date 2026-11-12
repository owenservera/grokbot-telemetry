# sandbox_telemetry_parse — 2026-11-12 22:50:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2360042 lines=5223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5214 |
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
| `chromeBrowserPssKb` | {'int': 5214} |
| `chromeGpuPssKb` | {'int': 5214} |
| `chromeOtherPssKb` | {'int': 5214} |
| `chromeProcesses` | {'int': 5214} |
| `chromeProfiles` | {'int': 5214} |
| `chromeRendererMaxPssKb` | {'int': 5214} |
| `chromeRendererPssKb` | {'int': 5214} |
| `chromeRenderers` | {'int': 5214} |
| `chromeTabs` | {'int': 5214} |
| `chromeTabsProbedProfiles` | {'int': 5214} |
| `chromeUtilityPssKb` | {'int': 5214} |
| `desktopPssKb` | {'int': 5214} |
| `hostPssKb` | {'int': 5214} |
| `kind` | {'str': 5214} |
| `memAvailableKb` | {'int': 5214} |
| `memTotalKb` | {'int': 5214} |
| `otherPssKb` | {'int': 5214} |
| `processes` | {'int': 5214} |
| `pssFallbackProcesses` | {'int': 5214} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
