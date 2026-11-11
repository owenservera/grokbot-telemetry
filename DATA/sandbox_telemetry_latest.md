# sandbox_telemetry_parse — 2026-11-11 02:57:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1442672 lines=3196
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3187 |
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
| `chromeBrowserPssKb` | {'int': 3187} |
| `chromeGpuPssKb` | {'int': 3187} |
| `chromeOtherPssKb` | {'int': 3187} |
| `chromeProcesses` | {'int': 3187} |
| `chromeProfiles` | {'int': 3187} |
| `chromeRendererMaxPssKb` | {'int': 3187} |
| `chromeRendererPssKb` | {'int': 3187} |
| `chromeRenderers` | {'int': 3187} |
| `chromeTabs` | {'int': 3187} |
| `chromeTabsProbedProfiles` | {'int': 3187} |
| `chromeUtilityPssKb` | {'int': 3187} |
| `desktopPssKb` | {'int': 3187} |
| `hostPssKb` | {'int': 3187} |
| `kind` | {'str': 3187} |
| `memAvailableKb` | {'int': 3187} |
| `memTotalKb` | {'int': 3187} |
| `otherPssKb` | {'int': 3187} |
| `processes` | {'int': 3187} |
| `pssFallbackProcesses` | {'int': 3187} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
