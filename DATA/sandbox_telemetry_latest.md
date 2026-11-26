# sandbox_telemetry_parse — 2026-11-26 14:07:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3283033 lines=7271
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7256 |
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
| `chromeBrowserPssKb` | {'int': 7256} |
| `chromeGpuPssKb` | {'int': 7256} |
| `chromeOtherPssKb` | {'int': 7256} |
| `chromeProcesses` | {'int': 7256} |
| `chromeProfiles` | {'int': 7256} |
| `chromeRendererMaxPssKb` | {'int': 7256} |
| `chromeRendererPssKb` | {'int': 7256} |
| `chromeRenderers` | {'int': 7256} |
| `chromeTabs` | {'int': 7256} |
| `chromeTabsProbedProfiles` | {'int': 7256} |
| `chromeUtilityPssKb` | {'int': 7256} |
| `desktopPssKb` | {'int': 7256} |
| `hostPssKb` | {'int': 7256} |
| `kind` | {'str': 7256} |
| `memAvailableKb` | {'int': 7256} |
| `memTotalKb` | {'int': 7256} |
| `otherPssKb` | {'int': 7256} |
| `processes` | {'int': 7256} |
| `pssFallbackProcesses` | {'int': 7256} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
